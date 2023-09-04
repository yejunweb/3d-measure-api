const express = require('express')
const router = express.Router()
const MeasureItem = require('../models/measureItemModel')

/**
 * 国标参数配置-测量项目列表
 */
router.post('/list', (req, res) => {
    MeasureItem.findAll()
        .then((rows) => {
            res.sendResult(200, rows)
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
 * 国标参数配置-新增、编辑测量项目
 * @param id     [Number] 主键
 * @param item   [String] 测量项目
 * @param avg    [Float]  均值
 * @param std    [Float]  标准差
 * @param remark [String] 备注
 *
 */
router.post('/set', async (req, res) => {
    const { id, item, avg, std, remark } = req.body
    if (!id) {
        // 测量项目重复检查
        const result = await MeasureItem.findAll({
            where: {
                item,
            },
        })
        if (result.length) return res.sendResult(502, null, '测量项目重复')
        // 新增测量项目
        MeasureItem.create({
            item,
            avg,
            std,
            remark,
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
        // 编辑测量项目
        MeasureItem.update(
            {
                item,
                avg,
                std,
                remark,
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
 * 删除测量项目
 * @param id [Number] 测量项目ID
 */
router.post('/del/:id', (req, res) => {
    MeasureItem.destroy({
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