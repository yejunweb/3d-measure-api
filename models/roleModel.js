const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 角色表 */
const Role = sequelize.define(
    'cd_role',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        roleName: DataTypes.STRING, // 角色名
        createTime: DataTypes.TIME, // 创建时间
        remark: DataTypes.STRING, // 备注
        departmentLevel: DataTypes.INTEGER, // 所属级别
        roleType: DataTypes.STRING, // 用户类型（管理员，普通用户）
    },
    {
        underscored: true,
        tableName: 'cd_role',
    }
)

module.exports = Role
