const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 测量项目表 */
const MeasureItem = sequelize.define(
    'cd_measure_item',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        item: DataTypes.STRING, // 测量项目
        avg: DataTypes.DOUBLE(11, 2), // 均值
        std: DataTypes.DOUBLE(11, 2), // 标准差
        remark: DataTypes.STRING, // 备注
    },
    {
        underscored: true,
        tableName: 'cd_measure_item',
    }
)

module.exports = MeasureItem
