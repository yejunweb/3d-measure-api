const dayjs = require('dayjs')
const { Op } = require('sequelize')
const express = require('express')
const router = express.Router()
const User = require('../models/userModel')
const Patient = require('../models/patientModel')
const Treatment = require('../models/treatmentModel')
const Department = require('../models/departmentModel')
const { getChildIds } = require('./department')

/**
 * 患者管理-患者列表
 * @param current  [Number] 当前页数
 * @param pageSize [Number] 分页大小
 * @param name     [Number] 姓名
 * @param phone    [String] 手机号
 */
router.post('/page', async (req, res) => {
    const { current, pageSize, name, phone } = req.body
    let roleId, departmentId, departmentIds, departmentMap
    User.findOne({
        where: {
            id: req.userInfo.uid,
        },
    })
        .then((data) => {
            roleId = data.dataValues?.roleId
            departmentId = data.dataValues?.departmentId
            return Department.findAll()
        })
        .then((rows) => {
            // 获取当前机构及所有子级机构 id 集合
            departmentIds = getChildIds(rows, departmentId)
            // 获取所有机构 id 对应名称、等级
            departmentMap = rows.reduce((prev, cur) => {
                prev[cur.id] = {
                    departmentName: cur.name,
                    departmentLevel: cur.departmentLevel,
                }
                return prev
            }, {})
            return Patient.findAndCountAll({
                offset: (current - 1) * pageSize,
                limit: pageSize,
                order: [['createTime', 'DESC']], // 依据创建时间降序排列
                attributes: { exclude: ['password'] },
                where: {
                    ...(name && {
                        name: {
                            [Op.like]: name,
                        },
                    }),
                    ...(phone && {
                        phone: {
                            [Op.like]: phone,
                        },
                    }),
                    /**
                     * 管理员可以查看所有患者列表（roleId = 1 时）
                     * 其他情况下，父级机构可以查看当前自身机构患者以及所有下属子级机构患者
                     */
                    ...(roleId !== 1 && {
                        departmentId: {
                            [Op.in]: departmentIds,
                        },
                    }),
                },
            })
        })
        .then(({ count, rows }) => {
            res.sendResult(200, {
                records: rows
                    .map((v) => v.dataValues)
                    .map((v) => ({
                        ...v,
                        ...departmentMap?.[v?.departmentId?.toString()],
                        createTime: dayjs(v.createTime).format(
                            'YYYY-MM-DD HH:mm:ss'
                        ),
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
 * 患者管理-患者详情
 * @param id [Number] 患者ID
 */
router.post('/get/:id', (req, res) => {
    Patient.findOne({
        where: {
            id: req.params.id,
        },
    })
        .then((data) => {
            const { dataValues } = data
            res.sendResult(200, {
                ...dataValues,
                birthday: dayjs(dataValues.birthday).format('YYYY-MM-DD HH:mm:ss'),
                createTime: dayjs(dataValues.createTime).format(
                    'YYYY-MM-DD HH:mm:ss'
                ),
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
 * 患者管理-新增、编辑患者
 * @param id       [Number] 患者ID
 * @param name     [String] 姓名
 * @param headImg  [String] 头像
 * @param sex      [String] 性别
 * @param birthday [String] 生日
 * @param phone    [String] 手机号
 * @param address  [Number] 地址
 * @param picture  [Number] 图片
 * @param model    [Number] 3d模型
 * @param record   [Number] 备注
 */
router.post('/set', async (req, res) => {
    let departmentId
    // 重复用户检查
    const {
        id,
        name,
        headImg,
        sex,
        birthday,
        phone,
        address,
        picture,
        model,
        record,
    } = req.body
    if (!id) {
        // 新增患者
        User.findOne({
            attributes: ['departmentId'],
            where: {
                id: req.userInfo.uid,
            },
        })
            .then((data) => {
                // 查找当前用户单位，代表当前新增患者所属机构，依据登录用户所属机构筛选患者列表
                departmentId = data.dataValues.departmentId
                return Patient.create({
                    name,
                    headImg,
                    sex,
                    birthday,
                    phone,
                    address,
                    picture,
                    model,
                    record,
                    createTime: new Date(),
                    departmentId,
                })
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
        Patient.update(
            {
                name,
                headImg,
                sex,
                birthday,
                phone,
                address,
                picture,
                model,
                record,
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
 * 删除患者
 * @param id [Number] 患者ID
 */
router.post('/del/:id', (req, res) => {
    Patient.destroy({
        where: {
            id: req.params.id,
        },
    })
        .then(() => {
            // 删除当前患者对应所有测量记录
            return Treatment.destroy({
                where: {
                    patientId: req.params.id,
                },
            })
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
