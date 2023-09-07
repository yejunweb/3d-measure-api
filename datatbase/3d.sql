/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : 3d

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2023-09-07 17:18:41
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cd_action`
-- ----------------------------
DROP TABLE IF EXISTS `cd_action`;
CREATE TABLE `cd_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限名',
  `explanation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限表';

-- ----------------------------
-- Records of cd_action
-- ----------------------------
INSERT INTO cd_action VALUES ('1', 'user_set', '账号管理');
INSERT INTO cd_action VALUES ('2', 'department_set', '单位管理');
INSERT INTO cd_action VALUES ('3', 'role_set', '角色管理');
INSERT INTO cd_action VALUES ('4', 'statistics', '大屏数据');
INSERT INTO cd_action VALUES ('5', 'patient_set', '患者管理');
INSERT INTO cd_action VALUES ('6', 'config_set', '配置管理');

-- ----------------------------
-- Table structure for `cd_department`
-- ----------------------------
DROP TABLE IF EXISTS `cd_department`;
CREATE TABLE `cd_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '部门名',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级部门',
  `department_level` int(11) DEFAULT NULL COMMENT '单位级别',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门表';

-- ----------------------------
-- Records of cd_department
-- ----------------------------
INSERT INTO cd_department VALUES ('105', '安徽医院', '0', '1', '2021-05-10 16:10:43');
INSERT INTO cd_department VALUES ('106', '合肥医院', '105', '3', '2021-05-10 16:11:12');
INSERT INTO cd_department VALUES ('109', '蜀山区诊所', '106', '3', '2021-05-10 19:41:52');
INSERT INTO cd_department VALUES ('121', '江苏医院', '0', '1', '2021-10-18 09:44:10');
INSERT INTO cd_department VALUES ('122', '南京医院', '121', '2', '2021-10-18 09:44:30');
INSERT INTO cd_department VALUES ('124', '苏州医院', '121', '2', '2021-10-19 14:22:35');
INSERT INTO cd_department VALUES ('127', '无锡医院', '121', '2', '2021-11-04 08:59:06');
INSERT INTO cd_department VALUES ('128', '瑶海区诊所', '106', '3', '2021-11-10 09:15:46');
INSERT INTO cd_department VALUES ('129', '蚌埠医院', '105', '2', '2021-11-10 09:17:18');
INSERT INTO cd_department VALUES ('130', '蚌山区诊所', '129', '3', '2021-11-10 09:22:43');

-- ----------------------------
-- Table structure for `cd_measurement`
-- ----------------------------
DROP TABLE IF EXISTS `cd_measurement`;
CREATE TABLE `cd_measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_id` int(11) DEFAULT NULL COMMENT '治疗记录',
  `item_id` int(11) DEFAULT NULL COMMENT '测量项目',
  `result` double(11,2) DEFAULT NULL COMMENT '测量结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测量结果记录表';

-- ----------------------------
-- Records of cd_measurement
-- ----------------------------
INSERT INTO cd_measurement VALUES ('333', '145', '14', '140.00');
INSERT INTO cd_measurement VALUES ('334', '145', '15', '14.00');
INSERT INTO cd_measurement VALUES ('335', '146', '16', '49.70');

-- ----------------------------
-- Table structure for `cd_measure_item`
-- ----------------------------
DROP TABLE IF EXISTS `cd_measure_item`;
CREATE TABLE `cd_measure_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '测量项目',
  `avg` double(11,2) DEFAULT NULL COMMENT '均值',
  `std` double(11,1) DEFAULT NULL COMMENT '标准差',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测量项目表';

-- ----------------------------
-- Records of cd_measure_item
-- ----------------------------
INSERT INTO cd_measure_item VALUES ('1', 'G', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('2', 'Ns', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('3', 'E', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('4', 'Sn', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('5', 'UL`', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('6', 'LL`', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('7', 'UL', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('8', 'LL', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('9', 'Pos', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('10', 'Mes', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('11', 'K', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('12', 'H线', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('13', 'E线', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('14', 'NLA/°', '100.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('15', 'FCA/°', '50.00', '4.4', '');
INSERT INTO cd_measure_item VALUES ('16', 'UFH/mm', '40.00', '78.0', '');
INSERT INTO cd_measure_item VALUES ('17', 'ULL/mm', '20.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('18', 'LLL/mm', '40.00', '4.2', '');
INSERT INTO cd_measure_item VALUES ('19', 'UFH/（UFH+ULL+LLL）（单位：%）', '7.20', '1.9', '');
INSERT INTO cd_measure_item VALUES ('20', 'ULL/（UFH+ULL+LLL）（单位：%）', '6.30', '1.5', '');
INSERT INTO cd_measure_item VALUES ('21', 'LLL/（UFH+ULL+LLL）（单位：%）', '1.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('22', 'ULP/mm', '8.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('23', 'LLP/mm', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('24', 'H角/°', '2.00', null, '');
INSERT INTO cd_measure_item VALUES ('25', '鼻点-H线/mm', '4.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('26', '鼻唇沟-H线/mm', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('27', '上唇突点-H线/mm', '0.00', '0.0', null);
INSERT INTO cd_measure_item VALUES ('28', '下唇突点-H线/mm', '0.00', '0.0', null);
INSERT INTO cd_measure_item VALUES ('29', '颏唇沟-H线/mm', '0.00', '0.0', null);
INSERT INTO cd_measure_item VALUES ('30', '颏前点-H线/mm', '0.00', '0.0', null);

-- ----------------------------
-- Table structure for `cd_patient`
-- ----------------------------
DROP TABLE IF EXISTS `cd_patient`;
CREATE TABLE `cd_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `head_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `department_id` int(11) DEFAULT NULL COMMENT '单位跟随系统用户',
  `picture` text COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `model` text COLLATE utf8mb4_unicode_ci COMMENT '3d模型',
  `record` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='患者表';

-- ----------------------------
-- Records of cd_patient
-- ----------------------------
INSERT INTO cd_patient VALUES ('1', '吴观荣', '男', '1963-04-25 08:00:00', '13735926294', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('2', '刘叶水', '男', '1971-04-25 00:00:00', '13757821152', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('3', '张家兰', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('4', '吴世槐', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('5', '符陈善', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('6', '周立钗', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('7', '邝明', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('8', '徐善松', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('9', '周美妹', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('10', '翁芳珠', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('11', '符天养', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('12', '毛根秀', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('13', '曾起光', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('14', '吴必高', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('15', '龚水鹤', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('16', '吴梅菊', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('17', '叶永发', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('18', '龚信根', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('19', '刘广利', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省安庆市宜秀区', '2023-09-07 16:01:03', '105', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('20', '吴守聪', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('21', '张凤弟', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('22', '叶祥林', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('23', '陈金香', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('24', '叶伟林', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('25', '刘水长', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('26', '吴世奶儿', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('27', '符媛媛', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('28', '符丽华', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('29', '吴必献', '男', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073839151.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073839151.jpg', '/uploads/1694073588469.obj', '暂无备注');
INSERT INTO cd_patient VALUES ('30', '林英', '女', '1971-04-25 00:00:00', '13645786832', '/uploads/1694073835167.jpg', '安徽省合肥市蜀山区', '2023-09-07 16:01:03', '106', '/uploads/1694073835167.jpg', '/uploads/1694073588469.obj', '暂无备注');

-- ----------------------------
-- Table structure for `cd_role`
-- ----------------------------
DROP TABLE IF EXISTS `cd_role`;
CREATE TABLE `cd_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `department_level` int(11) DEFAULT NULL COMMENT '所属级别',
  `role_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户类型（管理员，普通用户）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色表';

-- ----------------------------
-- Records of cd_role
-- ----------------------------
INSERT INTO cd_role VALUES ('1', '管理员', '2020-11-02 13:50:42', null, null, 'admin');
INSERT INTO cd_role VALUES ('2', '操作员', '2020-11-02 17:45:13', null, '1', 'normal');
INSERT INTO cd_role VALUES ('3', '助理', '2020-11-02 17:45:39', null, '3', 'normal');
INSERT INTO cd_role VALUES ('4', '主治医师', '2020-11-02 17:46:01', null, '2', 'normal');
INSERT INTO cd_role VALUES ('42', '医生', '2021-08-27 13:50:19', null, '2', 'normal');
INSERT INTO cd_role VALUES ('44', '护士', '2021-10-18 09:59:23', null, '3', 'normal');

-- ----------------------------
-- Table structure for `cd_role_action_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cd_role_action_rel`;
CREATE TABLE `cd_role_action_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `action_id` int(11) NOT NULL COMMENT '行为id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=813 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色权限表';

-- ----------------------------
-- Records of cd_role_action_rel
-- ----------------------------
INSERT INTO cd_role_action_rel VALUES ('770', '44', '5');
INSERT INTO cd_role_action_rel VALUES ('771', '44', '4');
INSERT INTO cd_role_action_rel VALUES ('775', '2', '5');
INSERT INTO cd_role_action_rel VALUES ('776', '2', '6');
INSERT INTO cd_role_action_rel VALUES ('777', '2', '4');
INSERT INTO cd_role_action_rel VALUES ('786', '4', '5');
INSERT INTO cd_role_action_rel VALUES ('787', '4', '6');
INSERT INTO cd_role_action_rel VALUES ('788', '4', '4');
INSERT INTO cd_role_action_rel VALUES ('791', '42', '6');
INSERT INTO cd_role_action_rel VALUES ('792', '42', '5');
INSERT INTO cd_role_action_rel VALUES ('793', '42', '4');
INSERT INTO cd_role_action_rel VALUES ('801', '44', '6');
INSERT INTO cd_role_action_rel VALUES ('802', '1', '1');
INSERT INTO cd_role_action_rel VALUES ('803', '1', '2');
INSERT INTO cd_role_action_rel VALUES ('804', '1', '5');
INSERT INTO cd_role_action_rel VALUES ('805', '1', '6');
INSERT INTO cd_role_action_rel VALUES ('806', '1', '3');
INSERT INTO cd_role_action_rel VALUES ('807', '1', '4');
INSERT INTO cd_role_action_rel VALUES ('808', '3', '2');
INSERT INTO cd_role_action_rel VALUES ('809', '2', '2');
INSERT INTO cd_role_action_rel VALUES ('810', '3', '4');
INSERT INTO cd_role_action_rel VALUES ('811', '3', '5');
INSERT INTO cd_role_action_rel VALUES ('812', '3', '6');

-- ----------------------------
-- Table structure for `cd_treatment`
-- ----------------------------
DROP TABLE IF EXISTS `cd_treatment`;
CREATE TABLE `cd_treatment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL COMMENT '患者id',
  `picture` text COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `model` text COLLATE utf8mb4_unicode_ci COMMENT '3d模型',
  `info` text COLLATE utf8mb4_unicode_ci COMMENT '坐标信息',
  `record` text COLLATE utf8mb4_unicode_ci COMMENT '诊断记录',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='治疗记录表';

-- ----------------------------
-- Records of cd_treatment
-- ----------------------------
INSERT INTO cd_treatment VALUES ('145', '1', null, '/uploads/1694077436309.jpg,/uploads/1694077436314.mtl,/uploads/1694077436312.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":-17.75318768313389,\"y\":70.79624844371682,\"z\":95.27594978260555}],\"label\":\"G\",\"labelPosition\":{\"x\":-17.75318768313389,\"y\":70.79624844371682,\"z\":95.27594978260555}},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":-13.622822529377629,\"y\":16.918666689710932,\"z\":90.74292104039984}],\"label\":\"Ns\",\"labelPosition\":{\"x\":-13.622822529377629,\"y\":16.918666689710932,\"z\":90.74292104039984}},{\"id\":3,\"type\":1,\"positionList\":[{\"x\":-59.334175982760726,\"y\":11.182210089058758,\"z\":78.79979964769046}],\"label\":\"E\",\"labelPosition\":{\"x\":-59.334175982760726,\"y\":11.182210089058758,\"z\":78.79979964769046}},{\"id\":4,\"type\":1,\"positionList\":[{\"x\":-7.700804005882246,\"y\":-32.72841702499958,\"z\":98.92284082556341}],\"label\":\"Sn\",\"labelPosition\":{\"x\":-7.700804005882246,\"y\":-32.72841702499958,\"z\":98.92284082556341}},{\"id\":5,\"type\":1,\"positionList\":[{\"x\":-6.439089322485659,\"y\":-47.0053520541453,\"z\":97.90228873708509}],\"label\":\"UL`\",\"labelPosition\":{\"x\":-6.439089322485659,\"y\":-47.0053520541453,\"z\":97.90228873708509}},{\"id\":6,\"type\":1,\"positionList\":[{\"x\":-5.240356583176208,\"y\":-65.28610909873682,\"z\":92.67786741775603}],\"label\":\"LL`\",\"labelPosition\":{\"x\":-5.240356583176208,\"y\":-65.28610909873682,\"z\":92.67786741775603}},{\"id\":13,\"type\":2,\"positionList\":[{\"x\":-9.007719620496225,\"y\":-20.803542933050775,\"z\":110.56365689320103},{\"x\":-8.49139068049736,\"y\":-80.80997914060957,\"z\":90.26299815421442}],\"label\":\"E线\",\"labelPosition\":{\"x\":-8.749555150496793,\"y\":-50.806761036830174,\"z\":100.41332752370772}},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":-9.01938156404021,\"y\":-20.81327087572064,\"z\":110.56349647915505},{\"x\":-7.63570044552457,\"y\":-32.64163135943513,\"z\":98.96700817260056},{\"x\":-6.414864411855291,\"y\":-47.03793882942069,\"z\":97.89360935987716}],\"label\":\"NLA：140°\",\"labelPosition\":{\"x\":-7.662841292998963,\"y\":-33.069622523813635,\"z\":100.72085642157239}},{\"id\":15,\"type\":7,\"positionList\":[{\"x\":-17.548845080588606,\"y\":70.67619194730483,\"z\":95.38526092859698},{\"x\":-7.8872442031912655,\"y\":-32.59464118875536,\"z\":99.00979386822695},{\"x\":-8.377820633845495,\"y\":-80.73455655879874,\"z\":90.29086441650121}],\"label\":\"FCA：14°\",\"labelPosition\":{\"x\":-9.41574827764845,\"y\":-7.359516437738099,\"z\":99.85885995357623}}]', '初次就诊', '2023-09-07 17:06:00');
INSERT INTO cd_treatment VALUES ('146', '1', null, '/uploads/1694077579886.jpg,/uploads/1694077579898.mtl,/uploads/1694077579889.obj', '[{\"id\":7,\"type\":1,\"positionList\":[{\"x\":-5.965855486772345,\"y\":-64.55907901757215,\"z\":112.4574029259312}],\"label\":\"UL\",\"labelPosition\":{\"x\":-5.965855486772345,\"y\":-64.55907901757215,\"z\":112.4574029259312}},{\"id\":8,\"type\":1,\"positionList\":[{\"x\":-7.072645385353571,\"y\":-76.87923057449233,\"z\":107.35733256940165}],\"label\":\"LL\",\"labelPosition\":{\"x\":-7.072645385353571,\"y\":-76.87923057449233,\"z\":107.35733256940165}},{\"id\":9,\"type\":1,\"positionList\":[{\"x\":-8.699352221993628,\"y\":-98.48713739142114,\"z\":99.66005471384534}],\"label\":\"Pos\",\"labelPosition\":{\"x\":-8.699352221993628,\"y\":-98.48713739142114,\"z\":99.66005471384534}},{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-56.94954635200948,\"y\":-0.4241529796292056,\"z\":88.86415476365605},{\"x\":-5.5449495276710525,\"y\":-46.998796306213414,\"z\":110.68408516240711},{\"x\":-8.449791747515587,\"y\":48.87216506197316,\"z\":103.01943511881231}],\"label\":\"UFH：49.7mm\",\"labelPosition\":{\"x\":-6.295084725096781,\"y\":-22.241450780862312,\"z\":108.70479563873764}}]', '二次就诊', '2023-09-07 17:07:20');

-- ----------------------------
-- Table structure for `cd_user`
-- ----------------------------
DROP TABLE IF EXISTS `cd_user`;
CREATE TABLE `cd_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `real_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `role_id` int(11) DEFAULT NULL COMMENT '角色',
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `head_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `user_status` int(11) DEFAULT NULL COMMENT '用户状态,1为可用,2为停用',
  `create_time` datetime DEFAULT NULL COMMENT '账户创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of cd_user
-- ----------------------------
INSERT INTO cd_user VALUES ('1', 'admin', 'f07f6c983d715f4155ab0e9ce5cc4805', '管理员', '2023-09-21 00:00:00', '', '1', '105', '/uploads/tank/2021/6/18/af8a292eed4743bbbdf2f9caaa68a28e.jpg', '1', '2021-05-21 16:21:13');
INSERT INTO cd_user VALUES ('150', '13757821152', 'e10adc3949ba59abbe56e057f20f883e', '叶祥林', '1998-01-01 00:00:00', '', '2', '106', null, '1', '2023-09-07 16:26:44');
