const dayjs = require('dayjs')
const express = require('express')
const router = express.Router()
const Patient = require('../models/patientModel')
const Treatment = require('../models/treatmentModel')
const MeasureItem = require('../models/measureItemModel')
const Measurement = require('../models/measurementModel')

/**
 * 测量记录管理-记录列表
 */
router.post('/list', (req, res) => {
    let name // 患者姓名
    const { patientId } = req.body
    Patient.findOne({
        where: {
            id: patientId,
        },
    })
        .then((data) => {
            name = data.dataValues.name
            return Treatment.findAll({
                order: [['createTime', 'DESC']], // 依据创建时间降序排列
                attributes: ['id', 'createTime'],
                where: {
                    patientId,
                },
            })
        })
        .then((rows) => {
            res.sendResult(
                200,
                rows
                    .map((v) => v.dataValues)
                    .map((v) => ({
                        ...v,
                        name,
                        treatTime: dayjs(v.createTime).format(
                            'YYYY-MM-DD HH:mm:ss'
                        ),
                        createTime: dayjs(v.createTime).format(
                            'YYYY-MM-DD HH:mm:ss'
                        ),
                    }))
            )
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
 * 测量记录管理-记录详情
 * @param id [Number] 角色ID
 */
router.post('/get/:id', (req, res) => {
    let currentTreatment, currentPatient, measureItemMap, measurementList
    Treatment.findOne({
        where: {
            id: req.params.id,
        },
    })
        .then((data) => {
            // 获取当前测量记录对应信息
            currentTreatment = data.dataValues
            return Patient.findOne({
                attributes: ['name', 'birthday', 'sex'],
                where: {
                    id: currentTreatment.patientId,
                },
            })
        })
        .then((data) => {
            // 获取当前测量记录对应患者信息
            currentPatient = data.dataValues
            return MeasureItem.findAll()
        })
        .then((rows) => {
            // 获取测量项目ID、名称映射
            measureItemMap = rows.reduce((prev, cur) => {
                prev[cur.id] = cur.item
                return prev
            }, {})
            return Measurement.findAll({
                where: {
                    treatmentId: currentTreatment.id,
                },
            })
        })
        .then((rows) => {
            // 获取当前测量记录关联所有测量项目
            measurementList = rows
                .map((v) => v.dataValues)
                .map((v) => ({
                    ...v,
                    itemName: measureItemMap?.[v.itemId],
                }))
            return Treatment.findAll({
                order: [['id', 'ASC']],
                where: {
                    patientId: currentTreatment.patientId,
                },
            })
        })
        .then((rows) => {
            const index = rows.findIndex((v) => v.id === currentTreatment.id)
            const { createTime, ...treatmentData } = currentTreatment
            res.sendResult(200, {
                ...treatmentData,
                ...currentPatient,
                measurements: measurementList,
                treatTime: dayjs(createTime).format('YYYY-MM-DD HH:mm:ss'),
                lastId: rows[index - 1]?.id, // 上一条记录
                nextId: rows[index + 1]?.id, // 下一条记录
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
 * 测量记录管理-删除记录
 * @param id [Number] 记录ID
 */
router.post('/del/:id', (req, res) => {
    Measurement.destroy({
        // 删除测量记录对应所有测量项目
        where: {
            treatmentId: req.params.id,
        },
    })
        .then(() => {
            return Treatment.destroy({
                where: {
                    id: req.params.id,
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

/**
 * 测量记录管理-新增测量记录
 * @param patientId    [Number] 患者ID
 * @param measurements [String] 测量项目
 * @param info         [String] 坐标信息
 * @param model        [String] 3d模型
 * @param record       [String] 诊断记录
 */
router.post('/set', async (req, res) => {
    const { patientId, measurements, info, model, record } = req.body
    Treatment.create({
        patientId,
        info,
        model,
        record,
        createTime: new Date(),
    })
        .then((res) => {
            // 创建对应测量项目
            return Measurement.bulkCreate(
                measurements.map((v) => ({ ...v, treatmentId: res.null }))
            )
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
})

module.exports = router
