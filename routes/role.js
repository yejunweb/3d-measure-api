const express = require('express')
const router = express.Router()
const Role = require('../models/roleModel')

/**
 * 角色管理-角色列表
 * @param current  [Number] 当前页数
 * @param pageSize [Number] 分页大小
 */
router.post('/list', (req, res) => {
    Role.findAndCountAll({
        offset: (req.body.current - 1) * req.body.pageSize,
        limit: req.body.pageSize,
    })
        .then(async ({ count, rows }) => {
            res.sendResult(200, {
                records: rows,
                current: req.body.current,
                size: req.body.pageSize,
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
 * 角色管理-角色详情
 * @param id [Number] 角色ID
 */
router.post('/get/:id', (req, res) => {
    Role.findOne({
        where: {
            id: req.params.id,
        },
    })
        .then((data) => {
            res.sendResult(200, data)
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
 * 角色管理-新增、编辑角色
 * @param id              [Number] 角色ID
 * @param roleName        [String] 角色名
 * @param departmentLevel [Number] 所属级别
 */
router.post('/set', async (req, res) => {
    const { id, roleName, departmentLevel } = req.body
    if (!id) {
        // 角色名重复检查
        const result = await Role.findAll({
            where: {
                roleName,
            },
        })
        if (result.length) return res.sendResult(502, null, '角色名重复')
        // 新增角色
        Role.create({
            roleName,
            departmentLevel,
            roleType: 'normal', // 除管理员外，所有手动创建角色均为普通用户
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
        // 角色名重复检查
        const result = await Role.findAll({
            where: {
                id: {
                    [Op.ne]: id,
                },
                roleName,
            },
        })
        if (result.length) return res.sendResult(502, null, '角色名重复')
        // 编辑角色
        Role.update(
            {
                roleName,
                departmentLevel,
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
 * 删除角色
 * @param id [Number] 角色ID
 */
router.post('/del/:id', (req, res) => {
    Role.destroy({
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

module.exports = router
