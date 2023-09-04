const dayjs = require('dayjs')
const express = require('express')
const router = express.Router()
const Patient = require('../models/patientModel')
const Treatment = require('../models/treatmentModel')

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

module.exports = router
