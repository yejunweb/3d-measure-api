const express = require('express')
const router = express.Router()
const Department = require('../models/departmentModel')

/**
 * 构造生成树
 * @param origin [Array]  源数据
 * @param pid    [Number] 父级节点
 */
const treeConstructor = (origin, pid = 0) => {
    const hasChild = origin.filter((v) => v.parentId === pid) // 是否存在下级节点
    return origin
        .filter((v) => v.parentId === pid)
        .map((v) => ({
            ...v,
            ...(hasChild.length && {
                children: treeConstructor(origin, v.id),
            }),
        }))
}

/**
 * 单位管理-树形列表
 */
router.post('/treeList', (req, res) => {
    Department.findAll({
        attributes: { exclude: ['createTime'] },
    })
        .then(async (rows) => {
            res.sendResult(200, treeConstructor(rows.map((v) => v.dataValues)))
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
 * 单位管理-单位详情
 * @param id [Number] 部门ID
 */
router.post('/get/:id', (req, res) => {
    Department.findOne({
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
 * 单位管理-新增、编辑单位
 * @param id              [Number] 单位ID
 * @param name            [String] 单位名
 * @param parentId        [Number] 上级部门
 * @param departmentLevel [Number] 单位级别
 */
router.post('/set', async (req, res) => {
    const { id, name, parentId, departmentLevel } = req.body
    if (!id) {
        // 单位名重复检查
        const result = await Department.findAll({
            where: {
                name,
            },
        })
        if (result.length) return res.sendResult(502, null, '单位名重复')
        // 新增单位
        Department.create({
            name,
            parentId,
            departmentLevel,
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
        // 编辑单位
        Department.update(
            {
                name,
                parentId,
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
 * 删除单位
 * @param id [Number] 单位ID
 */
router.post('/del/:id', (req, res) => {
    Department.destroy({
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
