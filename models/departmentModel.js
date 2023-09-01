const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 部门表 */
const Department = sequelize.define(
    'cd_department',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        name: DataTypes.STRING, // 部门名
        parentId: DataTypes.INTEGER, // 上级部门
        departmentLevel: DataTypes.INTEGER, // 单位级别
        createTime: DataTypes.DATE, // 创建时间
    },
    {
        underscored: true,
        tableName: 'cd_department',
    }
)

module.exports = Department
