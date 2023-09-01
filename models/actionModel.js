const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 权限表 */
const Action = sequelize.define(
    'cd_action',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        actionName: DataTypes.STRING, // 权限名
        explanation: DataTypes.STRING, // 说明
    },
    {
        underscored: true,
        tableName: 'cd_action',
    }
)

module.exports = Action
