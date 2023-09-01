const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 角色权限表 */
const RoleActionRel = sequelize.define(
    'cd_role_action_rel',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        roleId: DataTypes.INTEGER, // 角色id
        actionId: DataTypes.INTEGER, // 行为id
    },
    {
        underscored: true,
        tableName: 'cd_role_action_rel',
    }
)

module.exports = RoleActionRel
