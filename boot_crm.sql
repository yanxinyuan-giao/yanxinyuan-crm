/*
Navicat MySQL Data Transfer

Source Server         : yxy
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : boot_crm

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-06-18 10:52:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_dict
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '001', '客户所属行业', 'A 农、林、牧、渔业', '', '1', '1', null);
INSERT INTO `base_dict` VALUES ('10', '001', '客户所属行业', 'J 金融业', '', '10', '1', null);
INSERT INTO `base_dict` VALUES ('11', '001', '客户所属行业', 'K 房地产业', null, '11', '1', null);
INSERT INTO `base_dict` VALUES ('12', '001', '客户所属行业', 'L 租赁和商务服务业', null, '12', '1', null);
INSERT INTO `base_dict` VALUES ('13', '001', '客户所属行业', 'M 科学研究和技术服务业', '', '13', '1', null);
INSERT INTO `base_dict` VALUES ('14', '001', '客户所属行业', 'N 水利、环境和公共设施管理业', '', '14', '1', null);
INSERT INTO `base_dict` VALUES ('15', '001', '客户所属行业', 'O 居民服务、修理和其他服务业', null, '15', '1', null);
INSERT INTO `base_dict` VALUES ('16', '001', '客户所属行业', 'P 教育', null, '16', '1', null);
INSERT INTO `base_dict` VALUES ('17', '001', '客户所属行业', 'Q 卫生和社会工作', '', '17', '1', null);
INSERT INTO `base_dict` VALUES ('18', '001', '客户所属行业', 'R 文化、体育和娱乐业', '', '18', '1', null);
INSERT INTO `base_dict` VALUES ('19', '001', '客户所属行业', 'S 公共管理、社会保障和社会组织', null, '19', '1', null);
INSERT INTO `base_dict` VALUES ('2', '001', '客户所属行业', 'B 采矿业', '', '2', '1', null);
INSERT INTO `base_dict` VALUES ('20', '001', '客户所属行业', 'T 国际组织', null, '20', '1', null);
INSERT INTO `base_dict` VALUES ('21', '001', '客户所属行业', 'U 其他行业', null, '21', '1', null);
INSERT INTO `base_dict` VALUES ('22', '002', '客户来源', '网络营销', '', '2', '1', '');
INSERT INTO `base_dict` VALUES ('23', '002', '客户来源', '电话营销', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('24', '006', '客户级别', 'VIP客户', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('25', '006', '客户级别', '普通客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('3', '001', '客户所属行业', 'C 制造业', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('4', '001', '客户所属行业', 'D 电力、热力、燃气及水生产和供应业', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('5', '001', '客户所属行业', 'E 建筑业', '', '5', '1', null);
INSERT INTO `base_dict` VALUES ('6', '001', '客户所属行业', 'F 交通运输、仓储和邮政业', '', '6', '1', null);
INSERT INTO `base_dict` VALUES ('7', '001', '客户所属行业', 'G 信息传输、软件和信息技术服务业', null, '7', '1', null);
INSERT INTO `base_dict` VALUES ('8', '001', '客户所属行业', 'H 批发和零售业', null, '8', '1', null);
INSERT INTO `base_dict` VALUES ('9', '001', '客户所属行业', 'I 住宿和餐饮业', '', '9', '1', null);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(50) NOT NULL COMMENT '客户名称',
  `cust_user_id` int(32) DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` int(32) DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(50) DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(50) DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(50) DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) DEFAULT NULL COMMENT '移动电话',
  `cust_zipcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `cust_address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '小闫', '1', '1', '22', '1', '24', '闫欣元', '010-88888888', '13466960914', '044100', '山西省运城市', '2020-05-27 13:22:16');
INSERT INTO `customer` VALUES ('2', '小刘', '1', '1', '22', '2', '25', '闫欣元', '010-88888888', '19862530001', '273100', '山东省济宁市', '2020-05-27 15:56:43');
INSERT INTO `customer` VALUES ('3', '小颜', '1', '1', '22', '3', '25', '闫欣元', '010-88888888', '19862530002', '273100', '山东省济宁市', '2020-05-27 16:00:16');
INSERT INTO `customer` VALUES ('4', '小陈', null, '1', '22', '4', '24', '闫欣元', '010-88888888', '19862530003', '253000', '山东省德州市', '2020-05-27 18:48:07');
INSERT INTO `customer` VALUES ('5', '小彭', null, '1', '23', '5', '25', '闫欣元', '010-88888888', '19862530004', '271000', '山东省泰安市', '2020-05-27 18:49:40');
INSERT INTO `customer` VALUES ('6', '小张', null, '1', '22', '6', '24', '闫欣元', '010-88888888', '19862530005', '236400', '安徽省阜阳市', '2020-05-27 18:50:59');
INSERT INTO `customer` VALUES ('7', '小峰', null, '1', '22', '7', '24', '闫欣元', '010-88888888', '19862530006', '250000', '山东省济南市', '2020-05-27 18:52:12');
INSERT INTO `customer` VALUES ('8', '小王', null, '1', '22', '8', '25', '闫欣元', '010-88888888', '19862530007', '255200', '山东省淄博市', '2020-05-27 18:53:25');
INSERT INTO `customer` VALUES ('9', '小秦', null, '1', '23', '9', '24', '闫欣元', '010-88888888', '19862530008', '253000', '山东省德州市', '2020-05-27 18:54:53');
INSERT INTO `customer` VALUES ('10', '小坤', null, '1', '22', '10', '24', '闫欣元', '010-88888888', '19862530009', '272500', '山东省济宁市', '2020-05-27 18:56:08');
INSERT INTO `customer` VALUES ('11', '小强', null, '1', '22', '11', '25', '闫欣元', '010-88888888', '19862530010', '276000', '山东省临沂市', '2020-05-27 18:57:17');
INSERT INTO `customer` VALUES ('12', '小邓', null, '1', '22', '12', '24', '闫欣元', '010-88888888', '19862530011', '657000', '云南省昭通市', '2020-05-27 19:04:50');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'yanxinyuan', '闫欣元', '123456', '1');
