const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 治疗记录表 */
const Treatment = sequelize.define(
    'cd_treatment',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        patientId: DataTypes.INTEGER, // 患者id
        picture: DataTypes.TEXT, // 图片
        model: DataTypes.TEXT, // 3d模型
        info: DataTypes.TEXT, // 坐标信息
        record: DataTypes.TEXT, // 诊断记录
        createTime: DataTypes.DATE, // 创建时间
    },
    {
        underscored: true,
        tableName: 'cd_treatment',
    }
)

module.exports = Treatment
