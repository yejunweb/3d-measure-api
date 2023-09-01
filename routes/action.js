const express = require('express')
const router = express.Router()
const Action = require('../models/actionModel')

/**
 * 权限管理-权限列表
 */
router.post('/list', (req, res) => {
    Action.findAll()
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

module.exports = router
