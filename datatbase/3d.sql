/*
Navicat MySQL Data Transfer

Source Server         : 39.104.83.23
Source Server Version : 50568
Source Host           : 39.104.83.23:3306
Source Database       : 3d

Target Server Type    : MYSQL
Target Server Version : 50568
File Encoding         : 65001

Date: 2021-12-23 17:15:13
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门表';

-- ----------------------------
-- Records of cd_department
-- ----------------------------
INSERT INTO cd_department VALUES ('105', '安徽医院', '0', '1', '2021-05-10 16:10:43');
INSERT INTO cd_department VALUES ('106', '合肥医院', '105', '2', '2021-05-10 16:11:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测量结果记录表';

-- ----------------------------
-- Records of cd_measurement
-- ----------------------------
INSERT INTO cd_measurement VALUES ('1', '5', '1', '76.00');
INSERT INTO cd_measurement VALUES ('2', '6', '1', '78.00');
INSERT INTO cd_measurement VALUES ('3', '6', '2', '7.60');
INSERT INTO cd_measurement VALUES ('4', '23', '1', '78.00');
INSERT INTO cd_measurement VALUES ('5', '23', '2', '7.60');
INSERT INTO cd_measurement VALUES ('6', '24', '1', '8.00');
INSERT INTO cd_measurement VALUES ('7', '24', '2', '6.00');
INSERT INTO cd_measurement VALUES ('8', '26', null, null);
INSERT INTO cd_measurement VALUES ('9', '26', null, null);
INSERT INTO cd_measurement VALUES ('10', '26', null, null);
INSERT INTO cd_measurement VALUES ('11', '26', null, null);
INSERT INTO cd_measurement VALUES ('12', '26', null, null);
INSERT INTO cd_measurement VALUES ('13', '26', null, null);
INSERT INTO cd_measurement VALUES ('14', '26', null, null);
INSERT INTO cd_measurement VALUES ('15', '26', null, null);
INSERT INTO cd_measurement VALUES ('16', '26', null, null);
INSERT INTO cd_measurement VALUES ('17', '26', null, null);
INSERT INTO cd_measurement VALUES ('18', '26', null, null);
INSERT INTO cd_measurement VALUES ('19', '26', null, null);
INSERT INTO cd_measurement VALUES ('20', '26', null, null);
INSERT INTO cd_measurement VALUES ('21', '27', null, null);
INSERT INTO cd_measurement VALUES ('22', '27', null, null);
INSERT INTO cd_measurement VALUES ('23', '27', null, null);
INSERT INTO cd_measurement VALUES ('24', '27', null, null);
INSERT INTO cd_measurement VALUES ('25', '27', null, null);
INSERT INTO cd_measurement VALUES ('26', '27', null, null);
INSERT INTO cd_measurement VALUES ('27', '27', null, null);
INSERT INTO cd_measurement VALUES ('28', '27', null, null);
INSERT INTO cd_measurement VALUES ('29', '27', null, null);
INSERT INTO cd_measurement VALUES ('30', '27', null, null);
INSERT INTO cd_measurement VALUES ('31', '27', null, null);
INSERT INTO cd_measurement VALUES ('32', '27', null, null);
INSERT INTO cd_measurement VALUES ('33', '27', null, null);
INSERT INTO cd_measurement VALUES ('34', '28', '1', null);
INSERT INTO cd_measurement VALUES ('35', '28', '2', null);
INSERT INTO cd_measurement VALUES ('36', '28', '3', null);
INSERT INTO cd_measurement VALUES ('37', '28', '4', null);
INSERT INTO cd_measurement VALUES ('38', '28', '5', null);
INSERT INTO cd_measurement VALUES ('39', '28', '6', null);
INSERT INTO cd_measurement VALUES ('40', '28', '7', null);
INSERT INTO cd_measurement VALUES ('41', '28', '8', null);
INSERT INTO cd_measurement VALUES ('42', '28', '9', null);
INSERT INTO cd_measurement VALUES ('43', '28', '10', null);
INSERT INTO cd_measurement VALUES ('44', '28', '11', null);
INSERT INTO cd_measurement VALUES ('45', '28', '12', null);
INSERT INTO cd_measurement VALUES ('46', '28', '13', null);
INSERT INTO cd_measurement VALUES ('47', '31', null, '1.00');
INSERT INTO cd_measurement VALUES ('48', '31', null, '1.00');
INSERT INTO cd_measurement VALUES ('49', '31', null, '1.00');
INSERT INTO cd_measurement VALUES ('50', '31', null, '2.00');
INSERT INTO cd_measurement VALUES ('51', '31', null, '2.00');
INSERT INTO cd_measurement VALUES ('52', '31', null, '2.00');
INSERT INTO cd_measurement VALUES ('53', '32', '1', '1.00');
INSERT INTO cd_measurement VALUES ('54', '32', '2', '1.00');
INSERT INTO cd_measurement VALUES ('55', '32', '3', '1.00');
INSERT INTO cd_measurement VALUES ('56', '32', '4', '2.00');
INSERT INTO cd_measurement VALUES ('57', '32', '5', '2.00');
INSERT INTO cd_measurement VALUES ('58', '32', '6', '2.00');
INSERT INTO cd_measurement VALUES ('59', '33', '1', '1.00');
INSERT INTO cd_measurement VALUES ('60', '33', '2', '2.00');
INSERT INTO cd_measurement VALUES ('61', '33', '3', '3.00');
INSERT INTO cd_measurement VALUES ('62', '33', '4', '4.00');
INSERT INTO cd_measurement VALUES ('63', '33', '5', '5.00');
INSERT INTO cd_measurement VALUES ('64', '33', '6', '6.00');
INSERT INTO cd_measurement VALUES ('65', '36', '1', '1.00');
INSERT INTO cd_measurement VALUES ('66', '36', '2', '1.00');
INSERT INTO cd_measurement VALUES ('67', '36', '3', '2.00');
INSERT INTO cd_measurement VALUES ('68', '36', '4', '1.00');
INSERT INTO cd_measurement VALUES ('69', '36', '5', '1.00');
INSERT INTO cd_measurement VALUES ('70', '36', '6', '2.00');
INSERT INTO cd_measurement VALUES ('71', '36', '7', '1.00');
INSERT INTO cd_measurement VALUES ('72', '38', '1', '123.00');
INSERT INTO cd_measurement VALUES ('73', '38', '2', '47.00');
INSERT INTO cd_measurement VALUES ('74', '38', '3', '13.39');
INSERT INTO cd_measurement VALUES ('75', '38', '4', '15.50');
INSERT INTO cd_measurement VALUES ('76', '38', '5', '27.08');
INSERT INTO cd_measurement VALUES ('77', '38', '6', '7.54');
INSERT INTO cd_measurement VALUES ('78', '40', '1', '80.00');
INSERT INTO cd_measurement VALUES ('79', '40', '2', '123.00');
INSERT INTO cd_measurement VALUES ('80', '40', '5', '34.89');
INSERT INTO cd_measurement VALUES ('81', '42', '1', '114.00');
INSERT INTO cd_measurement VALUES ('82', '42', '2', '124.00');
INSERT INTO cd_measurement VALUES ('83', '42', '3', '9.82');
INSERT INTO cd_measurement VALUES ('84', '42', '4', '11.28');
INSERT INTO cd_measurement VALUES ('85', '42', '5', '15.94');
INSERT INTO cd_measurement VALUES ('86', '42', '6', '12.30');
INSERT INTO cd_measurement VALUES ('87', '42', '8', '8.65');
INSERT INTO cd_measurement VALUES ('88', '42', '9', '10.90');
INSERT INTO cd_measurement VALUES ('89', '42', '12', '10.84');
INSERT INTO cd_measurement VALUES ('90', '43', '3', '28.67');
INSERT INTO cd_measurement VALUES ('91', '44', '1', '142.00');
INSERT INTO cd_measurement VALUES ('92', '44', '2', '114.00');
INSERT INTO cd_measurement VALUES ('93', '44', '4', '80.44');
INSERT INTO cd_measurement VALUES ('94', '44', '5', '60.65');
INSERT INTO cd_measurement VALUES ('95', '45', '1', '80.00');
INSERT INTO cd_measurement VALUES ('96', '45', '2', '30.00');
INSERT INTO cd_measurement VALUES ('97', '45', '3', '47.60');
INSERT INTO cd_measurement VALUES ('98', '45', '5', '70.40');
INSERT INTO cd_measurement VALUES ('99', '45', '6', '43.50');
INSERT INTO cd_measurement VALUES ('100', '46', '1', '79.00');
INSERT INTO cd_measurement VALUES ('101', '46', '3', '57.40');
INSERT INTO cd_measurement VALUES ('102', '47', '1', '79.00');
INSERT INTO cd_measurement VALUES ('103', '47', '3', '57.40');
INSERT INTO cd_measurement VALUES ('104', '50', '1', '115.00');
INSERT INTO cd_measurement VALUES ('105', '50', '2', '117.00');
INSERT INTO cd_measurement VALUES ('106', '50', '4', '33.50');
INSERT INTO cd_measurement VALUES ('107', '51', '1', '106.00');
INSERT INTO cd_measurement VALUES ('108', '52', '1', '106.00');
INSERT INTO cd_measurement VALUES ('109', '56', '1', '134.00');
INSERT INTO cd_measurement VALUES ('110', '56', '2', '155.00');
INSERT INTO cd_measurement VALUES ('111', '59', null, null);
INSERT INTO cd_measurement VALUES ('112', '59', null, null);
INSERT INTO cd_measurement VALUES ('113', '59', null, null);
INSERT INTO cd_measurement VALUES ('114', '59', null, null);
INSERT INTO cd_measurement VALUES ('115', '59', null, null);
INSERT INTO cd_measurement VALUES ('116', '59', null, null);
INSERT INTO cd_measurement VALUES ('117', '59', null, null);
INSERT INTO cd_measurement VALUES ('118', '59', null, null);
INSERT INTO cd_measurement VALUES ('119', '59', null, null);
INSERT INTO cd_measurement VALUES ('120', '59', null, null);
INSERT INTO cd_measurement VALUES ('121', '59', null, null);
INSERT INTO cd_measurement VALUES ('122', '59', null, null);
INSERT INTO cd_measurement VALUES ('123', '59', null, null);
INSERT INTO cd_measurement VALUES ('124', '59', null, '138.00');
INSERT INTO cd_measurement VALUES ('125', '59', null, null);
INSERT INTO cd_measurement VALUES ('126', '59', null, '46.80');
INSERT INTO cd_measurement VALUES ('127', '59', null, '18.10');
INSERT INTO cd_measurement VALUES ('128', '59', null, '52.90');
INSERT INTO cd_measurement VALUES ('129', '59', null, null);
INSERT INTO cd_measurement VALUES ('130', '59', null, null);
INSERT INTO cd_measurement VALUES ('131', '59', null, null);
INSERT INTO cd_measurement VALUES ('132', '59', null, null);
INSERT INTO cd_measurement VALUES ('133', '59', null, null);
INSERT INTO cd_measurement VALUES ('134', '59', null, null);
INSERT INTO cd_measurement VALUES ('135', '59', null, '3.50');
INSERT INTO cd_measurement VALUES ('136', '59', null, null);
INSERT INTO cd_measurement VALUES ('137', '59', null, null);
INSERT INTO cd_measurement VALUES ('138', '59', null, null);
INSERT INTO cd_measurement VALUES ('139', '59', null, null);
INSERT INTO cd_measurement VALUES ('140', '59', null, null);
INSERT INTO cd_measurement VALUES ('141', '60', null, null);
INSERT INTO cd_measurement VALUES ('142', '60', null, null);
INSERT INTO cd_measurement VALUES ('143', '60', null, null);
INSERT INTO cd_measurement VALUES ('144', '60', null, null);
INSERT INTO cd_measurement VALUES ('145', '60', null, null);
INSERT INTO cd_measurement VALUES ('146', '60', null, null);
INSERT INTO cd_measurement VALUES ('147', '60', null, null);
INSERT INTO cd_measurement VALUES ('148', '60', null, null);
INSERT INTO cd_measurement VALUES ('149', '60', null, null);
INSERT INTO cd_measurement VALUES ('150', '60', null, null);
INSERT INTO cd_measurement VALUES ('151', '60', null, null);
INSERT INTO cd_measurement VALUES ('152', '60', null, null);
INSERT INTO cd_measurement VALUES ('153', '60', null, null);
INSERT INTO cd_measurement VALUES ('154', '60', null, null);
INSERT INTO cd_measurement VALUES ('155', '60', null, '22.00');
INSERT INTO cd_measurement VALUES ('156', '60', null, null);
INSERT INTO cd_measurement VALUES ('157', '60', null, null);
INSERT INTO cd_measurement VALUES ('158', '60', null, null);
INSERT INTO cd_measurement VALUES ('159', '60', null, null);
INSERT INTO cd_measurement VALUES ('160', '60', null, null);
INSERT INTO cd_measurement VALUES ('161', '60', null, null);
INSERT INTO cd_measurement VALUES ('162', '60', null, null);
INSERT INTO cd_measurement VALUES ('163', '60', null, null);
INSERT INTO cd_measurement VALUES ('164', '60', null, null);
INSERT INTO cd_measurement VALUES ('165', '60', null, null);
INSERT INTO cd_measurement VALUES ('166', '60', null, null);
INSERT INTO cd_measurement VALUES ('167', '60', null, null);
INSERT INTO cd_measurement VALUES ('168', '60', null, null);
INSERT INTO cd_measurement VALUES ('169', '60', null, null);
INSERT INTO cd_measurement VALUES ('170', '60', null, null);
INSERT INTO cd_measurement VALUES ('171', '61', null, null);
INSERT INTO cd_measurement VALUES ('172', '61', null, null);
INSERT INTO cd_measurement VALUES ('173', '61', null, null);
INSERT INTO cd_measurement VALUES ('174', '61', null, null);
INSERT INTO cd_measurement VALUES ('175', '61', null, null);
INSERT INTO cd_measurement VALUES ('176', '61', null, null);
INSERT INTO cd_measurement VALUES ('177', '61', null, null);
INSERT INTO cd_measurement VALUES ('178', '61', null, null);
INSERT INTO cd_measurement VALUES ('179', '61', null, null);
INSERT INTO cd_measurement VALUES ('180', '61', null, null);
INSERT INTO cd_measurement VALUES ('181', '61', null, null);
INSERT INTO cd_measurement VALUES ('182', '61', null, null);
INSERT INTO cd_measurement VALUES ('183', '61', null, null);
INSERT INTO cd_measurement VALUES ('184', '61', null, '83.00');
INSERT INTO cd_measurement VALUES ('185', '61', null, null);
INSERT INTO cd_measurement VALUES ('186', '61', null, null);
INSERT INTO cd_measurement VALUES ('187', '61', null, null);
INSERT INTO cd_measurement VALUES ('188', '61', null, null);
INSERT INTO cd_measurement VALUES ('189', '61', null, null);
INSERT INTO cd_measurement VALUES ('190', '61', null, null);
INSERT INTO cd_measurement VALUES ('191', '61', null, null);
INSERT INTO cd_measurement VALUES ('192', '61', null, null);
INSERT INTO cd_measurement VALUES ('193', '61', null, null);
INSERT INTO cd_measurement VALUES ('194', '61', null, null);
INSERT INTO cd_measurement VALUES ('195', '61', null, null);
INSERT INTO cd_measurement VALUES ('196', '61', null, null);
INSERT INTO cd_measurement VALUES ('197', '61', null, null);
INSERT INTO cd_measurement VALUES ('198', '61', null, null);
INSERT INTO cd_measurement VALUES ('199', '61', null, null);
INSERT INTO cd_measurement VALUES ('200', '61', null, null);
INSERT INTO cd_measurement VALUES ('201', '62', '14', '142.00');
INSERT INTO cd_measurement VALUES ('202', '62', '16', '47.70');
INSERT INTO cd_measurement VALUES ('203', '62', '18', '50.00');
INSERT INTO cd_measurement VALUES ('204', '62', '25', '8.90');
INSERT INTO cd_measurement VALUES ('205', '63', '16', '71.60');
INSERT INTO cd_measurement VALUES ('206', '63', '17', '23.50');
INSERT INTO cd_measurement VALUES ('207', '63', '18', '98.40');
INSERT INTO cd_measurement VALUES ('208', '63', '19', '37.00');
INSERT INTO cd_measurement VALUES ('209', '63', '20', '12.00');
INSERT INTO cd_measurement VALUES ('210', '63', '21', '51.00');
INSERT INTO cd_measurement VALUES ('211', '65', '14', '125.00');
INSERT INTO cd_measurement VALUES ('212', '65', '15', '149.00');
INSERT INTO cd_measurement VALUES ('213', '65', '16', '49.00');
INSERT INTO cd_measurement VALUES ('214', '65', '17', '14.00');
INSERT INTO cd_measurement VALUES ('215', '65', '18', '33.30');
INSERT INTO cd_measurement VALUES ('216', '65', '19', '51.00');
INSERT INTO cd_measurement VALUES ('217', '65', '20', '15.00');
INSERT INTO cd_measurement VALUES ('218', '65', '21', '35.00');
INSERT INTO cd_measurement VALUES ('219', '65', '22', '1.90');
INSERT INTO cd_measurement VALUES ('220', '65', '23', '1.30');
INSERT INTO cd_measurement VALUES ('221', '65', '24', '3.00');
INSERT INTO cd_measurement VALUES ('222', '65', '25', '2.40');
INSERT INTO cd_measurement VALUES ('223', '65', '26', '22.60');
INSERT INTO cd_measurement VALUES ('224', '65', '27', '0.60');
INSERT INTO cd_measurement VALUES ('225', '65', '28', '1.90');
INSERT INTO cd_measurement VALUES ('226', '65', '29', '3.40');
INSERT INTO cd_measurement VALUES ('227', '65', '30', '2.10');
INSERT INTO cd_measurement VALUES ('228', '67', '14', '123.00');
INSERT INTO cd_measurement VALUES ('229', '67', '15', '166.00');
INSERT INTO cd_measurement VALUES ('230', '67', '16', '47.70');
INSERT INTO cd_measurement VALUES ('231', '67', '17', '18.00');
INSERT INTO cd_measurement VALUES ('232', '67', '18', '30.90');
INSERT INTO cd_measurement VALUES ('233', '67', '19', '49.00');
INSERT INTO cd_measurement VALUES ('234', '67', '20', '19.00');
INSERT INTO cd_measurement VALUES ('235', '67', '21', '32.00');
INSERT INTO cd_measurement VALUES ('236', '67', '22', '1.00');
INSERT INTO cd_measurement VALUES ('237', '67', '23', '1.60');
INSERT INTO cd_measurement VALUES ('238', '67', '24', '2.00');
INSERT INTO cd_measurement VALUES ('239', '67', '25', '1.80');
INSERT INTO cd_measurement VALUES ('240', '67', '26', '27.70');
INSERT INTO cd_measurement VALUES ('241', '67', '27', '0.20');
INSERT INTO cd_measurement VALUES ('242', '67', '28', '0.80');
INSERT INTO cd_measurement VALUES ('243', '67', '29', '1.80');
INSERT INTO cd_measurement VALUES ('244', '67', '30', '0.50');
INSERT INTO cd_measurement VALUES ('245', '69', '14', '56.00');
INSERT INTO cd_measurement VALUES ('246', '69', '15', '69.00');
INSERT INTO cd_measurement VALUES ('247', '72', '28', '2.20');
INSERT INTO cd_measurement VALUES ('248', '75', '17', '10.00');
INSERT INTO cd_measurement VALUES ('249', '76', '14', '137.00');
INSERT INTO cd_measurement VALUES ('250', '76', '17', '10.80');
INSERT INTO cd_measurement VALUES ('251', '77', '16', '62.00');
INSERT INTO cd_measurement VALUES ('252', '77', '17', '59.30');
INSERT INTO cd_measurement VALUES ('253', '77', '18', '92.90');
INSERT INTO cd_measurement VALUES ('254', '77', '19', '29.00');
INSERT INTO cd_measurement VALUES ('255', '77', '20', '28.00');
INSERT INTO cd_measurement VALUES ('256', '77', '21', '43.00');
INSERT INTO cd_measurement VALUES ('257', '78', '16', '47.80');
INSERT INTO cd_measurement VALUES ('258', '78', '17', '16.00');
INSERT INTO cd_measurement VALUES ('259', '78', '18', '39.40');
INSERT INTO cd_measurement VALUES ('260', '78', '19', '46.00');
INSERT INTO cd_measurement VALUES ('261', '78', '20', '16.00');
INSERT INTO cd_measurement VALUES ('262', '78', '21', '38.00');
INSERT INTO cd_measurement VALUES ('263', '81', '15', '161.00');
INSERT INTO cd_measurement VALUES ('264', '81', '16', '45.90');
INSERT INTO cd_measurement VALUES ('265', '81', '18', '26.90');
INSERT INTO cd_measurement VALUES ('266', '81', '27', '3.20');
INSERT INTO cd_measurement VALUES ('267', '85', '15', '73.00');
INSERT INTO cd_measurement VALUES ('268', '85', '17', '16.00');
INSERT INTO cd_measurement VALUES ('269', '85', '18', '57.70');
INSERT INTO cd_measurement VALUES ('270', '85', '30', '22.90');
INSERT INTO cd_measurement VALUES ('271', '89', '14', '104.00');
INSERT INTO cd_measurement VALUES ('272', '89', '15', '177.00');
INSERT INTO cd_measurement VALUES ('273', '89', '16', '49.20');
INSERT INTO cd_measurement VALUES ('274', '89', '17', '22.40');
INSERT INTO cd_measurement VALUES ('275', '89', '18', '46.40');
INSERT INTO cd_measurement VALUES ('276', '89', '19', '42.00');
INSERT INTO cd_measurement VALUES ('277', '89', '20', '19.00');
INSERT INTO cd_measurement VALUES ('278', '89', '21', '39.00');
INSERT INTO cd_measurement VALUES ('279', '89', '22', '3.30');
INSERT INTO cd_measurement VALUES ('280', '89', '23', '1.30');
INSERT INTO cd_measurement VALUES ('281', '89', '24', '7.00');
INSERT INTO cd_measurement VALUES ('282', '89', '25', '3.00');
INSERT INTO cd_measurement VALUES ('283', '89', '26', '0.80');
INSERT INTO cd_measurement VALUES ('284', '89', '27', '0.00');
INSERT INTO cd_measurement VALUES ('285', '89', '28', '2.80');
INSERT INTO cd_measurement VALUES ('286', '89', '29', '2.00');
INSERT INTO cd_measurement VALUES ('287', '89', '30', '0.00');
INSERT INTO cd_measurement VALUES ('288', '90', '14', '131.00');
INSERT INTO cd_measurement VALUES ('289', '90', '15', '166.00');
INSERT INTO cd_measurement VALUES ('290', '90', '16', '48.50');
INSERT INTO cd_measurement VALUES ('291', '90', '17', '18.10');
INSERT INTO cd_measurement VALUES ('292', '90', '18', '54.50');
INSERT INTO cd_measurement VALUES ('293', '90', '19', '40.00');
INSERT INTO cd_measurement VALUES ('294', '90', '20', '15.00');
INSERT INTO cd_measurement VALUES ('295', '90', '21', '45.00');
INSERT INTO cd_measurement VALUES ('296', '90', '22', '4.70');
INSERT INTO cd_measurement VALUES ('297', '90', '23', '4.10');
INSERT INTO cd_measurement VALUES ('298', '90', '24', '9.00');
INSERT INTO cd_measurement VALUES ('299', '90', '25', '3.60');
INSERT INTO cd_measurement VALUES ('300', '90', '26', '2.10');
INSERT INTO cd_measurement VALUES ('301', '90', '27', '0.10');
INSERT INTO cd_measurement VALUES ('302', '90', '28', '0.70');
INSERT INTO cd_measurement VALUES ('303', '90', '29', '2.70');
INSERT INTO cd_measurement VALUES ('304', '90', '30', '0.00');
INSERT INTO cd_measurement VALUES ('305', '91', '15', '23.00');
INSERT INTO cd_measurement VALUES ('306', '92', '15', '20.00');
INSERT INTO cd_measurement VALUES ('307', '95', '29', '233.00');
INSERT INTO cd_measurement VALUES ('308', '96', '29', '233.00');
INSERT INTO cd_measurement VALUES ('309', '104', '23', '234.00');
INSERT INTO cd_measurement VALUES ('310', '106', '28', '1.00');
INSERT INTO cd_measurement VALUES ('311', '106', '29', '2.00');
INSERT INTO cd_measurement VALUES ('312', '106', '30', '3.00');
INSERT INTO cd_measurement VALUES ('313', '107', '14', '133.00');
INSERT INTO cd_measurement VALUES ('314', '107', '15', '19.00');
INSERT INTO cd_measurement VALUES ('315', '108', '29', '54.70');
INSERT INTO cd_measurement VALUES ('316', '120', '14', '131.00');
INSERT INTO cd_measurement VALUES ('317', '120', '16', '47.00');
INSERT INTO cd_measurement VALUES ('318', '120', '17', '18.00');
INSERT INTO cd_measurement VALUES ('319', '120', '18', '50.40');
INSERT INTO cd_measurement VALUES ('320', '120', '19', '41.00');
INSERT INTO cd_measurement VALUES ('321', '120', '20', '16.00');
INSERT INTO cd_measurement VALUES ('322', '120', '21', '44.00');
INSERT INTO cd_measurement VALUES ('323', '120', '26', '29.50');
INSERT INTO cd_measurement VALUES ('324', '122', '14', '57.00');

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
INSERT INTO cd_measure_item VALUES ('15', 'FCA/°', '7.30', '4.4', '');
INSERT INTO cd_measure_item VALUES ('16', 'UFH/mm', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('17', 'ULL/mm', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('18', 'LLL/mm', '0.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('19', 'UFH/（UFH+ULL+LLL）（单位：%）', '40.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('20', 'ULL/（UFH+ULL+LLL）（单位：%）', '20.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('21', 'LLL/（UFH+ULL+LLL）（单位：%）', '40.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('22', 'ULP/mm', '7.20', '1.9', '');
INSERT INTO cd_measure_item VALUES ('23', 'LLP/mm', '6.30', '1.5', '');
INSERT INTO cd_measure_item VALUES ('24', 'H角/°', '11.00', '4.1', '');
INSERT INTO cd_measure_item VALUES ('25', '鼻点-H线/mm', '1.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('26', '鼻唇沟-H线/mm', '8.00', '0.0', '');
INSERT INTO cd_measure_item VALUES ('27', '上唇突点-H线/mm', '0.00', '0.0', null);
INSERT INTO cd_measure_item VALUES ('28', '下唇突点-H线/mm', '2.00', '0.0', null);
INSERT INTO cd_measure_item VALUES ('29', '颏唇沟-H线/mm', '4.00', '0.0', null);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='患者表';

-- ----------------------------
-- Records of cd_patient
-- ----------------------------
INSERT INTO cd_patient VALUES ('4', '长鑫', '男', '1999-05-12 00:00:00', '18222222222', null, '河南信阳', '2021-08-11 11:34:44', null);
INSERT INTO cd_patient VALUES ('6', '戴文源', '男', '2021-08-30 00:00:00', '13888889999', '/uploads/tank/2021/10/15/fe9c08b8dd4043f8be3f49edeafc997a.jpeg', '安徽', '2021-08-30 10:23:59', null);
INSERT INTO cd_patient VALUES ('8', '测试患者1', '男', '2021-09-01 00:00:00', '13988882222', '/uploads/tank/2021/10/14/49ea4a3b999746e89984f8d307d02023.ico', '测试地址', '2021-09-13 10:10:28', null);
INSERT INTO cd_patient VALUES ('9', '小戴', '男', '1984-03-01 00:00:00', '13912341234', '/uploads/tank/2021/9/18/73dca0a42506474baf525bb2ae1f197d.jpg', '2333', '2021-09-18 11:49:03', null);
INSERT INTO cd_patient VALUES ('10', 'cc', '女', '1982-11-22 00:00:00', '13520922853', '/uploads/tank/2021/10/16/ad73f5f84bf84938b5acbe77d4c6bdc8.jpg', '北京', '2021-10-16 22:19:48', null);
INSERT INTO cd_patient VALUES ('12', '球球', '女', '2008-08-08 00:00:00', '13888888888', '/uploads/tank/2021/10/19/0d49c7b04099474caf819d017365bc36.jpg', '蚌埠', '2021-10-19 14:32:37', null);
INSERT INTO cd_patient VALUES ('14', '测试', '男', '2021-10-03 00:00:00', '13866556666', '/uploads/tank/2021/10/26/3ed22892ae3e4d878daeb125749f1b03.jpeg', '1', '2021-10-26 16:49:17', null);
INSERT INTO cd_patient VALUES ('15', '毛毛', '女', '2000-01-01 00:00:00', '13811112222', '/uploads/tank/2021/10/28/dcc5bef381a1409999cb996a680cf9d3.jpg', '安徽省合肥市蜀山区', '2021-10-28 17:17:12', null);
INSERT INTO cd_patient VALUES ('16', '俊俊', '男', '2021-11-04 00:00:00', '13822225555', '', '合肥市', '2021-11-04 09:24:49', null);
INSERT INTO cd_patient VALUES ('17', 'p1', '男', '2010-07-08 00:00:00', '13512345678', '/uploads/tank/2021/11/4/8dd619cf3f4b4a448be2f280964be40b.jpg', '合肥', '2021-11-04 15:11:54', '105');
INSERT INTO cd_patient VALUES ('18', '老吴', '男', '2021-11-01 00:00:00', '13844445555', '', '合肥', '2021-11-04 17:00:18', '109');
INSERT INTO cd_patient VALUES ('19', '125', '男', '2021-11-02 00:00:00', '13344445555', '', 'dd', '2021-11-05 10:14:02', '122');
INSERT INTO cd_patient VALUES ('20', '000', '男', '2021-11-02 00:00:00', '13855558888', '', '合肥', '2021-11-10 09:25:17', '105');
INSERT INTO cd_patient VALUES ('21', '1', '男', '2021-11-01 00:00:00', '13844446666', '', 'beng', '2021-11-12 17:38:07', '129');

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色表';

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
) ENGINE=InnoDB AUTO_INCREMENT=796 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色权限表';

-- ----------------------------
-- Records of cd_role_action_rel
-- ----------------------------
INSERT INTO cd_role_action_rel VALUES ('770', '44', '5');
INSERT INTO cd_role_action_rel VALUES ('771', '44', '4');
INSERT INTO cd_role_action_rel VALUES ('775', '2', '5');
INSERT INTO cd_role_action_rel VALUES ('776', '2', '6');
INSERT INTO cd_role_action_rel VALUES ('777', '2', '4');
INSERT INTO cd_role_action_rel VALUES ('778', '2', '1');
INSERT INTO cd_role_action_rel VALUES ('786', '4', '5');
INSERT INTO cd_role_action_rel VALUES ('787', '4', '6');
INSERT INTO cd_role_action_rel VALUES ('788', '4', '4');
INSERT INTO cd_role_action_rel VALUES ('789', '3', '1');
INSERT INTO cd_role_action_rel VALUES ('790', '3', '2');
INSERT INTO cd_role_action_rel VALUES ('791', '42', '6');
INSERT INTO cd_role_action_rel VALUES ('792', '42', '5');
INSERT INTO cd_role_action_rel VALUES ('793', '42', '4');
INSERT INTO cd_role_action_rel VALUES ('794', '50', '3');
INSERT INTO cd_role_action_rel VALUES ('795', '50', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='治疗记录表';

-- ----------------------------
-- Records of cd_treatment
-- ----------------------------
INSERT INTO cd_treatment VALUES ('9', '4', '/uploads/tank/2021/8/11/d8e1fe67903d447b89f05abe5ce3b715.jpg,/uploads/tank/2021/8/11/cf47da16a37545cbbd23b58fd2118739.png', '/uploads/tank/2021/8/11/c2745dce28a940168738dad09991d9e5.jpg,/uploads/tank/2021/8/11/dff1d5f8d4824edb9197ca9491902c70.mtl,/uploads/tank/2021/8/11/1d11a798cc9449c991b5b44b52726f53.obj', null, '34567', '2021-08-11 11:34:45');
INSERT INTO cd_treatment VALUES ('40', '4', null, '/uploads/tank/2021/8/23/aba214d379b84af983dc84318fc695ce.mtl,/uploads/tank/2021/8/23/28dc8aa6f5d140aa9dadfa500c75961e.jpg,/uploads/tank/2021/8/23/7ccb68e73e674df5bdaece5b6eeb7ede.obj', '[{\"id\":1629711360541,\"type\":2,\"positionList\":[{\"x\":-7.311258728159339,\"y\":18.368542279588915,\"z\":26.909439949537123},{\"x\":-14.54127119103805,\"y\":-2.7140716205614304,\"z\":25.99663018144984},{\"x\":-1.8114774918480623,\"y\":-4.6104099444454505,\"z\":32.58419525466201}],\"label\":\"80°\",\"labelPosition\":{\"x\":-11.214636830693266,\"y\":0.4836409754829572,\"z\":27.246692654999748}},{\"id\":1629711365932,\"type\":1,\"positionList\":[{\"x\":-4.446932909854404,\"y\":-17.747868399652138,\"z\":28.165861267588173},{\"x\":6.434105467664295,\"y\":15.229050455749501,\"z\":24.74001578347816}],\"label\":\"34.8943\",\"labelPosition\":{\"x\":0.9935862789049454,\"y\":-1.2594089719513182,\"z\":26.452938525533167}},{\"id\":1629711373429,\"type\":2,\"positionList\":[{\"x\":-3.2933145222089957,\"y\":17.77487862062127,\"z\":28.075813361392637},{\"x\":-3.2029069420777865,\"y\":5.537416445007386,\"z\":27.15348567027642},{\"x\":0.37740400891407794,\"y\":22.819698866280884,\"z\":28.649220213361666}],\"label\":\"12°\",\"labelPosition\":{\"x\":-2.6212563802676767,\"y\":10.457373877821947,\"z\":27.55649604264333}},{\"id\":1629711375997,\"type\":1,\"positionList\":[{\"x\":-7.844149638239316,\"y\":25.219841109866785,\"z\":28.104609865648673},{\"x\":12.866862502153872,\"y\":30.158137872617242,\"z\":17.278476481041963}],\"label\":\"23.8859\",\"labelPosition\":{\"x\":2.5113564319572776,\"y\":27.688989491242012,\"z\":22.691543173345316}},{\"id\":1629711377109,\"type\":1,\"positionList\":[{\"x\":14.510959224824653,\"y\":16.529652644616235,\"z\":17.7913138648769},{\"x\":8.638346495012568,\"y\":1.8344677833439698,\"z\":25.18756515077656}],\"label\":\"17.4683\",\"labelPosition\":{\"x\":11.574652859918611,\"y\":9.182060213980103,\"z\":21.48943950782673}}]', '', '2021-08-23 17:36:30');
INSERT INTO cd_treatment VALUES ('41', '6', '/uploads/tank/2021/8/30/89ba2d36bb644155a817da3c2d421144.jpg', '/uploads/tank/2021/8/30/975b37401f29439fbbc18c206e5a8576.jpeg,/uploads/tank/2021/8/30/479e0ef2ac5845e0851602efa4631ec2.jpg', null, '备注', '2021-08-30 10:23:59');
INSERT INTO cd_treatment VALUES ('44', '6', null, '/uploads/tank/2021/9/7/84739714f6f14a65ace3a8b8508be6ef.mtl,/uploads/tank/2021/9/7/89ef085ac9224433b0b41b980a8db531.jpg,/uploads/tank/2021/9/7/aa38ad5caa1849a9ba98a604f8a39eea.obj', '[{\"id\":1631001798479,\"type\":2,\"positionList\":[{\"x\":-15.609017429695994,\"y\":82.65362541677248,\"z\":85.84697274314192},{\"x\":22.21249072884042,\"y\":79.7788770526274,\"z\":82.59460951782421},{\"x\":61.55421217839223,\"y\":50.74265884829967,\"z\":56.28213809952831}],\"label\":\"142°\",\"labelPosition\":{\"x\":22.46585961067632,\"y\":75.41863207926362,\"z\":78.75125815232784}},{\"id\":1631001801783,\"type\":1,\"positionList\":[{\"x\":-35.54273967081045,\"y\":43.2430620052518,\"z\":88.93681636842695},{\"x\":44.56050346813847,\"y\":45.88430615214901,\"z\":82.13156513671231}],\"label\":\"80.4352mm\",\"labelPosition\":{\"x\":4.508881898664011,\"y\":44.563684078700405,\"z\":85.53419075256963}},{\"id\":1631001808334,\"type\":2,\"positionList\":[{\"x\":0.8303171649643151,\"y\":-14.65415184632077,\"z\":111.48235851097235},{\"x\":59.361879049678805,\"y\":-22.089828048435518,\"z\":64.54000955693573},{\"x\":56.797749809093,\"y\":-62.6416164259227,\"z\":35.049912461824874}],\"label\":\"114°\",\"labelPosition\":{\"x\":49.17926386212876,\"y\":-27.609180077664256,\"z\":67.44871820009001}},{\"id\":1631001813223,\"type\":1,\"positionList\":[{\"x\":-31.40401936065389,\"y\":-45.619504835447536,\"z\":85.71450988109746},{\"x\":29.083607420656612,\"y\":-43.73678953531072,\"z\":81.68956155333103}],\"label\":\"60.6506mm\",\"labelPosition\":{\"x\":-1.1602059699986391,\"y\":-44.67814718537913,\"z\":83.70203571721424}}]', '', '2021-09-07 16:03:36');
INSERT INTO cd_treatment VALUES ('45', '6', null, '/uploads/tank/2021/9/7/1f32df7dc4224335a8fe1661c6db4610.mtl,/uploads/tank/2021/9/7/545ab700c5ed45398c2d02f9fb5d67e7.jpg,/uploads/tank/2021/9/7/494fb48dff14473ea63a53ccced55c17.obj', '[{\"id\":1631005034291,\"type\":2,\"positionList\":[{\"x\":-32.28394826756356,\"y\":-43.045264356751424,\"z\":86.34350344028269},{\"x\":1.2246620448201258,\"y\":-13.716214901985442,\"z\":111.74882584743636},{\"x\":43.528690026046554,\"y\":-45.4450474485769,\"z\":69.98350515651083}],\"label\":\"80°\",\"labelPosition\":{\"x\":2.69056498962725,\"y\":-23.892528568878348,\"z\":100.55371866442317}},{\"id\":1631005079452,\"type\":2,\"positionList\":[{\"x\":-5.738101486355575,\"y\":-68.2471746794869,\"z\":90.82354449503543},{\"x\":27.629036995387164,\"y\":-68.72739688417627,\"z\":76.1649560537345},{\"x\":-0.21100273637474487,\"y\":-49.927367006087714,\"z\":96.07861703931434}],\"label\":\"30°\",\"labelPosition\":{\"x\":17.42784062646972,\"y\":-65.5140215370466,\"z\":81.9269976248813}},{\"id\":1631005082243,\"type\":1,\"positionList\":[{\"x\":-45.921243286048295,\"y\":27.641057585233355,\"z\":83.18315784259721},{\"x\":16.9157300403351,\"y\":58.22436041078858,\"z\":91.73975198363524}],\"label\":\"70.4mm\",\"labelPosition\":{\"x\":-14.502756622856598,\"y\":42.932708998010966,\"z\":87.46145491311623}},{\"id\":1631005085069,\"type\":1,\"positionList\":[{\"x\":0.5962316545707225,\"y\":73.84847089461832,\"z\":88.70948626128012},{\"x\":44.32398711114726,\"y\":58.73071307707447,\"z\":77.58636607828203}],\"label\":\"47.6mm\",\"labelPosition\":{\"x\":22.46010938285899,\"y\":66.28959198584639,\"z\":83.14792616978107}},{\"id\":1631005093876,\"type\":1,\"positionList\":[{\"x\":53.136278204449376,\"y\":-7.9281044883326075,\"z\":75.77114893435532},{\"x\":55.46121628083946,\"y\":-46.81334436607771,\"z\":56.35820434398704}],\"label\":\"43.5mm\",\"labelPosition\":{\"x\":54.29874724264442,\"y\":-27.370724427205158,\"z\":66.06467663917118}}]', '', '2021-09-07 17:25:51');
INSERT INTO cd_treatment VALUES ('46', '6', null, '/uploads/tank/2021/9/7/00db9aa01656412d83c3c71d8fc96624.mtl,/uploads/tank/2021/9/7/157158555ec243a2a16149480a0d9bfd.jpg,/uploads/tank/2021/9/7/96657be3149340fb8995faf5963d608f.obj', '[{\"id\":1631007074949,\"type\":1,\"positionList\":[{\"x\":16.06584152428753,\"y\":23.034104801377204,\"z\":86.0095378816481},{\"x\":50.44556046947319,\"y\":23.93535472285829,\"z\":75.67377086924283}],\"label\":\"35.9mm\",\"labelPosition\":{\"x\":33.255700996880364,\"y\":23.484729762117745,\"z\":80.84165437544547}},{\"id\":1631007123828,\"type\":1,\"positionList\":[{\"x\":-49.05084182703891,\"y\":22.3052041599811,\"z\":78.04533424960682},{\"x\":-14.005184979900136,\"y\":21.352414183382532,\"z\":86.1399246571427}],\"label\":\"36.0mm\",\"labelPosition\":{\"x\":-31.528013403469522,\"y\":21.828809171681815,\"z\":82.09262945337477}},{\"id\":1631007570355,\"type\":1,\"positionList\":[{\"x\":57.82405457833257,\"y\":-33.33213026106582,\"z\":66.75142734776082},{\"x\":37.40733886699153,\"y\":-20.253563171944215,\"z\":85.18975972382381}],\"label\":\"30.5mm\",\"labelPosition\":{\"x\":47.61569672266205,\"y\":-26.792846716505018,\"z\":75.97059353579232}},{\"id\":1631007595916,\"type\":2,\"positionList\":[{\"x\":-17.21658782797614,\"y\":-21.97573021258598,\"z\":91.83415621968012},{\"x\":-2.8010558000107615,\"y\":-14.339918933639026,\"z\":112.17969073472781},{\"x\":18.41495428000048,\"y\":-19.435321761057423,\"z\":90.77340826398228}],\"label\":\"78°\",\"labelPosition\":{\"x\":-1.6676427913364513,\"y\":-16.46178795136658,\"z\":105.22105457042895}},{\"id\":1631007611963,\"type\":2,\"positionList\":[{\"x\":-25.51298384452977,\"y\":-46.78827932976346,\"z\":85.08490430654058},{\"x\":-0.6883334225721782,\"y\":-38.473377172386186,\"z\":101.50193001266013},{\"x\":31.189581148297364,\"y\":-44.993788743196134,\"z\":82.1260448389867}],\"label\":\"111°\",\"labelPosition\":{\"x\":0.48721060224648005,\"y\":-40.94592946041739,\"z\":95.53644486602795}},{\"id\":1631007619460,\"type\":2,\"positionList\":[{\"x\":23.666538377259023,\"y\":-59.71900191213548,\"z\":83.29391289945923},{\"x\":55.83433773956591,\"y\":-48.288750809739675,\"z\":62.529382265689264},{\"x\":63.22165818196653,\"y\":-44.999927935802845,\"z\":55.046058315636145}],\"label\":\"168°\",\"labelPosition\":{\"x\":51.70425791958153,\"y\":-49.64565551448283,\"z\":64.7429167129754}},{\"id\":1631007622715,\"type\":2,\"positionList\":[{\"x\":65.685297116596,\"y\":0.34646712285174885,\"z\":66.86602177400738},{\"x\":58.27084391841865,\"y\":9.352487754421915,\"z\":73.59332347955694},{\"x\":61.596798931484784,\"y\":-9.173667304742835,\"z\":71.99416377084292}],\"label\":\"37°\",\"labelPosition\":{\"x\":60.0609119536259,\"y\":4.763791805966095,\"z\":72.20557991051301}}]', '算法撒撒发射点发射点发射点发阿斯顿发射点阿迪斯发士大夫啊大苏打撒旦发射点发的案发当时发生阿斯蒂芬啊大大十分爱的色放阿斯蒂芬阿迪斯发的说法安抚啊手动阀阿三发射点发啊手动阀手动阀 ', '2021-09-07 17:40:27');
INSERT INTO cd_treatment VALUES ('47', '6', null, '/uploads/tank/2021/9/7/00db9aa01656412d83c3c71d8fc96624.mtl,/uploads/tank/2021/9/7/157158555ec243a2a16149480a0d9bfd.jpg,/uploads/tank/2021/9/7/96657be3149340fb8995faf5963d608f.obj', '[{\"id\":1631007074949,\"type\":1,\"positionList\":[{\"x\":16.06584152428753,\"y\":23.034104801377204,\"z\":86.0095378816481},{\"x\":50.44556046947319,\"y\":23.93535472285829,\"z\":75.67377086924283}],\"label\":\"35.9mm\",\"labelPosition\":{\"x\":33.255700996880364,\"y\":23.484729762117745,\"z\":80.84165437544547}},{\"id\":1631007123828,\"type\":1,\"positionList\":[{\"x\":-49.05084182703891,\"y\":22.3052041599811,\"z\":78.04533424960682},{\"x\":-14.005184979900136,\"y\":21.352414183382532,\"z\":86.1399246571427}],\"label\":\"36.0mm\",\"labelPosition\":{\"x\":-31.528013403469522,\"y\":21.828809171681815,\"z\":82.09262945337477}},{\"id\":1631007570355,\"type\":1,\"positionList\":[{\"x\":57.82405457833257,\"y\":-33.33213026106582,\"z\":66.75142734776082},{\"x\":37.40733886699153,\"y\":-20.253563171944215,\"z\":85.18975972382381}],\"label\":\"30.5mm\",\"labelPosition\":{\"x\":47.61569672266205,\"y\":-26.792846716505018,\"z\":75.97059353579232}},{\"id\":1631007595916,\"type\":2,\"positionList\":[{\"x\":-17.21658782797614,\"y\":-21.97573021258598,\"z\":91.83415621968012},{\"x\":-2.8010558000107615,\"y\":-14.339918933639026,\"z\":112.17969073472781},{\"x\":18.41495428000048,\"y\":-19.435321761057423,\"z\":90.77340826398228}],\"label\":\"78°\",\"labelPosition\":{\"x\":-1.6676427913364513,\"y\":-16.46178795136658,\"z\":105.22105457042895}},{\"id\":1631007611963,\"type\":2,\"positionList\":[{\"x\":-25.51298384452977,\"y\":-46.78827932976346,\"z\":85.08490430654058},{\"x\":-0.6883334225721782,\"y\":-38.473377172386186,\"z\":101.50193001266013},{\"x\":31.189581148297364,\"y\":-44.993788743196134,\"z\":82.1260448389867}],\"label\":\"111°\",\"labelPosition\":{\"x\":0.48721060224648005,\"y\":-40.94592946041739,\"z\":95.53644486602795}},{\"id\":1631007619460,\"type\":2,\"positionList\":[{\"x\":23.666538377259023,\"y\":-59.71900191213548,\"z\":83.29391289945923},{\"x\":55.83433773956591,\"y\":-48.288750809739675,\"z\":62.529382265689264},{\"x\":63.22165818196653,\"y\":-44.999927935802845,\"z\":55.046058315636145}],\"label\":\"168°\",\"labelPosition\":{\"x\":51.70425791958153,\"y\":-49.64565551448283,\"z\":64.7429167129754}},{\"id\":1631007622715,\"type\":2,\"positionList\":[{\"x\":65.685297116596,\"y\":0.34646712285174885,\"z\":66.86602177400738},{\"x\":58.27084391841865,\"y\":9.352487754421915,\"z\":73.59332347955694},{\"x\":61.596798931484784,\"y\":-9.173667304742835,\"z\":71.99416377084292}],\"label\":\"37°\",\"labelPosition\":{\"x\":60.0609119536259,\"y\":4.763791805966095,\"z\":72.20557991051301}}]', '测试备注~~~~~~~', '2021-09-07 17:40:36');
INSERT INTO cd_treatment VALUES ('49', '8', '/uploads/tank/2021/9/13/1f4d0f457da547bca30f2e3d2015d255.jpg', '/uploads/tank/2021/9/13/f694b46a21e040eaaedd363e3680ae4b.jpg', null, '测试一个备注', '2021-09-13 10:10:28');
INSERT INTO cd_treatment VALUES ('50', '8', null, '/uploads/tank/2021/9/13/593c93df62e247afb28d26cf96ae598c.mtl,/uploads/tank/2021/9/13/61177277cbb446baa25a43f91740b298.jpg,/uploads/tank/2021/9/13/6bdbfef8592341a3999336c214421545.obj', '[{\"id\":1631500738765,\"type\":2,\"positionList\":[{\"x\":-0.3054456427040293,\"y\":-24.263508043068864,\"z\":111.46507289549744},{\"x\":-0.09606797214358664,\"y\":-37.720524897641205,\"z\":96.7038217504219},{\"x\":0.42373337765176444,\"y\":-52.36039314152757,\"z\":101.22099262085442}],\"label\":\"115°\",\"labelPosition\":{\"x\":-0.0443306922711019,\"y\":-37.917666795860214,\"z\":99.91689208633991}},{\"id\":1631500831966,\"type\":2,\"positionList\":[{\"x\":19.41661216751526,\"y\":-10.376640652426763,\"z\":90.78648332363414},{\"x\":2.907612463147018,\"y\":-5.499663351208351,\"z\":101.5315075355229},{\"x\":-16.87526354759831,\"y\":-10.198676557012613,\"z\":92.2394884279189}],\"label\":\"117°\",\"labelPosition\":{\"x\":2.3619664120841706,\"y\":-7.0956617690454635,\"z\":98.19200031560743}},{\"id\":1631500932610,\"type\":1,\"positionList\":[{\"x\":19.375515740820088,\"y\":-2.247139721241343,\"z\":87.39547971168429},{\"x\":51.70596135960096,\"y\":-1.6067439777320267,\"z\":78.74413594391586}],\"label\":\"33.5mm\",\"labelPosition\":{\"x\":35.54073855021053,\"y\":-1.9269418494866848,\"z\":83.06980782780008}}]', '测试', '2021-09-13 10:42:57');
INSERT INTO cd_treatment VALUES ('51', '8', null, '/uploads/tank/2021/9/13/642459c96c1e4f3cb26cf635017c7557.jpg,/uploads/tank/2021/9/13/b6d5393f09bc4b8090a8c0fd64fce7b2.mtl,/uploads/tank/2021/9/13/24714fd26d524417b637a5c7de28290e.obj', '[{\"id\":1631501258097,\"type\":2,\"positionList\":[{\"x\":-75.97817058225269,\"y\":-35.36908754901284,\"z\":50.047668584524615},{\"x\":-68.21477948200223,\"y\":-24.39353711511506,\"z\":73.26237600786536},{\"x\":-53.08529597942618,\"y\":-39.24819045358565,\"z\":82.82163088095774}],\"label\":\"106°\",\"labelPosition\":{\"x\":-66.98709741494795,\"y\":-28.698571077176457,\"z\":70.98646724949063}}]', '测试', '2021-09-13 10:47:53');
INSERT INTO cd_treatment VALUES ('52', '8', null, '/uploads/tank/2021/9/13/642459c96c1e4f3cb26cf635017c7557.jpg,/uploads/tank/2021/9/13/b6d5393f09bc4b8090a8c0fd64fce7b2.mtl,/uploads/tank/2021/9/13/24714fd26d524417b637a5c7de28290e.obj', '[{\"id\":1631501258097,\"type\":2,\"positionList\":[{\"x\":-75.97817058225269,\"y\":-35.36908754901284,\"z\":50.047668584524615},{\"x\":-68.21477948200223,\"y\":-24.39353711511506,\"z\":73.26237600786536},{\"x\":-53.08529597942618,\"y\":-39.24819045358565,\"z\":82.82163088095774}],\"label\":\"106°\",\"labelPosition\":{\"x\":-66.98709741494795,\"y\":-28.698571077176457,\"z\":70.98646724949063}}]', '测试', '2021-09-13 10:48:27');
INSERT INTO cd_treatment VALUES ('53', '8', null, '', '[]', '', '2021-09-13 16:52:02');
INSERT INTO cd_treatment VALUES ('54', '8', null, '', '[]', '', '2021-09-13 16:53:29');
INSERT INTO cd_treatment VALUES ('55', '9', '/uploads/tank/2021/9/18/adc6f2724d3645398bb93ac831a3567b.jpg', '/uploads/tank/2021/9/18/cae2911021f24b30a8e2a69671722b14.docx', null, '无', '2021-09-18 11:49:03');
INSERT INTO cd_treatment VALUES ('56', '9', null, '/uploads/tank/2021/9/18/0d1c79f535cf45399f39f9a2c7069341.mtl,/uploads/tank/2021/9/18/6f7b32aa3ef54ffbb611a3dd8faaa3b2.obj,/uploads/tank/2021/9/18/2becf3f9e0514bcb923a5163d862fffd.jpg', '[{\"id\":1,\"type\":2,\"positionList\":[{\"x\":3.4739812711064673,\"y\":-37.10020495429182,\"z\":101.68249517988482},{\"x\":3.011345412504724,\"y\":-22.01828036000426,\"z\":101.63521072378296},{\"x\":3.2469713211655886,\"y\":-11.713625316804553,\"z\":112.25340610341544}],\"label\":\"134°\",\"labelPosition\":{\"x\":3.1277223737151587,\"y\":-22.814491951852233,\"z\":103.41279069640535}},{\"id\":2,\"type\":2,\"positionList\":[{\"x\":4.917877728228575,\"y\":50.169916452343536,\"z\":94.7591623920801},{\"x\":2.9283849514860414,\"y\":-19.085475601891588,\"z\":106.69347125886878},{\"x\":4.9142931029225885,\"y\":-77.9195495403115,\"z\":90.83255479213153}],\"label\":\"155°\",\"labelPosition\":{\"x\":3.5909517728492215,\"y\":-17.348589249255717,\"z\":102.06093370328111}}]', '整挺好', '2021-09-18 11:50:23');
INSERT INTO cd_treatment VALUES ('57', '9', null, '', '[]', '', '2021-09-18 15:01:22');
INSERT INTO cd_treatment VALUES ('58', '9', null, '', '[]', '', '2021-09-18 15:01:46');
INSERT INTO cd_treatment VALUES ('59', '9', null, '/uploads/tank/2021/10/8/50e73901d0044a7585cafbc06d86e101.mtl,/uploads/tank/2021/10/8/79d6d009bb094ebbba064bace6940901.jpg,/uploads/tank/2021/10/8/28526c3fa3e74c07a4c6a7d6a8d357d4.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":5.396648477180642,\"y\":70.94028887032886,\"z\":89.24434978114758}]},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":5.347374250396564,\"y\":32.6879985231161,\"z\":91.90561356963983}]},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":2.0374269822081974,\"y\":-38.23544243415428,\"z\":101.67018860028834},{\"x\":1.4132112995399417,\"y\":-22.812180391458476,\"z\":101.45673744570618},{\"x\":0.4258601213293911,\"y\":-10.59727947195455,\"z\":112.34886811776056}],\"label\":\"138°\",\"labelPosition\":{\"x\":1.3526887169495592,\"y\":-23.34690724532379,\"z\":103.30766775014561}},{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-46.83559348920784,\"y\":23.607535000929357,\"z\":80.23996407544269},{\"x\":1.6413494494497414,\"y\":-23.020793472213292,\"z\":101.29059738401382},{\"x\":5.803993875373578,\"y\":71.6262150015948,\"z\":89.01837024368737}],\"label\":\"46.8mm\",\"labelPosition\":{\"x\":2.660750759243813,\"y\":0.1575697349389742,\"z\":98.28521831703702}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":-2.913345576724981,\"y\":-93.43782821151297,\"z\":64.49742793829336},{\"x\":1.390980687692572,\"y\":-47.17680820343849,\"z\":96.71375491553397},{\"x\":2.563501474473215,\"y\":-20.13345098304842,\"z\":105.02675371696506},{\"x\":0.9289793021028139,\"y\":-72.70593470534564,\"z\":91.73436149026932}],\"label\":\"52.9mm\",\"labelPosition\":{\"x\":0.9153235865673739,\"y\":-73.14515473847746,\"z\":91.62330938580627}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":1.683808372373207,\"y\":-41.60329428378672,\"z\":99.88476501956465},{\"x\":2.2024923951228885,\"y\":-23.412004891764454,\"z\":100.9200916071097},{\"x\":0.9849530014431167,\"y\":-72.7046474562693,\"z\":91.72621795443968}],\"label\":\"18.1mm\",\"labelPosition\":{\"x\":1.9830526344608679,\"y\":-32.29612457027599,\"z\":99.26305985571702}},{\"id\":12,\"type\":2,\"positionList\":[{\"x\":1.6155144187727464,\"y\":-38.72117691599816,\"z\":101.60643487530746},{\"x\":0.7504929981661164,\"y\":-73.31982851321045,\"z\":91.79643256241317}]},{\"id\":25,\"type\":6,\"positionList\":[{\"x\":-0.17810181376717082,\"y\":-10.261802895766678,\"z\":112.1638974088215},{\"x\":1.5332196798043292,\"y\":-38.649993346972494,\"z\":101.62287459771633},{\"x\":0.706977555013685,\"y\":-73.75229403923551,\"z\":91.82830899150187}],\"label\":\"3.5mm\",\"labelPosition\":{\"x\":1.0190279068765475,\"y\":-9.948835073140177,\"z\":110.9412796734035}}]', '233', '2021-10-08 16:35:26');
INSERT INTO cd_treatment VALUES ('62', '9', null, '/uploads/tank/2021/10/8/783c41f918f04a62aef65ecf6a9c4986.mtl,/uploads/tank/2021/10/8/43426fc6c0ae4c4391591435c5898e3f.jpg,/uploads/tank/2021/10/8/3f35fa2ebebc4198bef6ba2ad1ccfcc0.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":4.714582101535674,\"y\":69.86153477730156,\"z\":89.58159862412231}]},{\"id\":12,\"type\":2,\"positionList\":[{\"x\":1.8538794913389136,\"y\":-42.69508770373434,\"z\":99.03626831166943},{\"x\":1.4758930051262833,\"y\":-22.0731050255709,\"z\":101.88509340562189}]},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":1.7895460093633775,\"y\":-42.7794367121379,\"z\":98.9796084631214},{\"x\":1.3200043078561166,\"y\":-21.79831718143557,\"z\":102.0773264622421},{\"x\":3.448695153983229,\"y\":-11.63458163570214,\"z\":112.21812997374911}],\"label\":\"142°\",\"labelPosition\":{\"x\":1.7530430657951785,\"y\":-23.601214512263716,\"z\":103.25117404763981}},{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-47.94507868648008,\"y\":24.519891477881224,\"z\":79.60554107292296},{\"x\":2.065827973477596,\"y\":-22.207967656421943,\"z\":101.69628038663916},{\"x\":4.8276536942681645,\"y\":69.83159359187958,\"z\":89.58325493653163}],\"label\":\"47.7mm\",\"labelPosition\":{\"x\":2.775088890336281,\"y\":1.428593878516299,\"z\":98.58554987529588}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":0.4522081673172096,\"y\":-93.59489288972091,\"z\":62.29811060460639},{\"x\":2.0649069613645707,\"y\":-49.07199789817986,\"z\":96.24091919697938},{\"x\":1.8795003639282832,\"y\":-22.249868616460773,\"z\":101.70562454566038},{\"x\":2.087964023798687,\"y\":-76.85232857097066,\"z\":91.4952694438243}],\"label\":\"50.0mm\",\"labelPosition\":{\"x\":2.0760274163041634,\"y\":-73.72579738986397,\"z\":92.07991331559597}},{\"id\":25,\"type\":6,\"positionList\":[{\"x\":1.7341732238960725,\"y\":-11.72222801366732,\"z\":112.27365230454124},{\"x\":1.4901121159824324,\"y\":-22.14370985625535,\"z\":101.84045400931662},{\"x\":1.9395075087723308,\"y\":-42.8526442528587,\"z\":98.90681021866779}],\"label\":\"8.9mm\",\"labelPosition\":{\"x\":1.4856849954331546,\"y\":-11.105575669899203,\"z\":107.88256622970792}}]', '233', '2021-10-08 16:51:23');
INSERT INTO cd_treatment VALUES ('63', '9', null, '/uploads/tank/2021/10/9/ba3b3f082d6c43d797927c690765cf9a.mtl,/uploads/tank/2021/10/9/d29f9ebdc6eb425ca2188c3201d6a08a.jpg,/uploads/tank/2021/10/9/106684d98e024a0cbf154d89a5929a22.obj', '[{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-22.301167534802968,\"y\":-1.7154744257540806,\"z\":89.3858781580252},{\"x\":-25.064947827623776,\"y\":71.73760929975082,\"z\":87.00618800539797},{\"x\":-8.348105595564691,\"y\":3.3392422382258746,\"z\":97.68835376597667}],\"label\":\"71.6mm\",\"labelPosition\":{\"x\":-16.667313178768943,\"y\":37.377980298801425,\"z\":92.37232857612207}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":-23.93681505256172,\"y\":93.9092816245525,\"z\":77.97319126302602},{\"x\":25.988251461826817,\"y\":4.3685629083343684,\"z\":86.25303695354529},{\"x\":-39.726683907872605,\"y\":-14.144757245093366,\"z\":88.30575667747252}],\"label\":\"23.5mm\",\"labelPosition\":{\"x\":14.676623570019197,\"y\":1.181832411844569,\"z\":86.60637522516666}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":-34.08308518647424,\"y\":-30.62989862402853,\"z\":87.7341074765788},{\"x\":-27.13780790433371,\"y\":69.95291018473537,\"z\":87.03826999254244},{\"x\":-3.483278155841826,\"y\":-31.35380607612445,\"z\":101.44322292904747},{\"x\":8.49887702089324,\"y\":9.547942465278357,\"z\":99.86864988084636}],\"label\":\"98.4mm\",\"labelPosition\":{\"x\":8.26636834667572,\"y\":8.754261263001428,\"z\":99.89920380762297}}]', '123', '2021-10-09 15:26:55');
INSERT INTO cd_treatment VALUES ('65', '6', null, '/uploads/tank/2021/10/15/167a5a38c2434b36aa9b0e5365d8cbaf.mtl,/uploads/tank/2021/10/15/0e20e556dc32491fbe95abd12c5d7090.jpg,/uploads/tank/2021/10/15/296b30114dbe4609a7da90d33004599e.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":-14.800020894506147,\"y\":60.739249713377035,\"z\":93.47269440812244}]},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":-10.787276802008464,\"y\":24.011575933123442,\"z\":90.79831770197205}]},{\"id\":3,\"type\":1,\"positionList\":[{\"x\":-60.01193836355653,\"y\":12.508159576715176,\"z\":79.21707521908206}]},{\"id\":5,\"type\":1,\"positionList\":[{\"x\":-7.48093755545365,\"y\":-39.82033448944476,\"z\":97.52620627797518}]},{\"id\":6,\"type\":1,\"positionList\":[{\"x\":-2.9369195957397807,\"y\":-61.93159303381739,\"z\":94.5778197867117}]},{\"id\":7,\"type\":1,\"positionList\":[{\"x\":-7.115678774151647,\"y\":-45.466927978171285,\"z\":98.02070412227039}]},{\"id\":9,\"type\":1,\"positionList\":[{\"x\":-5.302646973867571,\"y\":-72.02994940871915,\"z\":89.86801203923076}]},{\"id\":12,\"type\":2,\"positionList\":[{\"x\":-7.0612341534576135,\"y\":-45.458917657027044,\"z\":98.01764619591872},{\"x\":-5.162588480577059,\"y\":-71.9989617130757,\"z\":89.87569860478578}]},{\"id\":8,\"type\":1,\"positionList\":[{\"x\":-5.0048012856191715,\"y\":-58.178129689881814,\"z\":95.59325243074002}]},{\"id\":10,\"type\":1,\"positionList\":[{\"x\":-5.37845416473483,\"y\":-89.9890779399509,\"z\":87.80517702939841}]},{\"id\":11,\"type\":1,\"positionList\":[{\"x\":-6.1740547539737065,\"y\":-98.97087196663165,\"z\":42.40298307152531}]},{\"id\":13,\"type\":2,\"positionList\":[{\"x\":-5.140574864949931,\"y\":-71.83666685947142,\"z\":89.87104196343998},{\"x\":-10.04958104888767,\"y\":-18.214729679489828,\"z\":110.54630449671882}]},{\"id\":15,\"type\":3,\"positionList\":[{\"x\":-12.77762063872106,\"y\":60.30842595368476,\"z\":94.05865807944477},{\"x\":-8.723421647187592,\"y\":-16.462966594812592,\"z\":109.88113415788618},{\"x\":-3.866094648943516,\"y\":-72.14471694617788,\"z\":89.91087593492855}],\"label\":\"149°\",\"labelPosition\":{\"x\":-8.589566979402491,\"y\":-12.948026228623917,\"z\":103.91567844098634}},{\"id\":4,\"type\":1,\"positionList\":[{\"x\":-8.278656825412789,\"y\":-31.83975186189975,\"z\":99.48084774103054}]},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":-7.2314260031414985,\"y\":-28.287669288015625,\"z\":105.65688921131085},{\"x\":-8.113125881415815,\"y\":-31.72332929910164,\"z\":99.60440667862464},{\"x\":-7.028952688478622,\"y\":-45.90281590902352,\"z\":98.02812165350268}],\"label\":\"125°\",\"labelPosition\":{\"x\":-7.78548036954723,\"y\":-33.51396706557428,\"z\":100.35043959655201}},{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-61.860615804696984,\"y\":11.783378313948182,\"z\":76.60290888071805},{\"x\":-7.797748341311809,\"y\":-32.22744240596225,\"z\":99.21113467819143},{\"x\":-14.534946738498249,\"y\":60.92386912891605,\"z\":93.74691719124081}],\"label\":\"49.0mm\",\"labelPosition\":{\"x\":-9.563344271408496,\"y\":-7.815577587221885,\"z\":97.77914476378544}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":-6.79666828260261,\"y\":-45.66861139581069,\"z\":98.00015374023383},{\"x\":-7.855598116129812,\"y\":-31.736830192498168,\"z\":99.57353816069926},{\"x\":-5.491426387241219,\"y\":-72.50676580838096,\"z\":89.88813803883724}],\"label\":\"14.0mm\",\"labelPosition\":{\"x\":-7.462545497567999,\"y\":-38.51498837644387,\"z\":97.9633032385913}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":-5.181967642266457,\"y\":-89.7900129272476,\"z\":87.89347639685201},{\"x\":-4.696448318749095,\"y\":-57.23330937192068,\"z\":95.49123659232839},{\"x\":-7.831415961417229,\"y\":-31.60757807965871,\"z\":99.72830551816153},{\"x\":-5.012553364135455,\"y\":-71.35121359697195,\"z\":89.88755222889722}],\"label\":\"33.3mm\",\"labelPosition\":{\"x\":-4.898231667356965,\"y\":-72.96305514358242,\"z\":89.4884509691579}},{\"id\":22,\"type\":6,\"positionList\":[{\"x\":-7.327094662836865,\"y\":-45.80373788090155,\"z\":98.03890380043177},{\"x\":-7.478671812767034,\"y\":-31.642632059717428,\"z\":99.66601803364622},{\"x\":-5.120147969441215,\"y\":-71.74165162750458,\"z\":89.87356668584809}],\"label\":\"1.9mm\",\"labelPosition\":{\"x\":-6.999901732796542,\"y\":-45.57457352014144,\"z\":97.1793055690467}},{\"id\":23,\"type\":6,\"positionList\":[{\"x\":-6.9015832403281845,\"y\":-44.38340534893237,\"z\":97.95211033097169},{\"x\":-8.454242692965641,\"y\":-31.524200713593117,\"z\":99.8642363477374},{\"x\":-5.0249459202267435,\"y\":-72.51160069935074,\"z\":89.9034852304076}],\"label\":\"1.3mm\",\"labelPosition\":{\"x\":-7.149968351397031,\"y\":-44.263865574578645,\"z\":97.37470299113545}},{\"id\":24,\"type\":3,\"positionList\":[{\"x\":-7.74520699409527,\"y\":-44.7642399802912,\"z\":97.95988014762281},{\"x\":-6.051981132304576,\"y\":-72.1552779022485,\"z\":89.82064025771291},{\"x\":-8.440190197055017,\"y\":-31.99768503460716,\"z\":99.40912532954022}],\"label\":\"3°\",\"labelPosition\":{\"x\":-6.732220286728098,\"y\":-60.89717277064873,\"z\":92.7752610846691}},{\"id\":25,\"type\":6,\"positionList\":[{\"x\":-8.110822739997161,\"y\":-32.055225864731014,\"z\":99.35595674706776},{\"x\":-4.924933149002527,\"y\":-72.0381045674502,\"z\":89.89215851670065},{\"x\":-7.327603353606065,\"y\":-44.85105416037596,\"z\":97.98388703180295}],\"label\":\"2.4mm\",\"labelPosition\":{\"x\":-8.254168750976739,\"y\":-32.39992985200177,\"z\":100.4715492278427}},{\"id\":26,\"type\":6,\"positionList\":[{\"x\":11.24804407448788,\"y\":-30.88863386356772,\"z\":90.46079773658512},{\"x\":-4.534019594472227,\"y\":-72.08194725968114,\"z\":89.91846773145706},{\"x\":-7.327603353606065,\"y\":-44.85105416037596,\"z\":97.98388703180295}],\"label\":\"22.6mm\",\"labelPosition\":{\"x\":1.5011736350169471,\"y\":-33.39521450901336,\"z\":95.54766664085528}},{\"id\":27,\"type\":6,\"positionList\":[{\"x\":-7.321879847678389,\"y\":-46.71048542330216,\"z\":98.00664399223282},{\"x\":-4.534019594472227,\"y\":-72.08194725968114,\"z\":89.91846773145706},{\"x\":-7.74520699409527,\"y\":-44.7642399802912,\"z\":97.95988014762281}],\"label\":\"0.6mm\",\"labelPosition\":{\"x\":-7.427674123626905,\"y\":-46.63799729969054,\"z\":97.71814559569881}},{\"id\":28,\"type\":6,\"positionList\":[{\"x\":-5.397094317855448,\"y\":-58.26994714009421,\"z\":95.63915128345876},{\"x\":-4.924933149002527,\"y\":-72.0381045674502,\"z\":89.89215851670065},{\"x\":-7.478795306987962,\"y\":-44.279166151998375,\"z\":97.94697646308002}],\"label\":\"1.9mm\",\"labelPosition\":{\"x\":-5.812682573054724,\"y\":-58.07077935596222,\"z\":94.82100226802623}},{\"id\":29,\"type\":6,\"positionList\":[{\"x\":-2.3552727720200437,\"y\":-63.03613914427444,\"z\":93.82746891507747},{\"x\":-4.534019594472227,\"y\":-72.08194725968114,\"z\":89.91846773145706},{\"x\":-7.478795306987962,\"y\":-44.279166151998375,\"z\":97.94697646308002}],\"label\":\"3.4mm\",\"labelPosition\":{\"x\":-3.925740851636587,\"y\":-63.01683997051132,\"z\":93.18460395293302}},{\"id\":30,\"type\":6,\"positionList\":[{\"x\":-9.343972282313672,\"y\":-40.314419059481,\"z\":97.64046301131557},{\"x\":-4.924933149002527,\"y\":-72.0381045674502,\"z\":89.89215851670065},{\"x\":-7.478795306987962,\"y\":-44.279166151998375,\"z\":97.94697646308002}],\"label\":\"2.1mm\",\"labelPosition\":{\"x\":-8.581778075243024,\"y\":-40.44470974115961,\"z\":98.33113907480103}}]', 'test', '2021-10-15 15:34:33');
INSERT INTO cd_treatment VALUES ('66', '10', '/uploads/tank/2021/10/16/000d013944024a41a342d55b14708480.jpg', '/uploads/tank/2021/10/16/d8a5b7cf249c4ae4aa16717bfd854b95.jpg', null, '初诊', '2021-10-16 22:19:48');
INSERT INTO cd_treatment VALUES ('67', '9', null, '/uploads/tank/2021/10/17/fef211a168b843df83ec6a2abd949133.mtl,/uploads/tank/2021/10/17/9bac3aac162b4c53a81f0e3f3afa114a.jpg,/uploads/tank/2021/10/17/105bd5668f8c418a99ea708d0bcd42ed.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":-13.682467561393908,\"y\":60.721141233981,\"z\":94.04851094893118}]},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":-10.448291296835755,\"y\":24.37305923283371,\"z\":90.82512352633108}]},{\"id\":3,\"type\":1,\"positionList\":[{\"x\":-62.20912915859897,\"y\":10.835804922693626,\"z\":75.70329056543133}]},{\"id\":4,\"type\":1,\"positionList\":[{\"x\":-7.720837688301989,\"y\":-31.747904789778048,\"z\":99.55254137355115}]},{\"id\":5,\"type\":1,\"positionList\":[{\"x\":-7.081706496950977,\"y\":-44.343636195194065,\"z\":97.95003540241873}]},{\"id\":6,\"type\":1,\"positionList\":[{\"x\":-4.782935085444805,\"y\":-63.08115320345397,\"z\":94.20729598342845}]},{\"id\":7,\"type\":1,\"positionList\":[{\"x\":-6.549485217834967,\"y\":-49.28146511778255,\"z\":97.12503311077117}]},{\"id\":8,\"type\":1,\"positionList\":[{\"x\":-5.256612006979092,\"y\":-59.01856194195097,\"z\":95.67142388831664}]},{\"id\":9,\"type\":1,\"positionList\":[{\"x\":-4.037345084583878,\"y\":-77.70692827575483,\"z\":90.44252798643984}]},{\"id\":10,\"type\":1,\"positionList\":[{\"x\":-3.6804334640051155,\"y\":-88.93153424360162,\"z\":88.29765666994622}]},{\"id\":11,\"type\":1,\"positionList\":[{\"x\":-6.523060547104386,\"y\":-99.55052796587039,\"z\":38.93620182530914}]},{\"id\":12,\"type\":2,\"positionList\":[{\"x\":-3.986487206577632,\"y\":-77.7015423161282,\"z\":90.44033002761122},{\"x\":-6.530749922611697,\"y\":-49.242359990062766,\"z\":97.14618887449164}]},{\"id\":13,\"type\":2,\"positionList\":[{\"x\":-4.14733107104658,\"y\":-77.447853655448,\"z\":90.42391929996094},{\"x\":-8.872460334774495,\"y\":-19.197934527910483,\"z\":110.55253362744085}]},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":-8.852499209536482,\"y\":-28.77480330597087,\"z\":105.84460178180152},{\"x\":-7.67743841883847,\"y\":-31.696787111122354,\"z\":99.61183709644773},{\"x\":-6.525341613969882,\"y\":-49.28782603577734,\"z\":97.1208767509171}],\"label\":\"123°\",\"labelPosition\":{\"x\":-7.68126574981004,\"y\":-34.1416296310396,\"z\":100.23547115308492}},{\"id\":15,\"type\":3,\"positionList\":[{\"x\":-13.595846158705996,\"y\":60.69419475254483,\"z\":94.07666946976948},{\"x\":-7.630365211559337,\"y\":-32.06360125634904,\"z\":99.30876649813823},{\"x\":-3.5485461076005436,\"y\":-77.68257597506613,\"z\":90.42376880668445}],\"label\":\"166°\",\"labelPosition\":{\"x\":-7.944308852090647,\"y\":-24.207131041319577,\"z\":96.95591737816781}},{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-61.85230382393533,\"y\":11.217409223520221,\"z\":76.25713114570786},{\"x\":-7.644988873011091,\"y\":-31.930193920167348,\"z\":99.37811481586616},{\"x\":-13.531671227257096,\"y\":60.71003459854822,\"z\":94.11361297029629}],\"label\":\"47.7mm\",\"labelPosition\":{\"x\":-9.156065563609053,\"y\":-8.149992865947265,\"z\":98.02674819750044}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":-6.342540601777824,\"y\":-49.257434505559665,\"z\":97.1328937936469},{\"x\":-7.4222807736729415,\"y\":-31.49647978625356,\"z\":99.83937955104875},{\"x\":-3.835779299529481,\"y\":-77.49810414829606,\"z\":90.41763835487504}],\"label\":\"18.0mm\",\"labelPosition\":{\"x\":-6.737895766018866,\"y\":-40.274622571942835,\"z\":98.04149978795789}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":-3.5347575886245544,\"y\":-88.91623158656891,\"z\":88.30911194358899},{\"x\":-5.176041447234777,\"y\":-58.894810297687,\"z\":95.669835782051},{\"x\":-7.509923000590529,\"y\":-31.62670117235676,\"z\":99.68702912027759},{\"x\":-4.02752861227939,\"y\":-77.63357493685285,\"z\":90.43586341623364}],\"label\":\"30.9mm\",\"labelPosition\":{\"x\":-4.3216628631755025,\"y\":-73.74768613683247,\"z\":91.2172466804062}},{\"id\":22,\"type\":6,\"positionList\":[{\"x\":-6.2939531702735145,\"y\":-49.139855004182365,\"z\":97.19723970589882},{\"x\":-7.694545792962014,\"y\":-31.620075205205012,\"z\":99.70547106238156},{\"x\":-4.190505035272185,\"y\":-77.62557070658542,\"z\":90.44072673504299}],\"label\":\"1.0mm\",\"labelPosition\":{\"x\":-6.334338658549926,\"y\":-49.044112157017175,\"z\":96.70653976201886}},{\"id\":23,\"type\":6,\"positionList\":[{\"x\":-5.151175766472662,\"y\":-59.282447857882275,\"z\":95.64200308833067},{\"x\":-7.537519307893707,\"y\":-31.742174821009115,\"z\":99.5490989548233},{\"x\":-4.02752861227939,\"y\":-77.63357493685285,\"z\":90.43586341623364}],\"label\":\"1.6mm\",\"labelPosition\":{\"x\":-5.301707026853495,\"y\":-59.144322642584754,\"z\":94.88847018384651}},{\"id\":24,\"type\":3,\"positionList\":[{\"x\":-6.637120279531846,\"y\":-48.96527527521472,\"z\":97.30237978023075},{\"x\":-4.02752861227939,\"y\":-77.63357493685285,\"z\":90.43586341623364},{\"x\":-7.509923000590529,\"y\":-31.62670117235676,\"z\":99.68702912027759}],\"label\":\"2°\",\"labelPosition\":{\"x\":-5.042859621539989,\"y\":-65.18771269916381,\"z\":93.12214376090715}},{\"id\":25,\"type\":6,\"positionList\":[{\"x\":-7.680677379667735,\"y\":-31.85235818574691,\"z\":99.42409279652279},{\"x\":-3.9859091833577445,\"y\":-77.62669778819458,\"z\":90.43385161053138},{\"x\":-6.479676263762769,\"y\":-49.21315647196977,\"z\":97.16101264000932}],\"label\":\"1.8mm\",\"labelPosition\":{\"x\":-7.822817571393825,\"y\":-32.07123989609265,\"z\":100.29589294574575}},{\"id\":26,\"type\":6,\"positionList\":[{\"x\":17.21581885100988,\"y\":-32.956602125105945,\"z\":88.63895137646456},{\"x\":-3.9587067390743087,\"y\":-77.58027845705156,\"z\":90.42891882070035},{\"x\":-6.609230783358029,\"y\":-49.30171507776848,\"z\":97.11539408144931}],\"label\":\"27.7mm\",\"labelPosition\":{\"x\":4.770347949024787,\"y\":-35.44313222137372,\"z\":94.22163546606025}},{\"id\":27,\"type\":6,\"positionList\":[{\"x\":-6.5790011268027655,\"y\":-48.96618201034106,\"z\":97.30034929181195},{\"x\":-3.9587067390743087,\"y\":-77.58027845705156,\"z\":90.42891882070035},{\"x\":-6.371975114661595,\"y\":-48.60937809573481,\"z\":97.42320182790671}],\"label\":\"0.2mm\",\"labelPosition\":{\"x\":-6.461051828297205,\"y\":-48.96108543173155,\"z\":97.31993540818519}},{\"id\":28,\"type\":6,\"positionList\":[{\"x\":-5.241699249512266,\"y\":-58.680157985033404,\"z\":95.6697793908418},{\"x\":-3.936504107687881,\"y\":-77.78035925801123,\"z\":90.44542818107645},{\"x\":-6.570051490641461,\"y\":-48.59112785436021,\"z\":97.4327052983502}],\"label\":\"0.8mm\",\"labelPosition\":{\"x\":-5.455755740779189,\"y\":-58.624596641942034,\"z\":95.35699362661771}},{\"id\":29,\"type\":6,\"positionList\":[{\"x\":-5.037894897214883,\"y\":-67.73216005584956,\"z\":90.86497204646174},{\"x\":-3.9587067390743087,\"y\":-77.58027845705156,\"z\":90.42891882070035},{\"x\":-6.6243427417573955,\"y\":-49.469449757365666,\"z\":97.02293403514786}],\"label\":\"1.8mm\",\"labelPosition\":{\"x\":-4.946254858675591,\"y\":-67.93225871344163,\"z\":91.75505462615703}},{\"id\":30,\"type\":6,\"positionList\":[{\"x\":-4.068850972946752,\"y\":-79.4019966559637,\"z\":90.58692795976515},{\"x\":-4.350882810457708,\"y\":-77.76850839309172,\"z\":90.4585270482474},{\"x\":-6.395972094270668,\"y\":-49.06858793108703,\"z\":97.23884400988126}],\"label\":\"0.5mm\",\"labelPosition\":{\"x\":-4.155351846529539,\"y\":-79.3502936759447,\"z\":90.34198757818774}}]', '', '2021-10-17 09:52:18');
INSERT INTO cd_treatment VALUES ('69', '9', null, '/uploads/tank/2021/10/18/9046a10be177408b9b33c59a5130825d.mtl,/uploads/tank/2021/10/18/6ea8fc0de124413e94a7c727fadf5b85.jpg,/uploads/tank/2021/10/18/87cb93c85b7a4653bc20abc22e5d00fb.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":-0.5202759348962189,\"y\":72.17879680066922,\"z\":89.22158307035454}]},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":-16.045819086323384,\"y\":78.4563712965842,\"z\":87.21848989361871}]},{\"id\":15,\"type\":3,\"positionList\":[{\"x\":-6.868584290570135,\"y\":60.79655323049288,\"z\":93.45489435423734},{\"x\":-20.764703377488843,\"y\":33.418135266084676,\"z\":90.62632661494237},{\"x\":4.311123084578185,\"y\":30.925648851037593,\"z\":91.756101177786}],\"label\":\"69°\",\"labelPosition\":{\"x\":-14.269379119324554,\"y\":37.56579052431153,\"z\":91.28605033196546}},{\"id\":13,\"type\":2,\"positionList\":[{\"x\":-21.221726209151207,\"y\":63.16144547863148,\"z\":91.32860811791093},{\"x\":-22.92437356430403,\"y\":40.21853435991892,\"z\":89.8976112861757}]},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":-21.352288894320935,\"y\":65.80519867688778,\"z\":90.13124071129734},{\"x\":-24.51155384303686,\"y\":48.074165930790464,\"z\":92.77206607350085},{\"x\":-9.493798641935069,\"y\":55.55246580490193,\"z\":95.04241238475069}],\"label\":\"56°\",\"labelPosition\":{\"x\":-21.482050484733907,\"y\":52.275721367491926,\"z\":92.71031956500856}}]', '', '2021-10-18 11:03:12');
INSERT INTO cd_treatment VALUES ('74', '12', '/uploads/tank/2021/10/19/a0291f1eaa9f4d668f844e1c0086b494.jpg', '/uploads/tank/2021/10/19/a3a47752498549d8b682c83ea2581096.png', null, '符合', '2021-10-19 14:32:37');
INSERT INTO cd_treatment VALUES ('76', '12', null, '/uploads/tank/2021/10/19/43a9882fe9d445a881889dd4487d713d.mtl,/uploads/tank/2021/10/19/31b3f7eda7834890926b17db0441901f.jpg,/uploads/tank/2021/10/19/c56e6e309c644c578b40a384e4d094a8.obj', '[{\"id\":14,\"type\":3,\"positionList\":[{\"x\":-7.410679079483707,\"y\":-29.103274202872257,\"z\":104.14044777674854},{\"x\":-6.605868219398019,\"y\":-36.05766624253663,\"z\":97.73418203510236},{\"x\":-5.223312564684562,\"y\":-45.997030897185354,\"z\":97.90699611798674}],\"label\":\"137°\",\"labelPosition\":{\"x\":-6.5095774202933905,\"y\":-36.555161678367355,\"z\":98.83069533919078}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":-2.977829018627858,\"y\":-46.971665058771585,\"z\":97.4545969126051},{\"x\":-8.332129651713245,\"y\":-36.58531551543018,\"z\":97.70023106892192},{\"x\":-3.429595886503563,\"y\":-81.17373110002478,\"z\":90.55945027405436}],\"label\":\"10.8mm\",\"labelPosition\":{\"x\":-7.7486280230717055,\"y\":-41.892247473102074,\"z\":96.85033233836228}}]', '', '2021-10-19 16:22:01');
INSERT INTO cd_treatment VALUES ('78', '12', null, '/uploads/tank/2021/10/22/7cc59f80ca9140c78c5c47cdbe4b679f.mtl,/uploads/tank/2021/10/22/ad8994e48e8c453da62f32c10f907246.jpg,/uploads/tank/2021/10/22/d492b68d91eb4d879ed1ad73fab7cb71.obj', '[{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-57.46868613957798,\"y\":-21.197922046169978,\"z\":87.12212447622977},{\"x\":-8.279681774220819,\"y\":-67.37804030213152,\"z\":107.71545070376595},{\"x\":-8.507686322297545,\"y\":24.13539202394969,\"z\":100.30962646933824}],\"label\":\"47.8mm\",\"labelPosition\":{\"x\":-8.339049938028737,\"y\":-43.54963649708431,\"z\":105.78711115970478}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":-7.208636747687734,\"y\":-84.19734706905889,\"z\":109.84430899954543},{\"x\":-8.279681774220819,\"y\":-67.37804030213152,\"z\":107.71545070376595},{\"x\":-9.739225755179078,\"y\":-122.35376638529203,\"z\":96.01440444667605}],\"label\":\"16.0mm\",\"labelPosition\":{\"x\":-8.487017798579583,\"y\":-75.1876360601403,\"z\":106.05325453603541}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":-3.379314446347049,\"y\":-135.1511430307844,\"z\":85.87353341497818},{\"x\":-5.447293408638934,\"y\":-98.9209988187551,\"z\":104.29701731756951},{\"x\":-8.510820606094008,\"y\":-66.38439017342978,\"z\":108.61614484178467},{\"x\":-4.668275834128025,\"y\":-119.13285485306801,\"z\":96.77770415557266}],\"label\":\"39.4mm\",\"labelPosition\":{\"x\":-4.7854716003901645,\"y\":-117.52405206633594,\"z\":97.13877089907339}}]', '123456789', '2021-10-22 15:02:48');
INSERT INTO cd_treatment VALUES ('79', '12', null, '/uploads/tank/2021/10/22/9baeb41f71ab410b9341dabe0915d030.mtl,/uploads/tank/2021/10/22/00aebecb9d814fbe8094782ee1725952.jpg,/uploads/tank/2021/10/22/d04c6e109aa9411c8758aebe41914d5e.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":2.519126902905269,\"y\":72.91579942565386,\"z\":88.89533560001507}]},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":1.0957412223536607,\"y\":-21.503107819466,\"z\":102.29429462877397}]},{\"id\":3,\"type\":1,\"positionList\":[{\"x\":-43.98326620552878,\"y\":25.63040795503961,\"z\":83.86335896593732}]}]', '', '2021-10-22 15:21:13');
INSERT INTO cd_treatment VALUES ('81', '12', null, '/uploads/tank/2021/10/26/69517cab34984db7bc0ed050814ae905.mtl,/uploads/tank/2021/10/26/b778149e76a2444199a5ad8079108c5c.jpg,/uploads/tank/2021/10/26/20dbcfc4d45c4649bc9357f5816acfb6.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":7.362872957712191,\"y\":75.4694478165499,\"z\":87.81694259603785}],\"label\":\"G\",\"labelPosition\":{\"x\":-6.7428287187987195,\"y\":-59.623420301212505,\"z\":91.73303289782167}},{\"id\":12,\"type\":2,\"positionList\":[{\"x\":2.9527350451739434,\"y\":-72.77266265181191,\"z\":91.44663431584036},{\"x\":2.866122088575626,\"y\":-40.61685735120091,\"z\":100.49746985015179}],\"label\":\"H线\",\"labelPosition\":{\"x\":2.9094285668747846,\"y\":-56.69476000150641,\"z\":95.97205208299607}},{\"id\":15,\"type\":3,\"positionList\":[{\"x\":7.3578663331001195,\"y\":75.4554967296805,\"z\":87.82124547359363},{\"x\":1.5650833341705201,\"y\":-22.601365258367764,\"z\":101.55426863575278},{\"x\":0.742642869168396,\"y\":-72.33006255219645,\"z\":91.73896361101612}],\"label\":\"FCA：161°\",\"labelPosition\":{\"x\":2.393473756491766,\"y\":-14.5466711426645,\"z\":97.62954727127013}},{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-44.8580327751265,\"y\":24.621094876810005,\"z\":82.37895841078014},{\"x\":2.1319144616735457,\"y\":-21.212266365752257,\"z\":102.93776653697248},{\"x\":7.265443159133678,\"y\":75.56114439301109,\"z\":87.80032278981764}],\"label\":\"UFH：45.9mm\",\"labelPosition\":{\"x\":3.333960282067066,\"y\":1.4477947312764563,\"z\":99.39324539760257}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":1.4114223468598652,\"y\":-21.827350051347636,\"z\":102.04322608817483},{\"x\":0.024963916692442467,\"y\":-48.18397250376289,\"z\":96.48751607550952},{\"x\":-0.0959987771691857,\"y\":-87.19562134636178,\"z\":87.2116776213185},{\"x\":-0.5848625254214284,\"y\":-67.88587082018053,\"z\":91.30401755948645}],\"label\":\"LLL：26.9mm\",\"labelPosition\":{\"x\":-1.4210754401886718,\"y\":-34.856089355192836,\"z\":98.30406106884504}},{\"id\":27,\"type\":6,\"positionList\":[{\"x\":0.03756057925820766,\"y\":-39.20054136057471,\"z\":101.54054767731535},{\"x\":1.3376004132974426,\"y\":-22.104881236350728,\"z\":101.89162555272522},{\"x\":0.011417844081301531,\"y\":-48.38604481969569,\"z\":96.43834089627815}],\"label\":\"上唇突点-H线：3.2mm\",\"labelPosition\":{\"x\":0.2717165172650663,\"y\":-38.89395161827406,\"z\":100.00604705594228}}]', 'just test', '2021-10-26 10:00:06');
INSERT INTO cd_treatment VALUES ('85', '12', null, '/uploads/tank/2021/10/26/f959cd215ac6467b8422008a5d428b0d.mtl,/uploads/tank/2021/10/26/21d535b92e0d448b910b0db452e1f3d5.jpg,/uploads/tank/2021/10/26/986bb11cf0f54ebfb4002aa2db1bb10a.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":6.3983738011714015,\"y\":68.09697831246719,\"z\":89.9558237838786}],\"label\":\"G\",\"labelPosition\":{\"x\":6.3983738011714015,\"y\":68.09697831246719,\"z\":89.9558237838786}},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":-30.494079517187032,\"y\":25.942724365368086,\"z\":91.23879229498789}],\"label\":\"Ns\",\"labelPosition\":{\"x\":-30.494079517187032,\"y\":25.942724365368086,\"z\":91.23879229498789}},{\"id\":12,\"type\":2,\"positionList\":[{\"x\":12.4668641108079,\"y\":-14.460641455214096,\"z\":102.72689215685915},{\"x\":-10.168724337821343,\"y\":-48.442771997494816,\"z\":92.86648223701849}],\"label\":\"H线\",\"labelPosition\":{\"x\":1.1490698864932787,\"y\":-31.451706726354455,\"z\":97.79668719693882}},{\"id\":15,\"type\":3,\"positionList\":[{\"x\":-35.82518083249514,\"y\":34.745101070666216,\"z\":89.85699369918314},{\"x\":-45.520714357660616,\"y\":-5.55540003168031,\"z\":85.93749080414881},{\"x\":-4.000582511251417,\"y\":-3.4401203057148955,\"z\":108.24241238651064}],\"label\":\"FCA：73°\",\"labelPosition\":{\"x\":-36.984770129064835,\"y\":1.5138967730383466,\"z\":90.30822821704817}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":-3.1290139752363553,\"y\":-18.238523968345756,\"z\":105.37861752838575},{\"x\":-47.48340222722519,\"y\":-43.61015331868434,\"z\":77.89937341601063},{\"x\":-24.84486051855275,\"y\":-58.577282569873795,\"z\":84.3427667438176},{\"x\":3.573486010416868,\"y\":-44.08987578607377,\"z\":97.92175062318358}],\"label\":\"LLL：57.7mm\",\"labelPosition\":{\"x\":-13.339586202444892,\"y\":-52.71200152663131,\"z\":89.84026936265757}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":-11.68185189410288,\"y\":64.95405029271107,\"z\":91.73220394562793},{\"x\":-36.46461308073046,\"y\":22.467058582234127,\"z\":88.5464787803026},{\"x\":2.180747586680366,\"y\":14.567204857654911,\"z\":100.56689165980578}],\"label\":\"ULL：16.0mm\",\"labelPosition\":{\"x\":-28.96001485934879,\"y\":20.932974614927616,\"z\":90.88074006180915}},{\"id\":30,\"type\":6,\"positionList\":[{\"x\":6.5902912461196905,\"y\":-29.58451953448107,\"z\":100.52830604478157},{\"x\":4.557766316493133,\"y\":-52.66137427860953,\"z\":94.71361844582486},{\"x\":-28.63545010331434,\"y\":-57.36810836728574,\"z\":83.27708878654039}],\"label\":\"颏前点-H线：22.9mm\",\"labelPosition\":{\"x\":8.782706181745223,\"y\":-40.66796263779579,\"z\":98.72649338133668}}]', '', '2021-10-26 10:23:04');
INSERT INTO cd_treatment VALUES ('88', '14', '/uploads/tank/2021/10/26/9fa0d90cce3b4b3ca9cdeefe5cb55e90.jpeg', '/uploads/tank/2021/10/26/d31028f1d09d4df28a4694f4ea937173.jpeg', null, '测试', '2021-10-26 16:49:17');
INSERT INTO cd_treatment VALUES ('89', '10', null, '/uploads/tank/2021/10/26/1a4e2652feb04c8fbbbaa5b4d3314ea0.mtl,/uploads/tank/2021/10/26/d518b7429b20480ab6df5c80225fe076.jpg,/uploads/tank/2021/10/26/afb0926c193743159df8869ee3186345.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":-8.797786798610211,\"y\":15.78293494875929,\"z\":103.82814996237505}],\"label\":\"G\",\"labelPosition\":{\"x\":-8.797786798610211,\"y\":15.78293494875929,\"z\":103.82814996237505}},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":-8.952320749974907,\"y\":-14.946717215842945,\"z\":100.80323921811612}],\"label\":\"Ns\",\"labelPosition\":{\"x\":-8.952320749974907,\"y\":-14.946717215842945,\"z\":100.80323921811612}},{\"id\":3,\"type\":1,\"positionList\":[{\"x\":-60.86621444771995,\"y\":-20.810902354600493,\"z\":82.60211743308571}],\"label\":\"E\",\"labelPosition\":{\"x\":-60.86621444771995,\"y\":-20.810902354600493,\"z\":82.60211743308571}},{\"id\":4,\"type\":1,\"positionList\":[{\"x\":-7.451804229838485,\"y\":-67.10936488147865,\"z\":107.89812874436984}],\"label\":\"Sn\",\"labelPosition\":{\"x\":-7.451804229838485,\"y\":-67.10936488147865,\"z\":107.89812874436984}},{\"id\":5,\"type\":1,\"positionList\":[{\"x\":-8.065195356245308,\"y\":-81.35206214930288,\"z\":110.0987787368004}],\"label\":\"UL`\",\"labelPosition\":{\"x\":-8.065195356245308,\"y\":-81.35206214930288,\"z\":110.0987787368004}},{\"id\":6,\"type\":1,\"positionList\":[{\"x\":-7.073051821873477,\"y\":-98.01028750763497,\"z\":104.50169546265039}],\"label\":\"LL`\",\"labelPosition\":{\"x\":-7.073051821873477,\"y\":-98.01028750763497,\"z\":104.50169546265039}},{\"id\":7,\"type\":1,\"positionList\":[{\"x\":-7.989087760341105,\"y\":-84.41707152472841,\"z\":109.73531992577097}],\"label\":\"UL\",\"labelPosition\":{\"x\":-7.989087760341105,\"y\":-84.41707152472841,\"z\":109.73531992577097}},{\"id\":8,\"type\":1,\"positionList\":[{\"x\":-8.143637169541627,\"y\":-95.73198732637691,\"z\":104.25845801749665}],\"label\":\"LL\",\"labelPosition\":{\"x\":-8.143637169541627,\"y\":-95.73198732637691,\"z\":104.25845801749665}},{\"id\":9,\"type\":1,\"positionList\":[{\"x\":-5.299675153386057,\"y\":-122.72124809864107,\"z\":96.24564029117494}],\"label\":\"Pos\",\"labelPosition\":{\"x\":-5.299675153386057,\"y\":-122.72124809864107,\"z\":96.24564029117494}},{\"id\":10,\"type\":1,\"positionList\":[{\"x\":-6.14516982303185,\"y\":-134.4647782433385,\"z\":87.24718656418278}],\"label\":\"Mes\",\"labelPosition\":{\"x\":-6.14516982303185,\"y\":-134.4647782433385,\"z\":87.24718656418278}},{\"id\":12,\"type\":2,\"positionList\":[{\"x\":-5.43223125584214,\"y\":-122.8922340654687,\"z\":96.20388928016843},{\"x\":-7.1009625389393065,\"y\":-83.68067619986853,\"z\":110.0180191511071}],\"label\":\"H线\",\"labelPosition\":{\"x\":-6.266596897390723,\"y\":-103.2864551326686,\"z\":103.11095421563776}},{\"id\":13,\"type\":2,\"positionList\":[{\"x\":-5.7371753052048575,\"y\":-120.2082223544979,\"z\":96.6704437883719},{\"x\":-8.113482976753914,\"y\":-54.18481471321699,\"z\":122.57145106007994}],\"label\":\"E线\",\"labelPosition\":{\"x\":-6.925329140979386,\"y\":-87.19651853385744,\"z\":109.62094742422592}},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":-8.497902653474597,\"y\":-64.54298317582584,\"z\":113.91065197697537},{\"x\":-8.46230799705231,\"y\":-66.70187005039746,\"z\":108.23115204108072},{\"x\":-7.452633348241818,\"y\":-83.20188465129507,\"z\":110.17430662655673}],\"label\":\"NLA：104°\",\"labelPosition\":{\"x\":-8.299961331654275,\"y\":-69.09205800478512,\"z\":109.50159446130915}},{\"id\":15,\"type\":3,\"positionList\":[{\"x\":-11.003614770362347,\"y\":22.00138939975537,\"z\":100.94415596655978},{\"x\":-8.60681304197108,\"y\":-9.893204144836538,\"z\":100.627130265255},{\"x\":-5.498262325095993,\"y\":-122.65198614346579,\"z\":96.24898395778749}],\"label\":\"FCA：177°\",\"labelPosition\":{\"x\":-8.488188210557109,\"y\":-23.370568887176095,\"z\":99.95027683089455}},{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-60.3490249073635,\"y\":-21.201976284989513,\"z\":83.06748228119653},{\"x\":-7.287056483180258,\"y\":-65.5784669138053,\"z\":110.14371430912121},{\"x\":-11.148834587050992,\"y\":21.429230088420013,\"z\":101.15157273305198}],\"label\":\"UFH：49.2mm\",\"labelPosition\":{\"x\":-8.37250038757618,\"y\":-41.122899606110494,\"z\":107.6162606339796}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":-6.718870180436042,\"y\":-87.37006686024668,\"z\":107.87307759184785},{\"x\":-7.581859469501659,\"y\":-65.1555983902773,\"z\":111.62582235006766},{\"x\":-5.5099629459558415,\"y\":-122.1620779107572,\"z\":96.34703436363856}],\"label\":\"ULL：22.4mm\",\"labelPosition\":{\"x\":-7.188123565521818,\"y\":-75.98890859260896,\"z\":108.72229539725555}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":-4.528147844329638,\"y\":-135.40667553640873,\"z\":85.42502944151175},{\"x\":-6.406209888123364,\"y\":-92.07977198716087,\"z\":103.44421512967895},{\"x\":-6.755286510802151,\"y\":-65.51461414154154,\"z\":110.09132241297277},{\"x\":-5.525534898636316,\"y\":-121.23351148476681,\"z\":96.50687087953258}],\"label\":\"LLL：46.4mm\",\"labelPosition\":{\"x\":-5.670956637440338,\"y\":-114.64458827805183,\"z\":98.11327215857838}},{\"id\":22,\"type\":6,\"positionList\":[{\"x\":-7.5232032021835735,\"y\":-84.8920655590593,\"z\":109.56246880351483},{\"x\":-8.58929684454256,\"y\":-65.17091769157395,\"z\":111.49114369843721},{\"x\":-4.869631673142706,\"y\":-125.28782947258172,\"z\":95.3497169500456}],\"label\":\"ULP：3.3mm\",\"labelPosition\":{\"x\":-7.472403095425953,\"y\":-84.46757596169218,\"z\":107.99321196619158}},{\"id\":23,\"type\":6,\"positionList\":[{\"x\":-6.564889139030264,\"y\":-94.35829660681826,\"z\":104.01644691407998},{\"x\":-7.807271547952396,\"y\":-65.61788966802528,\"z\":110.14401801844201},{\"x\":-3.5298153008110305,\"y\":-122.09448362204279,\"z\":96.36321891736003}],\"label\":\"LLP：1.3mm\",\"labelPosition\":{\"x\":-6.1078971641939495,\"y\":-94.22368319539703,\"z\":103.606619896175}},{\"id\":24,\"type\":3,\"positionList\":[{\"x\":-8.02038058760401,\"y\":-84.91017798894356,\"z\":109.52780630158077},{\"x\":-4.987540275460425,\"y\":-123.52935935878645,\"z\":96.08664371543034},{\"x\":-6.971130310024201,\"y\":-66.50396510630709,\"z\":108.51290667105093}],\"label\":\"H角：7°\",\"labelPosition\":{\"x\":-5.823611999911652,\"y\":-107.58859675506608,\"z\":100.3978813057255}},{\"id\":25,\"type\":6,\"positionList\":[{\"x\":-7.7727603653257376,\"y\":-55.72733792825858,\"z\":122.30232188676379},{\"x\":-3.165627614702185,\"y\":-122.36273505977036,\"z\":96.26868262821984},{\"x\":-5.936828965103306,\"y\":-86.07337147123425,\"z\":108.75462561319353}],\"label\":\"鼻点-H线：3.0mm\",\"labelPosition\":{\"x\":-8.048521686412975,\"y\":-55.26829177098791,\"z\":120.90693804819682}},{\"id\":26,\"type\":6,\"positionList\":[{\"x\":-7.995631451773293,\"y\":-81.5903833963578,\"z\":110.13025070474879},{\"x\":-8.804873936540101,\"y\":-122.31127761715426,\"z\":96.12702466647568},{\"x\":-7.457047600973233,\"y\":-86.10204599346096,\"z\":108.90654473548011}],\"label\":\"鼻唇沟-H线：0.8mm\",\"labelPosition\":{\"x\":-7.644955305594539,\"y\":-81.65983502348737,\"z\":110.29004852949306}},{\"id\":27,\"type\":6,\"positionList\":[{\"x\":-6.440763405939935,\"y\":-84.59949734411876,\"z\":109.62410559261195},{\"x\":-5.165315219190217,\"y\":-118.26019965262492,\"z\":96.83961141793134},{\"x\":-6.447191711205244,\"y\":-83.5985671474398,\"z\":109.96491082355288}],\"label\":\"上唇突点-H线：0.0mm\",\"labelPosition\":{\"x\":-6.42572109894644,\"y\":-84.59268252983485,\"z\":109.6075779537463}},{\"id\":28,\"type\":6,\"positionList\":[{\"x\":-8.431820314911604,\"y\":-94.71477872050812,\"z\":104.01159129423803},{\"x\":-5.1411961274724876,\"y\":-123.82851408735532,\"z\":95.97828316130938},{\"x\":-6.957661924213285,\"y\":-84.0996092837447,\"z\":109.85417888565104}],\"label\":\"下唇突点-H线：2.8mm\",\"labelPosition\":{\"x\":-7.4387265692795514,\"y\":-95.0066265456832,\"z\":104.97720213130384}},{\"id\":29,\"type\":6,\"positionList\":[{\"x\":-6.9005760327913706,\"y\":-103.42306043806121,\"z\":100.70392314584859},{\"x\":-5.24073661906138,\"y\":-123.1287775635237,\"z\":96.17397274650097},{\"x\":-7.232624623277836,\"y\":-87.02640577795424,\"z\":108.22897057034547}],\"label\":\"颏唇沟-H线：2.0mm\",\"labelPosition\":{\"x\":-6.598110241561223,\"y\":-103.71597520792128,\"z\":101.63112330527966}},{\"id\":30,\"type\":6,\"positionList\":[{\"x\":-7.105567971179147,\"y\":-121.03820559000701,\"z\":96.48731360649907},{\"x\":-7.105567971179147,\"y\":-121.03820559000701,\"z\":96.48731360649907},{\"x\":-7.8853638185429045,\"y\":-85.37455122838753,\"z\":109.29841067114984}],\"label\":\"颏前点-H线：0.0mm\",\"labelPosition\":{\"x\":-7.105567971179147,\"y\":-121.03820559000701,\"z\":96.48731360649907}}]', '治疗前', '2021-10-26 18:24:33');
INSERT INTO cd_treatment VALUES ('90', '10', null, '/uploads/tank/2021/10/26/dc3d36a1b12c48fb9fd89980f3149872.mtl,/uploads/tank/2021/10/26/55431af31c644237b7cce48f5305cfea.jpg,/uploads/tank/2021/10/26/807568f9975747a693ff59eee2648735.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":0.8417008141414818,\"y\":54.523511147906355,\"z\":99.93461140478212}],\"label\":\"G\",\"labelPosition\":{\"x\":0.8417008141414818,\"y\":54.523511147906355,\"z\":99.93461140478212}},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":0.8490305577959885,\"y\":22.92382506049184,\"z\":97.32156607912651}],\"label\":\"Ns\",\"labelPosition\":{\"x\":0.8490305577959885,\"y\":22.92382506049184,\"z\":97.32156607912651}},{\"id\":3,\"type\":1,\"positionList\":[{\"x\":-51.64149193074595,\"y\":22.984941495187506,\"z\":80.74913029611872}],\"label\":\"E\",\"labelPosition\":{\"x\":-51.64149193074595,\"y\":22.984941495187506,\"z\":80.74913029611872}},{\"id\":4,\"type\":1,\"positionList\":[{\"x\":-0.7998224815977188,\"y\":-24.785402299761728,\"z\":103.39812607963665}],\"label\":\"Sn\",\"labelPosition\":{\"x\":-0.7998224815977188,\"y\":-24.785402299761728,\"z\":103.39812607963665}},{\"id\":5,\"type\":1,\"positionList\":[{\"x\":-1.5240721686444996,\"y\":-38.269466812152444,\"z\":105.41799769212989}],\"label\":\"UL`\",\"labelPosition\":{\"x\":-1.5240721686444996,\"y\":-38.269466812152444,\"z\":105.41799769212989}},{\"id\":6,\"type\":1,\"positionList\":[{\"x\":-3.0481724993595467,\"y\":-54.561786861641934,\"z\":101.7579357176254}],\"label\":\"LL`\",\"labelPosition\":{\"x\":-3.0481724993595467,\"y\":-54.561786861641934,\"z\":101.7579357176254}},{\"id\":7,\"type\":1,\"positionList\":[{\"x\":-2.5965544135857144,\"y\":-43.38175372282049,\"z\":104.5157191200374}],\"label\":\"UL\",\"labelPosition\":{\"x\":-2.5965544135857144,\"y\":-43.38175372282049,\"z\":104.5157191200374}},{\"id\":8,\"type\":1,\"positionList\":[{\"x\":-1.9694155906306285,\"y\":-53.06515544860423,\"z\":101.68977253092513}],\"label\":\"LL\",\"labelPosition\":{\"x\":-1.9694155906306285,\"y\":-53.06515544860423,\"z\":101.68977253092513}},{\"id\":9,\"type\":1,\"positionList\":[{\"x\":-2.678211427078807,\"y\":-78.09035502392192,\"z\":91.54126289406037}],\"label\":\"Pos\",\"labelPosition\":{\"x\":-2.678211427078807,\"y\":-78.09035502392192,\"z\":91.54126289406037}},{\"id\":10,\"type\":1,\"positionList\":[{\"x\":-5.002826243992119,\"y\":-85.31068721429202,\"z\":83.39895295927082}],\"label\":\"Mes\",\"labelPosition\":{\"x\":-5.002826243992119,\"y\":-85.31068721429202,\"z\":83.39895295927082}},{\"id\":11,\"type\":1,\"positionList\":[{\"x\":-1.3192455467694124,\"y\":-98.20455449751037,\"z\":42.45871760972898}],\"label\":\"K\",\"labelPosition\":{\"x\":-1.3192455467694124,\"y\":-98.20455449751037,\"z\":42.45871760972898}},{\"id\":12,\"type\":2,\"positionList\":[{\"x\":-3.6001931271907637,\"y\":-70.13946007726202,\"z\":93.1627864312099},{\"x\":-1.1229213438678514,\"y\":-41.80722246879924,\"z\":105.31836671684312}],\"label\":\"H线\",\"labelPosition\":{\"x\":-2.3615572355293075,\"y\":-55.97334127303063,\"z\":99.2405765740265}},{\"id\":13,\"type\":2,\"positionList\":[{\"x\":-4.846232764528374,\"y\":-77.79589142677474,\"z\":91.70231466188665},{\"x\":0.2474625469143703,\"y\":-14.803891462196814,\"z\":113.92505325382831}],\"label\":\"E线\",\"labelPosition\":{\"x\":-2.2993851088070016,\"y\":-46.29989144448578,\"z\":102.81368395785748}},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":0.4398126409113132,\"y\":-22.492745887169978,\"z\":106.17306587807377},{\"x\":0.791599140387504,\"y\":-27.024411032866997,\"z\":102.4053844104127},{\"x\":0.037376119094858495,\"y\":-42.9110777468499,\"z\":104.77901250339397}],\"label\":\"NLA：131°\",\"labelPosition\":{\"x\":0.6072642202593646,\"y\":-28.916911294247974,\"z\":103.4289360038531}},{\"id\":15,\"type\":3,\"positionList\":[{\"x\":2.0388537393406523,\"y\":51.246786277437636,\"z\":100.38494577077176},{\"x\":-0.20130412857425029,\"y\":-25.533116325567942,\"z\":103.1049645630431},{\"x\":-2.82338931450996,\"y\":-72.61997119595566,\"z\":93.09981507347516}],\"label\":\"FCA：166°\",\"labelPosition\":{\"x\":-0.2649586815777181,\"y\":-20.584275036798296,\"z\":100.98410318273655}},{\"id\":16,\"type\":4,\"positionList\":[{\"x\":-51.67531393697834,\"y\":24.35921122513651,\"z\":81.17362499090859},{\"x\":-0.6996754483280783,\"y\":-24.947212830588846,\"z\":103.32186747521553},{\"x\":1.5798484936814248,\"y\":49.53497286955776,\"z\":100.43387408051774}],\"label\":\"UFH：48.5mm\",\"labelPosition\":{\"x\":0.042292506022127974,\"y\":-0.7038197514388251,\"z\":102.38184727549266}},{\"id\":17,\"type\":4,\"positionList\":[{\"x\":-1.8196384008699948,\"y\":-41.85096657764591,\"z\":105.26882590530897},{\"x\":-0.16635989365205894,\"y\":-23.197800070096953,\"z\":105.0159212634644},{\"x\":-3.4510580507442907,\"y\":-72.9050957700161,\"z\":93.08930856916618}],\"label\":\"ULL：18.1mm\",\"labelPosition\":{\"x\":-0.7482336172563079,\"y\":-32.00328777579645,\"z\":102.90316014919495}},{\"id\":18,\"type\":5,\"positionList\":[{\"x\":-3.403182651037681,\"y\":-93.70591656670268,\"z\":50.191122259898236},{\"x\":-1.2376165279053373,\"y\":-52.28157738828206,\"z\":101.49700444446455},{\"x\":-0.7159178560932444,\"y\":-23.204280397312154,\"z\":104.88847482856306},{\"x\":-3.4428126052523327,\"y\":-83.53351013794824,\"z\":86.78034660060092}],\"label\":\"LLL：54.5mm\",\"labelPosition\":{\"x\":-3.1403600302576034,\"y\":-76.84211477399778,\"z\":88.78880329390411}},{\"id\":22,\"type\":6,\"positionList\":[{\"x\":-1.4912301673243427,\"y\":-44.184605659757096,\"z\":103.992959380571},{\"x\":-1.0233704089035633,\"y\":-24.474174781230683,\"z\":103.52895989851129},{\"x\":-4.6357272946446635,\"y\":-76.3529006853596,\"z\":92.28511439085338}],\"label\":\"ULP：4.7mm\",\"labelPosition\":{\"x\":-1.9074670030138112,\"y\":-43.66673474683843,\"z\":101.73724649939948}},{\"id\":23,\"type\":6,\"positionList\":[{\"x\":-1.8946522289958807,\"y\":-52.27318575986746,\"z\":101.56116015517011},{\"x\":-0.8969676383757648,\"y\":-23.800953399522008,\"z\":104.08803440007063},{\"x\":-2.5804243222885166,\"y\":-79.07419237809917,\"z\":91.0041819897342}],\"label\":\"LLP：4.1mm\",\"labelPosition\":{\"x\":-1.8150885363398093,\"y\":-51.80332007164905,\"z\":99.56595723754128}},{\"id\":24,\"type\":3,\"positionList\":[{\"x\":-1.485008245988256,\"y\":-43.01074177887608,\"z\":104.77475611901718},{\"x\":-1.4918263105246385,\"y\":-75.90616052190238,\"z\":92.42141974802945},{\"x\":1.410210666369073,\"y\":-28.89592428345393,\"z\":102.37557391766785}],\"label\":\"H角：9°\",\"labelPosition\":{\"x\":-1.0070171369529561,\"y\":-62.588551358323244,\"z\":96.1393348381338}},{\"id\":25,\"type\":6,\"positionList\":[{\"x\":-0.35473844316800296,\"y\":-10.977836654739288,\"z\":114.24477666141291},{\"x\":-2.880811637762946,\"y\":-78.3472827278338,\"z\":91.4060626467076},{\"x\":-0.08243045035299446,\"y\":-43.267166879846805,\"z\":104.5974892812443}],\"label\":\"鼻点-H线：3.6mm\",\"labelPosition\":{\"x\":1.0287994442419017,\"y\":-11.485471472725619,\"z\":115.30123721062662}},{\"id\":26,\"type\":6,\"positionList\":[{\"x\":-1.2352522493813112,\"y\":-36.59689211122877,\"z\":104.88597920666092},{\"x\":-1.2433697984494572,\"y\":-76.47527831779988,\"z\":92.2066134251109},{\"x\":-0.5923454806766273,\"y\":-43.858271597614426,\"z\":104.253394381732}],\"label\":\"鼻唇沟-H线：2.1mm\",\"labelPosition\":{\"x\":-0.8481142805410782,\"y\":-36.93671471602736,\"z\":105.78513724658403}},{\"id\":27,\"type\":6,\"positionList\":[{\"x\":-0.5107601433500468,\"y\":-43.5001017877458,\"z\":104.49152926622406},{\"x\":-1.9719192886958892,\"y\":-72.71772131227077,\"z\":93.03588664332392},{\"x\":-0.4935916731644374,\"y\":-42.305954723501294,\"z\":105.120097536213}],\"label\":\"上唇突点-H线：0.1mm\",\"labelPosition\":{\"x\":-0.5324407076510441,\"y\":-43.5256277426049,\"z\":104.55842154121177}},{\"id\":28,\"type\":6,\"positionList\":[{\"x\":-1.7048005118369032,\"y\":-52.84353206843421,\"z\":101.64090787483559},{\"x\":-3.1248966906406226,\"y\":-73.90144020984661,\"z\":92.90667891122837},{\"x\":-0.5015530070389369,\"y\":-42.8991650462384,\"z\":104.8286045694565}],\"label\":\"下唇突点-H线：0.7mm\",\"labelPosition\":{\"x\":-1.516068755557147,\"y\":-52.75084313387815,\"z\":101.35834646562776}},{\"id\":29,\"type\":6,\"positionList\":[{\"x\":-3.0679874916124676,\"y\":-61.51688923061466,\"z\":94.54780000884136},{\"x\":-2.5985268424358283,\"y\":-78.28640672049457,\"z\":91.44333615066125},{\"x\":-1.125154192848373,\"y\":-46.03482666403411,\"z\":102.38053557922387}],\"label\":\"颏唇沟-H线：2.7mm\",\"labelPosition\":{\"x\":-2.469271455090701,\"y\":-61.934135933630756,\"z\":95.69752153441746}},{\"id\":30,\"type\":6,\"positionList\":[{\"x\":-2.0114755791625205,\"y\":-77.62742540900032,\"z\":91.76070294124173},{\"x\":-2.0114755791625205,\"y\":-77.62742540900032,\"z\":91.76070294124173},{\"x\":-2.1492045112831226,\"y\":-42.31336510392213,\"z\":105.09916087941997}],\"label\":\"颏前点-H线：0.0mm\",\"labelPosition\":{\"x\":-2.0114755791625205,\"y\":-77.62742540900032,\"z\":91.76070294124173}}]', '', '2021-10-26 19:45:30');
INSERT INTO cd_treatment VALUES ('92', '12', null, '/uploads/tank/2021/10/28/53d93d6942454c54be99d715568ad47f.jpg,/uploads/tank/2021/10/28/4c48d3fe75954a5d991824b31572c866.mtl,/uploads/tank/2021/10/28/f33c9de268af49e9a94a1ef3b7664f5d.obj', '[{\"id\":15,\"type\":7,\"positionList\":[{\"x\":1.9507449482978707,\"y\":72.82781140312068,\"z\":88.95009333897767},{\"x\":0.6134364942238011,\"y\":-23.523074331842462,\"z\":101.17989287885524},{\"x\":0,\"y\":-66.73373556302741,\"z\":91.32671221223163}],\"label\":\"FCA：20°\",\"labelPosition\":{\"x\":0.9385606522734462,\"y\":-0.26281650415111574,\"z\":100.78378973331291}}]', '', '2021-10-28 10:44:13');
INSERT INTO cd_treatment VALUES ('93', '12', null, '', '[]', '', '2021-10-28 16:37:49');
INSERT INTO cd_treatment VALUES ('94', '12', null, '', '[]', '', '2021-10-28 16:38:54');
INSERT INTO cd_treatment VALUES ('95', '12', null, '', '[]', '', '2021-10-28 16:40:21');
INSERT INTO cd_treatment VALUES ('96', '12', null, '', '[]', '', '2021-10-28 16:40:35');
INSERT INTO cd_treatment VALUES ('97', '95', null, '', '[]', '', '2021-10-28 16:41:03');
INSERT INTO cd_treatment VALUES ('99', '98', null, '', '[]', '', '2021-10-28 16:44:21');
INSERT INTO cd_treatment VALUES ('101', '100', null, '', '[]', '', '2021-10-28 16:46:54');
INSERT INTO cd_treatment VALUES ('107', '14', null, '/uploads/tank/2021/10/28/20704af27226450d98865cb769cc9f1b.mtl,/uploads/tank/2021/10/28/9d122b8c104c47ceaaca24b2c188ed20.jpg,/uploads/tank/2021/10/28/2451691e3083409587fd90fbcbd8644b.obj', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":4.3508850193769835,\"y\":70.98812400036124,\"z\":89.30375370402919}],\"label\":\"G\",\"labelPosition\":{\"x\":4.3508850193769835,\"y\":70.98812400036124,\"z\":89.30375370402919}},{\"id\":15,\"type\":7,\"positionList\":[{\"x\":3.0360884554746868,\"y\":61.94556404584343,\"z\":92.1983132916574},{\"x\":1.2892358860794957,\"y\":-22.066127525680848,\"z\":101.92359007933365},{\"x\":-1.3871543344901873,\"y\":-69.7818687246002,\"z\":91.55038174407778}],\"label\":\"FCA：19°\",\"labelPosition\":{\"x\":2.026443017740308,\"y\":-0.11155539727357558,\"z\":102.03157867059691}},{\"id\":14,\"type\":3,\"positionList\":[{\"x\":1.5058610055963038,\"y\":-17.057786084393676,\"z\":110.01774684335706},{\"x\":1.2600418449800146,\"y\":-22.03149608776726,\"z\":101.94957382740833},{\"x\":1.265433525465296,\"y\":-47.06898167563694,\"z\":96.7419233560722}],\"label\":\"NLA：133°\",\"labelPosition\":{\"x\":1.301910318496943,\"y\":-25.375458685183276,\"z\":102.42632758484376}}]', '挺好', '2021-10-28 17:04:57');
INSERT INTO cd_treatment VALUES ('108', '14', null, '/uploads/tank/2021/10/28/f3a0ea12841c41d987628321355f7b3c.jpg,/uploads/tank/2021/10/28/f8208e2501a14639a160ce2d7ef0440a.mtl,/uploads/tank/2021/10/28/bec6f65eccf8474888f2be5860d7c4dc.obj', '[{\"id\":29,\"type\":6,\"positionList\":[{\"x\":13.54355123985129,\"y\":29.382619638999447,\"z\":88.54698138473879},{\"x\":-4.635809619887259,\"y\":-27.81485771932354,\"z\":100.4851921531324},{\"x\":24.580218521823817,\"y\":-24.350496853395533,\"z\":88.31639187035165}],\"label\":\"颏唇沟-H线：54.7mm\",\"labelPosition\":{\"x\":17.057249963182194,\"y\":2.27835698186996,\"z\":89.26663934029983}}]', '', '2021-10-28 17:14:36');
INSERT INTO cd_treatment VALUES ('109', '15', '/uploads/tank/2021/10/28/4c1ea0a4b89a49ff959e066f4885dffa.jpg', '', null, '11223344556677889900', '2021-10-28 17:17:12');
INSERT INTO cd_treatment VALUES ('112', '14', null, '/uploads/tank/2021/11/1/a8a4b4d502044b45947f5cc983958d5a.stl', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":-1.9657886405128204,\"y\":58.43608934605173,\"z\":95.08485878055473}],\"label\":\"G\",\"labelPosition\":{\"x\":-1.9657886405128204,\"y\":58.43608934605173,\"z\":95.08485878055473}}]', 'STL', '2021-11-01 16:14:45');
INSERT INTO cd_treatment VALUES ('113', '14', null, '/uploads/tank/2021/11/1/b062696e04b848f29d2a9e573d88c151.mtl,/uploads/tank/2021/11/1/2ce35925ad184393a7e3736c071a059d.jpg,/uploads/tank/2021/11/1/65c69feae5224b57a3351b1db75b496c.obj', '[]', '', '2021-11-01 16:19:22');
INSERT INTO cd_treatment VALUES ('114', '14', null, '/uploads/tank/2021/11/1/1bbbe2fd2691461db1d401dd8a1cb002.stl', '[]', '', '2021-11-01 16:21:20');
INSERT INTO cd_treatment VALUES ('121', '15', null, '/uploads/tank/2021/11/1/ee09fefee6c44d149c01003748e7abf6.stl', '[{\"id\":1,\"type\":1,\"positionList\":[{\"x\":-0.2730181156562601,\"y\":52.80205427140133,\"z\":96.04906828025338}],\"label\":\"G\",\"labelPosition\":{\"x\":-0.2730181156562601,\"y\":52.80205427140133,\"z\":96.04906828025338}},{\"id\":2,\"type\":1,\"positionList\":[{\"x\":-2.507085785249771,\"y\":25.063983829647935,\"z\":93.17526368610436}],\"label\":\"Ns\",\"labelPosition\":{\"x\":-2.507085785249771,\"y\":25.063983829647935,\"z\":93.17526368610436}}]', 'Test', '2021-11-01 17:06:47');
INSERT INTO cd_treatment VALUES ('129', '15', null, '', '[]', '', '2021-11-01 17:17:42');
INSERT INTO cd_treatment VALUES ('130', '15', null, '', '[]', '', '2021-11-01 17:18:06');
INSERT INTO cd_treatment VALUES ('131', '15', null, '', '[]', '', '2021-11-01 17:19:11');
INSERT INTO cd_treatment VALUES ('132', '16', '/uploads/tank/2021/11/4/44f2f8673b4f4812844296645063b5bc.jpg', '', null, '是的', '2021-11-04 09:24:49');
INSERT INTO cd_treatment VALUES ('133', '17', '/uploads/tank/2021/11/4/1f72270f2a054d9fb2231bc139500eb3.png', '', null, '嘚', '2021-11-04 15:11:54');
INSERT INTO cd_treatment VALUES ('134', '18', '/uploads/tank/2021/11/4/853b8864d9b3490ba30be05868f89915.obj', '', null, '231', '2021-11-04 17:00:18');
INSERT INTO cd_treatment VALUES ('135', '19', '/uploads/tank/2021/11/5/cf438ea5fb734441bdc00edbddc32ab0.png', '', null, '123', '2021-11-05 10:14:02');
INSERT INTO cd_treatment VALUES ('136', '20', '/uploads/tank/2021/11/10/6f53a43d4ca74e1ab3616ac8f0897ac0.jpg', '', null, '22', '2021-11-10 09:25:17');
INSERT INTO cd_treatment VALUES ('137', '21', '/uploads/tank/2021/11/12/e9c7de4507f948f7be652d043ca64899.jpg', '', null, '45', '2021-11-12 17:38:07');

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
  `ID_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `role_id` int(11) DEFAULT NULL COMMENT '角色',
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `head_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `user_status` int(11) DEFAULT NULL COMMENT '用户状态,1为可用,2为停用',
  `create_time` datetime DEFAULT NULL COMMENT '账户创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of cd_user
-- ----------------------------
INSERT INTO cd_user VALUES ('1', 'admin', '5df1cd114dd7a60f302e942f8d61ef79', '管理员', null, '', '1', '105', '/uploads/tank/2021/6/18/af8a292eed4743bbbdf2f9caaa68a28e.jpg', '1', '2021-05-21 16:21:13');
INSERT INTO cd_user VALUES ('101', '测试', '9ad5ebaaa29133809c6b68a27a4c54cd', null, '2021-04-20 00:00:00', '', null, null, null, '1', '2021-04-26 09:55:07');
INSERT INTO cd_user VALUES ('102', '测试123', 'db701a0fd4bba45c6d4970a59de901d4', null, '2021-05-03 00:00:00', '', null, null, null, '1', '2021-04-26 10:12:28');
INSERT INTO cd_user VALUES ('103', '中国抗压大学', 'a3eedfa05dd6eafab634fef5079a5faa', null, '2021-05-03 00:00:00', '', null, null, null, '1', '2021-04-26 10:13:12');
INSERT INTO cd_user VALUES ('104', '明', '416d1867ee9d1b55583e14631d466fdb', null, '2021-03-17 00:00:00', '413026199609272174', null, null, null, '1', '2021-04-26 10:15:19');
INSERT INTO cd_user VALUES ('114', 'fd', '5b481d8ca96a483ca78077b8959bd08a', 'fd', null, '', '3', '105', null, '1', '2021-05-10 17:02:25');
INSERT INTO cd_user VALUES ('123', '1', '270004b793132609355f13b14d532d07', null, null, null, null, null, null, '1', '2021-06-03 15:12:58');
INSERT INTO cd_user VALUES ('124', '133', '5d46f37dae194080a84dc0fcf276d0d3', null, null, null, null, null, null, '1', '2021-06-03 15:15:22');
INSERT INTO cd_user VALUES ('125', '叶俊123', '37f00874163eb5a9d29eda4228dcd2c1', null, null, null, null, null, null, '1', '2021-06-03 15:16:23');
INSERT INTO cd_user VALUES ('126', '123', 'ee56d332029cf3c2fe8f1a2d00eb7b99', '123', '2021-10-18 00:00:00', '11323213', '44', '106', null, '1', '2021-10-18 09:35:04');
INSERT INTO cd_user VALUES ('129', '123456', '937819929587372828fbdaa2395d4f48', '123456', '2021-10-04 00:00:00', '2121', '2', '106', null, '1', '2021-10-19 16:43:30');
INSERT INTO cd_user VALUES ('131', '13811112222', '72753f38932b3dfd6e9e791f6fb5ffbe', '王五', '2020-11-03 00:00:00', '', '2', '121', null, '1', '2021-11-04 09:00:38');
INSERT INTO cd_user VALUES ('132', '13822223333', '7846185d288a0965706680ff3629df86', '张三', null, '', '4', '122', null, '1', '2021-11-04 09:02:24');
INSERT INTO cd_user VALUES ('133', '13833334444', '80f130f749bc4bbc46a64098d134e0f3', '李四', null, '', '4', '127', null, '1', '2021-11-04 09:22:11');
INSERT INTO cd_user VALUES ('134', '13844445555', 'c0c77c99f844001db487afcc2c503b8f', '孙六', null, '', '42', '109', null, '1', '2021-11-04 09:38:09');
INSERT INTO cd_user VALUES ('135', '13888889999', '8da4c42a028c0f3f4cc3141fb9a2a7c0', '赵', '2021-11-05 00:00:00', '', '2', '105', null, '1', '2021-11-05 09:05:47');
