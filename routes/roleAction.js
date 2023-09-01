const { Op } = require('sequelize')
const express = require('express')
const router = express.Router()
const RoleActionRel = require('../models/roleActionRelModel')

/**
 * 角色权限管理-角色对应权限列表
 * @param id [Number] 角色ID
 */
router.post('/get/:id', (req, res) => {
    RoleActionRel.findAll({
        where: {
            roleId: req.params.id,
        },
    })
        .then((rows) => {
            res.sendResult(
                200,
                rows.map((v) => v.actionId)
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
 * 角色权限管理-角色对应权限列表
 * @param roleId  [Number] 角色ID
 * @param actions [Array]  权限ID集合
 */
router.post('/set', async (req, res) => {
    try {
        const { roleId, actions } = req.body
        const roleActionRows = await RoleActionRel.findAll({
            where: {
                roleId,
            },
        })
        // 权限ID、权限信息映射
        const roleActionMap = roleActionRows.reduce((prev, cur) => {
            prev[cur.actionId] = cur
            return prev
        }, {})
        // 当前角色 权限ID集合
        const roleActionIds = Object.keys(roleActionMap).map(Number)
        // 获取需要新增的 权限ID集合
        const addIds = actions
            .map((id) => {
                if (!roleActionIds.includes(id)) return id
            })
            ?.filter(Boolean)
        // 获取需要删除的 角色权限ID集合
        const deleteIds = roleActionIds
            .map((id) => {
                if (!actions.includes(id)) return roleActionMap[id]?.id
            })
            ?.filter(Boolean)
        // 批量创建
        addIds.length &&
            (await RoleActionRel.bulkCreate(
                addIds.map((actionId) => ({ roleId, actionId }))
            ))
        // 批量删除
        deleteIds.length &&
            (await RoleActionRel.destroy({
                where: {
                    id: {
                        [Op.in]: deleteIds,
                    },
                },
            }))
        res.sendResult(200, null, '操作成功')
    } catch (error) {
        res.sendResult(
            502,
            null,
            (error.parent && error.parent.sqlMessage) || error
        )
    }
})

module.exports = router
