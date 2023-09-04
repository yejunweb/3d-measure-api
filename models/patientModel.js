const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 患者表 */
const Patient = sequelize.define(
    'cd_patient',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        name: DataTypes.STRING, // 姓名
        sex: DataTypes.STRING, // 性别
        birthday: DataTypes.DATE, // 生日
        phone: DataTypes.STRING, // 手机号
        headImg: DataTypes.STRING, // 头像
        address: DataTypes.STRING, // 地址
        picture: DataTypes.TEXT, // 图片
        model: DataTypes.TEXT, // 3d模型
        record: DataTypes.TEXT, // 备注
        createTime: DataTypes.DATE, // 创建时间
        departmentId: DataTypes.INTEGER, // 单位跟随系统用户
    },
    {
        underscored: true,
        tableName: 'cd_patient',
    }
)

module.exports = Patient
