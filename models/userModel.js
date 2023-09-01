const { DataTypes } = require('sequelize')
const sequelize = require('./database')

/* 用户表 */
const User = sequelize.define(
    'cd_user',
    {
        id: {
            // 主键
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        username: DataTypes.STRING, // 用户名
        password: DataTypes.STRING, // 密码
        realName: DataTypes.STRING, // 真实姓名
        birthday: DataTypes.DATE, // 生日
        idCard: DataTypes.STRING, // 证件号码
        roleId: DataTypes.INTEGER, // 角色
        departmentId: DataTypes.INTEGER, // 部门
        headImage: DataTypes.STRING, // 头像
        userStatus: DataTypes.INTEGER, // 用户状态,1为可用,2为停用
        createTime: DataTypes.DATE, // 账户创建时间
    },
    {
        underscored: true, // 启用 underscored 参数后，Sequelize 将改为定义每个模型的 createdAt 属性，指向每个表中名为 created_at 的列
        tableName: 'cd_user',
    }
)

module.exports = User
