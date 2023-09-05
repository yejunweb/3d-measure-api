const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 测量结果记录表 */
const Measurement = sequelize.define(
    'cd_measurement',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        treatmentId: DataTypes.INTEGER, // 治疗记录
        itemId: DataTypes.INTEGER, // 测量项目
        result: DataTypes.DOUBLE(11, 2), // 测量结果
    },
    {
        underscored: true,
        tableName: 'cd_measurement',
    }
)

module.exports = Measurement
