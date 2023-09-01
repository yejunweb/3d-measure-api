const { Op } = require('sequelize')
const express = require('express')
const router = express.Router()
const md5 = require('../utils/md5')
const User = require('../models/userModel')
const Department = require('../models/departmentModel')
const Action = require('../models/actionModel')
const Role = require('../models/roleModel')
const RoleActionRel = require('../models/roleActionRelModel')

/**
 * 获取权限集合
 * @param role_id [Number] 角色
 */
const getActions = (role_id) => {
    let actionIds
    return new Promise((reslove, reject) => {
        RoleActionRel.findAll({
            where: {
                roleId: role_id,
            },
        })
            .then((rows) => {
                actionIds = rows.map((v) => v.actionId)
                return Action.findAll({
                    ...(role_id !== 1 && {
                        // 管理员账号直接返回所有权限 || roleType 判定
                        where: {
                            id: {
                                [Op.in]: actionIds,
                            },
                        },
                    }),
                })
            })
            .then((rows) => {
                reslove(rows.map((v) => v.actionName))
            })
            .catch((error) => {
                reject(error)
            })
    })
}

/**
 * 账号管理-用户列表
 * @param current         [Number] 当前页数
 * @param pageSize        [Number] 分页大小
 * @param departmentLevel [Number] 单位级别
 * @param realName        [String] 真实姓名
 */
router.post('/page', (req, res) => {
    let departmentMap
    let departmentIds
    let roleMap
    const { current, pageSize, departmentLevel, realName } = req.body
    Department.findAll()
        .then((rows) => {
            // 获取所有机构 id 对应名称、等级
            departmentMap = rows.reduce((prev, cur) => {
                prev[cur.id] = {
                    departmentName: cur.name,
                    departmentLevel: cur.departmentLevel,
                }
                return prev
            }, {})
            // 获取等级关联所有机构 id 查询机构分级
            if (departmentLevel) {
                departmentIds = rows
                    .filter((v) => v.departmentLevel === departmentLevel)
                    .map((v) => v.id)
            }
            return Role.findAll()
        })
        .then((rows) => {
            // 获取所有权限 id 对应名称
            roleMap = rows.reduce((prev, cur) => {
                prev[cur.id] = cur.roleName
                return prev
            }, {})
            return User.findAndCountAll({
                offset: (current - 1) * pageSize,
                limit: pageSize,
                attributes: { exclude: ['password'] },
                where: {
                    ...(departmentIds?.length && {
                        departmentId: {
                            [Op.in]: departmentIds,
                        },
                    }),
                    ...(realName && {
                        realName: {
                            [Op.like]: realName,
                        },
                    }),
                },
            })
        })
        .then(({ count, rows }) => {
            res.sendResult(200, {
                records: rows.map((v) => ({
                    ...v.dataValues,
                    ...departmentMap[v.dataValues?.departmentId?.toString()],
                    roleName: roleMap?.[v.roleId]
                })),
                current: current,
                size: pageSize,
                total: count,
            })
        })
        .catch((error) => {
            res.sendResult(
                502,
                null,
                (error.parent && error.parent.sqlMessage) || error
            )
        })
})

/**
 * 账号管理-新增、编辑用户
 * @param id           [Number] 用户ID
 * @param username     [String] 用户名
 * @param password     [String] 用户密码
 * @param realName     [String] 真实姓名
 * @param birthday     [String] 生日
 * @param idCard       [String] 证件号码
 * @param roleId       [Number] 角色
 * @param departmentId [Number] 部门
 * @param userStatus   [Number] 用户状态
 */
router.post('/set', async (req, res) => {
    // 重复用户检查
    const {
        id,
        username,
        password,
        realName,
        birthday,
        idCard,
        roleId,
        departmentId,
        userStatus,
    } = req.body
    if (!id) {
        // 用户名重复检查
        const result = await User.findAll({
            where: {
                username: username,
            },
        })
        if (result.length) return res.sendResult(502, null, '用户名重复')
        // 新增用户
        User.create({
            username,
            password: md5(password),
            realName,
            birthday,
            idCard,
            roleId,
            departmentId,
            userStatus,
            createTime: new Date(),
        })
            .then(() => {
                res.sendResult(200, null, '新增成功')
            })
            .catch((error) => {
                res.sendResult(
                    502,
                    null,
                    (error.parent && error.parent.sqlMessage) || error
                )
            })
    } else {
        // 编辑用户
        User.update(
            {
                username,
                ...(password && {
                    password: md5(password),
                }),
                realName,
                birthday,
                idCard,
                roleId,
                departmentId,
                userStatus,
            },
            {
                where: {
                    id,
                },
            }
        )
            .then(() => {
                res.sendResult(200, null, '修改成功')
            })
            .catch((error) => {
                res.sendResult(
                    502,
                    null,
                    (error.parent && error.parent.sqlMessage) || error
                )
            })
    }
})

/**
 * 删除用户
 * @param id [Number] 用户ID
 */
router.post('/del/:id', (req, res) => {
    User.destroy({
        where: {
            id: req.params.id,
        },
    })
        .then(() => {
            res.sendResult(200, null, '删除成功')
        })
        .catch((error) => {
            res.sendResult(
                502,
                null,
                (error.parent && error.parent.sqlMessage) || error
            )
        })
})

/**
 * 获取用户信息
 */
router.post('/info', (req, res) => {
    let userResult
    let departmentResult
    User.findOne({
        attributes: { exclude: ['password'] },
        where: {
            id: req.userInfo.uid,
        },
    })
        .then(({ dataValues }) => {
            const { id, ...data } = dataValues
            userResult = { ...data, userId: id }
            // 查找用户所属单位信息
            return Department.findOne({
                attributes: [['name', 'departmentName'], 'departmentLevel'],
                where: {
                    id: userResult.departmentId,
                },
            })
        })
        .then(({ dataValues }) => {
            departmentResult = dataValues
            // 查找用户角色对应权限
            return getActions(userResult.roleId)
        })
        .then((actions) => {
            res.sendResult(200, {
                ...userResult,
                ...departmentResult,
                actions,
            })
        })
        .catch((error) => {
            res.sendResult(
                502,
                null,
                (error.parent && error.parent.sqlMessage) || error
            )
        })
})

module.exports = router
module.exports.getActions = getActions
