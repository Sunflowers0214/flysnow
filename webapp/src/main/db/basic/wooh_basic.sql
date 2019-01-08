/*
Navicat MySQL Data Transfer

Source Server         : 养老平台库脚本V4.3.1
Source Server Version : 50623
Source Host           : 192.168.7.252:3606
Source Database       : wooh_basic_v3_test

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2018-12-04 09:41:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_datatable
-- ----------------------------
DROP TABLE IF EXISTS `t_datatable`;
CREATE TABLE `t_datatable` (
  `datatableid` varchar(32) NOT NULL DEFAULT '',
  `datatablename` varchar(30) DEFAULT NULL,
  `datatablechinname` varchar(20) DEFAULT NULL,
  `callclassobject` varchar(100) DEFAULT NULL,
  `databasename` varchar(20) DEFAULT NULL,
  `databaseuser` varchar(30) DEFAULT NULL,
  `ifoperatelog` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`datatableid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `departID` varchar(32) NOT NULL DEFAULT '',
  `departCode` varchar(20) DEFAULT NULL,
  `departName` varchar(100) NOT NULL,
  `departLevel` int(1) DEFAULT NULL,
  `parentDepartID` varchar(32) DEFAULT NULL,
  `departFullCode` varchar(200) DEFAULT NULL,
  `phone_no` varchar(25) DEFAULT NULL,
  `nodeOrder` int(9) DEFAULT NULL,
  `isleaf` varchar(1) DEFAULT 'Y' COMMENT 'Y 是 N 否',
  `DEPARTSIMPLEPIN` varchar(200) DEFAULT NULL,
  `DEPARTSpelling` varchar(500) DEFAULT NULL,
  `isValid` varchar(1) NOT NULL DEFAULT 'Y' COMMENT 'Y 有效 N 无效',
  `departBrevityCode` varchar(20) DEFAULT NULL,
  `ORGID` decimal(9,0) DEFAULT NULL,
  `businessType` varchar(1) DEFAULT NULL COMMENT '业务类型',
  `location` varchar(50) DEFAULT NULL COMMENT '位置',
  `area_code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `area_name` varchar(150) DEFAULT NULL COMMENT '区域名称',
  PRIMARY KEY (`departID`),
  KEY `FK_Reference_10` (`ORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `DICT_ID` varchar(32) NOT NULL DEFAULT '',
  `dict_code` varchar(20) DEFAULT NULL,
  `dict_name` varchar(50) DEFAULT NULL,
  `super_dict_id` varchar(32) DEFAULT NULL,
  `sib_order` int(5) DEFAULT '0',
  `isleaf` varchar(1) DEFAULT 'Y' COMMENT 'Y 叶节点N 非叶节点',
  `maint_flag` int(1) DEFAULT '0' COMMENT '0 可维护 1 不可维护',
  `DICT_TYPE` varchar(2) DEFAULT NULL,
  `DICT_SIMPLEPIN` varchar(100) DEFAULT NULL,
  `DICT_Spelling` varchar(250) DEFAULT NULL,
  `DICT_ITEMTABLENAME` varchar(100) DEFAULT NULL,
  `DICT_VERSIONID` varchar(20) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `choose` varchar(2) DEFAULT '0' COMMENT '单选多选，0：单选；1：多选',
  `other` varchar(2) DEFAULT '0' COMMENT '是否有其他，0：无其他；1：有其他',
  `isCommon` varchar(1) DEFAULT '' COMMENT '是否公共字典',
  PRIMARY KEY (`DICT_ID`),
  UNIQUE KEY `uniq` (`dict_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_item`;
CREATE TABLE `t_dict_item` (
  `item_id` varchar(32) NOT NULL DEFAULT '',
  `DICT_ID` varchar(32) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `fact_value` varchar(50) DEFAULT NULL,
  `append_value` varchar(200) DEFAULT NULL,
  `super_item_id` varchar(32) DEFAULT NULL,
  `sib_order` int(5) DEFAULT '0',
  `isleaf` varchar(1) DEFAULT 'Y' COMMENT 'Y 叶节点\r\n            N 非叶节点',
  `display_flag` int(1) DEFAULT '0' COMMENT '0  显示\r\n            1  不显示',
  `valid_flag` int(1) DEFAULT '0' COMMENT '0 有效\r\n            1 无效',
  `ITEM_SIMPLEPIN` varchar(200) DEFAULT NULL,
  `ITEM_Spelling` varchar(500) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `itemlevel` int(1) DEFAULT NULL,
  `dictitemFullCode` varchar(200) DEFAULT NULL,
  `ORGID` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FK_Relationship_1` (`DICT_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_function
-- ----------------------------
DROP TABLE IF EXISTS `t_function`;
CREATE TABLE `t_function` (
  `funcCode` varchar(50) NOT NULL,
  `funcName` varchar(100) DEFAULT NULL,
  `funcDefine` varchar(200) DEFAULT NULL,
  `funcType` int(1) DEFAULT NULL,
  PRIMARY KEY (`funcCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_globalpar
-- ----------------------------
DROP TABLE IF EXISTS `t_globalpar`;
CREATE TABLE `t_globalpar` (
  `globalparCode` varchar(50) NOT NULL,
  `globalparName` varchar(200) DEFAULT NULL,
  `globalparValue` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`globalparCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_interface_config
-- ----------------------------
DROP TABLE IF EXISTS `t_interface_config`;
CREATE TABLE `t_interface_config` (
  `id` varchar(32) NOT NULL,
  `versionfunkey` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `service_object` varchar(50) DEFAULT NULL,
  `operationtype` varchar(32) DEFAULT NULL,
  `objtype` varchar(30) DEFAULT NULL,
  `serviceid` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `service_name` varchar(30) DEFAULT NULL,
  `service_method` varchar(50) DEFAULT NULL,
  `logincheck` varchar(2) DEFAULT NULL,
  `interface_person` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `interface_status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for t_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `t_loginlog`;
CREATE TABLE `t_loginlog` (
  `loginlogid` varchar(32) NOT NULL DEFAULT '',
  `loginuserid` varchar(32) DEFAULT NULL,
  `useraccount` varchar(200) DEFAULT NULL,
  `username` varchar(120) DEFAULT NULL,
  `loginunitcode` varchar(200) DEFAULT NULL,
  `loginunitname` varchar(300) DEFAULT NULL,
  `loginip` varchar(20) DEFAULT NULL,
  `loginmac` varchar(20) DEFAULT NULL,
  `logintiime` datetime DEFAULT NULL,
  `quittime` date DEFAULT NULL,
  PRIMARY KEY (`loginlogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `menuCode` varchar(40) NOT NULL,
  `menuName` varchar(50) NOT NULL,
  `funcEntry` varchar(500) NOT NULL,
  `menuLevel` int(1) DEFAULT NULL,
  `parentMenuCode` varchar(40) NOT NULL,
  `menuFullCode` varchar(400) DEFAULT NULL,
  `menuFullName` varchar(400) DEFAULT NULL,
  `nodeOrder` int(9) DEFAULT NULL,
  `isLeaf` varchar(1) DEFAULT 'Y' COMMENT 'Y 是 N 否',
  `menuTypeName` varchar(20) DEFAULT NULL,
  `menuTypeCode` varchar(10) DEFAULT NULL,
  `MenuSpelling` varchar(250) DEFAULT NULL,
  `MenuSIMPLEPIN` varchar(100) DEFAULT NULL,
  `ORGID` decimal(9,0) NOT NULL,
  PRIMARY KEY (`menuCode`,`ORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_menusets
-- ----------------------------
DROP TABLE IF EXISTS `t_menusets`;
CREATE TABLE `t_menusets` (
  `id` varchar(32) NOT NULL,
  `menuSetsCode` varchar(40) DEFAULT NULL,
  `menuSetsName` varchar(50) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `isValid` varchar(4) DEFAULT NULL,
  `remarks` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for t_menusets_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menusets_menu`;
CREATE TABLE `t_menusets_menu` (
  `id` varchar(32) NOT NULL,
  `menuSetsId` varchar(32) DEFAULT NULL,
  `menuCode` varchar(40) DEFAULT NULL,
  `menuSetsCode` varchar(40) DEFAULT NULL,
  `menuorder` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for t_menusets_org
-- ----------------------------
DROP TABLE IF EXISTS `t_menusets_org`;
CREATE TABLE `t_menusets_org` (
  `id` varchar(32) NOT NULL,
  `menuSetsId` varchar(32) DEFAULT NULL,
  `orgid` int(9) DEFAULT NULL,
  `menuSetsCode` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for t_operatelog
-- ----------------------------
DROP TABLE IF EXISTS `t_operatelog`;
CREATE TABLE `t_operatelog` (
  `operatelogid` varchar(32) NOT NULL DEFAULT '',
  `operateunitcode` varchar(200) DEFAULT NULL,
  `operateunitname` varchar(300) DEFAULT NULL,
  `operateuserid` varchar(32) DEFAULT NULL,
  `useraccount` varchar(200) DEFAULT NULL,
  `username` varchar(120) DEFAULT NULL,
  `operateSystem` varchar(30) DEFAULT NULL,
  `operateModule` varchar(30) DEFAULT NULL,
  `operateSql` varchar(4000) DEFAULT NULL,
  `operateType` varchar(20) DEFAULT NULL,
  `operateDate` date DEFAULT NULL,
  `operateorgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`operatelogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_organization
-- ----------------------------
DROP TABLE IF EXISTS `t_organization`;
CREATE TABLE `t_organization` (
  `orgid` int(9) NOT NULL AUTO_INCREMENT,
  `ORGCODE` varchar(20) DEFAULT NULL,
  `ORGNAME` varchar(100) NOT NULL,
  `ORGLEVEL` decimal(1,0) DEFAULT NULL,
  `PORGID` decimal(9,0) DEFAULT NULL,
  `ORGFULLCODE` varchar(200) DEFAULT NULL,
  `NODEORDER` decimal(9,0) DEFAULT NULL,
  `ISLEAF` varchar(1) DEFAULT 'Y' COMMENT 'Y �� N ��',
  `ORGSIMPLEPIN` varchar(200) DEFAULT NULL,
  `ORGSPELLING` varchar(500) DEFAULT NULL,
  `ISVALID` varchar(1) NOT NULL DEFAULT 'Y' COMMENT 'Y ��Ч N ��Ч',
  `ORGBREVITYCODE` varchar(20) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `orgtype` varchar(10) DEFAULT NULL,
  `orgscale` varchar(10) DEFAULT NULL,
  `ismultiplenode` varchar(2) DEFAULT NULL,
  `ValidityBegin` date DEFAULT NULL,
  `ValidityEnd` date DEFAULT NULL,
  `sitenum` decimal(10,0) DEFAULT NULL,
  `usernum` decimal(10,0) DEFAULT NULL,
  `sitemenusets` varchar(30) DEFAULT NULL,
  `isshowsysname` varchar(2) DEFAULT NULL,
  `sysname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_param
-- ----------------------------
DROP TABLE IF EXISTS `t_param`;
CREATE TABLE `t_param` (
  `paramCode` varchar(50) NOT NULL,
  `paramName` varchar(50) DEFAULT NULL,
  `paramValue` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`paramCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_personal_systemkb
-- ----------------------------
DROP TABLE IF EXISTS `t_personal_systemkb`;
CREATE TABLE `t_personal_systemkb` (
  `userID` varchar(32) NOT NULL DEFAULT '',
  `personalsystemkbid` varchar(32) NOT NULL DEFAULT '',
  `kbtypecode` varchar(10) DEFAULT NULL,
  `kbtype` varchar(20) DEFAULT NULL,
  `kbcode` varchar(20) DEFAULT NULL,
  `kbname` varchar(50) DEFAULT NULL,
  `kbSIMPLEPIN` varchar(100) DEFAULT NULL,
  `kbSpelling` varchar(250) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `parentkbid` varchar(32) DEFAULT NULL,
  `kbidlevel` int(2) DEFAULT NULL,
  `isLeaf` varchar(1) DEFAULT NULL,
  `kbcodefullcode` varchar(500) DEFAULT NULL,
  `kbnamefullcode` varchar(500) DEFAULT NULL,
  `kbcontent` varchar(4000) DEFAULT NULL,
  `kborder` int(9) DEFAULT NULL,
  `leftvalue` int(9) DEFAULT NULL,
  `rightvalue` int(9) DEFAULT NULL,
  `remark` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`userID`,`personalsystemkbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_regversion_func
-- ----------------------------
DROP TABLE IF EXISTS `t_regversion_func`;
CREATE TABLE `t_regversion_func` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `pid` varchar(32) DEFAULT NULL,
  `isstandard` varchar(2) DEFAULT NULL,
  `issenior` varchar(2) DEFAULT NULL,
  `isinterprise` varchar(2) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `order` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_reg_apply
-- ----------------------------
DROP TABLE IF EXISTS `t_reg_apply`;
CREATE TABLE `t_reg_apply` (
  `id` varchar(32) NOT NULL,
  `org_name` varchar(50) DEFAULT NULL,
  `org_type` varchar(30) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `license` varchar(100) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `audit_date` timestamp NULL DEFAULT NULL,
  `audit_person` varchar(40) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `roleID` varchar(32) NOT NULL DEFAULT '',
  `departID` varchar(32) DEFAULT NULL,
  `roleName` varchar(50) NOT NULL,
  `roleDescription` varchar(100) DEFAULT NULL,
  `isValid` varchar(1) NOT NULL DEFAULT 'Y' COMMENT 'Y 有效 N 无效',
  `RoleSpelling` varchar(250) DEFAULT NULL,
  `RoleSIMPLEPIN` varchar(100) DEFAULT NULL,
  `roleGrade` varchar(30) DEFAULT NULL,
  `roleGradeCode` varchar(10) DEFAULT NULL,
  `ORGID` decimal(9,0) DEFAULT NULL,
  `classify` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`roleID`),
  KEY `FK_Relationship_7` (`departID`) USING BTREE,
  KEY `FK_Reference_12` (`ORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role_func
-- ----------------------------
DROP TABLE IF EXISTS `t_role_func`;
CREATE TABLE `t_role_func` (
  `roleID` varchar(32) NOT NULL DEFAULT '',
  `funcCode` varchar(50) NOT NULL,
  `param` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleID`,`funcCode`),
  KEY `FK_Relationship_14` (`funcCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `menuCode` varchar(40) NOT NULL,
  `roleID` varchar(32) NOT NULL DEFAULT '',
  `ORGID` decimal(9,0) DEFAULT NULL,
  `menuorder` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`menuCode`,`roleID`),
  KEY `FK_Func_Station` (`roleID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role_param
-- ----------------------------
DROP TABLE IF EXISTS `t_role_param`;
CREATE TABLE `t_role_param` (
  `roleID` varchar(32) NOT NULL DEFAULT '',
  `paramCode` varchar(50) NOT NULL,
  PRIMARY KEY (`roleID`,`paramCode`),
  KEY `FK_t_role_param2` (`paramCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_senior_query
-- ----------------------------
DROP TABLE IF EXISTS `t_senior_query`;
CREATE TABLE `t_senior_query` (
  `userID` varchar(32) NOT NULL DEFAULT '',
  `datatableid` varchar(32) NOT NULL DEFAULT '',
  `tablecolumnid` varchar(32) NOT NULL DEFAULT '',
  `menuCode` varchar(40) NOT NULL,
  `SeniorQueryID` varchar(32) NOT NULL DEFAULT '',
  `SeniorQueryName` varchar(40) DEFAULT NULL,
  `relation` varchar(10) DEFAULT NULL,
  `partentSeniorQueryID` varchar(32) DEFAULT NULL,
  `logicaljudgmentcode` varchar(20) DEFAULT NULL,
  `logicaljudgment` varchar(20) DEFAULT NULL,
  `columnvalue` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`datatableid`,`userID`,`tablecolumnid`,`menuCode`,`SeniorQueryID`),
  KEY `FK_Relationship_10` (`userID`) USING BTREE,
  KEY `FK_Relationship_11` (`datatableid`,`tablecolumnid`) USING BTREE,
  KEY `FK_Relationship_12` (`menuCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_service
-- ----------------------------
DROP TABLE IF EXISTS `t_service`;
CREATE TABLE `t_service` (
  `id` varchar(32) DEFAULT NULL,
  `serviceip` varchar(50) DEFAULT NULL,
  `servicename` varchar(100) DEFAULT NULL,
  `createuser` varchar(32) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `remark` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for t_sql_query
-- ----------------------------
DROP TABLE IF EXISTS `t_sql_query`;
CREATE TABLE `t_sql_query` (
  `code` varchar(100) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sql_content` varchar(4000) DEFAULT NULL,
  `order_by` varchar(500) DEFAULT NULL,
  `group_by` varchar(500) DEFAULT NULL,
  `is_removed` varchar(2) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `has_where` varchar(2) DEFAULT '0' COMMENT '没有where关键字',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_sql_replace
-- ----------------------------
DROP TABLE IF EXISTS `t_sql_replace`;
CREATE TABLE `t_sql_replace` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `sql_code` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `attribute` varchar(126) DEFAULT NULL,
  `replace_str` varchar(126) DEFAULT NULL,
  `is_removed` varchar(2) DEFAULT NULL,
  `description` varchar(126) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_sql_where
-- ----------------------------
DROP TABLE IF EXISTS `t_sql_where`;
CREATE TABLE `t_sql_where` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `sql_code` varchar(32) NOT NULL,
  `attribute` varchar(126) DEFAULT NULL,
  `expression` varchar(126) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `is_removed` varchar(2) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `data_class` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`,`sql_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_systemkb
-- ----------------------------
DROP TABLE IF EXISTS `t_systemkb`;
CREATE TABLE `t_systemkb` (
  `systemkbid` varchar(32) NOT NULL DEFAULT '',
  `kbtypecode` varchar(10) DEFAULT NULL,
  `kbtype` varchar(20) DEFAULT NULL,
  `kbcode` varchar(20) DEFAULT NULL,
  `kbname` varchar(50) DEFAULT NULL,
  `kbSIMPLEPIN` varchar(100) DEFAULT NULL,
  `kbSpelling` varchar(250) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `parentkbid` varchar(32) DEFAULT NULL,
  `kbidlevel` int(2) DEFAULT NULL,
  `isLeaf` varchar(1) DEFAULT NULL,
  `kbcodefullcode` varchar(500) DEFAULT NULL,
  `kbnamefullcode` varchar(500) DEFAULT NULL,
  `kbcontent` varchar(4000) DEFAULT NULL,
  `kborder` int(9) DEFAULT NULL,
  `leftvalue` int(9) DEFAULT NULL,
  `rightvalue` int(9) DEFAULT NULL,
  `remark` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`systemkbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_menu`;
CREATE TABLE `t_sys_menu` (
  `MENUCODE` varchar(40) NOT NULL,
  `MENUNAME` varchar(50) NOT NULL,
  `FUNCENTRY` varchar(500) NOT NULL,
  `MENULEVEL` decimal(1,0) DEFAULT NULL,
  `PARENTMENUCODE` varchar(40) NOT NULL,
  `MENUFULLCODE` varchar(400) DEFAULT NULL,
  `MENUFULLNAME` varchar(400) DEFAULT NULL,
  `NODEORDER` decimal(9,0) DEFAULT NULL,
  `ISLEAF` varchar(1) DEFAULT 'Y' COMMENT 'Y �� N ��',
  `MENUTYPENAME` varchar(20) DEFAULT NULL,
  `MENUTYPECODE` varchar(10) DEFAULT NULL,
  `MENUSPELLING` varchar(250) DEFAULT NULL,
  `MENUSIMPLEPIN` varchar(100) DEFAULT NULL,
  `validflag` varchar(1) DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`MENUCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_table_column
-- ----------------------------
DROP TABLE IF EXISTS `t_table_column`;
CREATE TABLE `t_table_column` (
  `datatableid` varchar(32) NOT NULL DEFAULT '',
  `tablecolumnid` varchar(32) NOT NULL DEFAULT '',
  `columncode` varchar(20) DEFAULT NULL,
  `columnname` varchar(20) DEFAULT NULL,
  `columntype` varchar(20) DEFAULT NULL,
  `columnlength` varchar(6) DEFAULT NULL,
  `columncalsses` varchar(2) DEFAULT NULL,
  `remark` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`datatableid`,`tablecolumnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userID` varchar(32) NOT NULL DEFAULT '',
  `departID` varchar(32) DEFAULT NULL,
  `userAccount` varchar(30) DEFAULT NULL,
  `userName` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `IDNum` varchar(20) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  `userOrder` int(9) DEFAULT '1',
  `isValid` varchar(1) NOT NULL DEFAULT 'Y' COMMENT 'Y 有效 N 无效',
  `NAMESpelling` varchar(600) DEFAULT NULL,
  `nameSIMPLEPIN` varchar(240) DEFAULT NULL,
  `ValidityBegin` date DEFAULT NULL,
  `ValidityEnd` date DEFAULT NULL,
  `TitlesCode` varchar(10) DEFAULT NULL,
  `Titles` varchar(30) DEFAULT NULL,
  `PostCode` varchar(20) DEFAULT NULL,
  `Post` varchar(30) DEFAULT NULL,
  `mypage` varchar(500) DEFAULT NULL,
  `two_dimension_code` varchar(50) DEFAULT NULL COMMENT '二维码',
  `ORGID` decimal(9,0) DEFAULT NULL,
  `classify` varchar(1) DEFAULT NULL,
  `registerDate` date DEFAULT NULL COMMENT '注册时间',
  `firstLoginDT` date DEFAULT NULL,
  `lastLoginDT` date DEFAULT NULL,
  `firstLoginType` varchar(10) DEFAULT NULL,
  `lastLoginType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `FK_Relationship_6` (`departID`) USING BTREE,
  KEY `FK_Reference_11` (`ORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user_data_value
-- ----------------------------
DROP TABLE IF EXISTS `t_user_data_value`;
CREATE TABLE `t_user_data_value` (
  `user_data_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  `data_type_code` varchar(32) NOT NULL,
  `data_value` varchar(1024) NOT NULL,
  PRIMARY KEY (`user_data_id`),
  UNIQUE KEY `role_id_data_type_code_index` (`role_id`,`data_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_user_permission`;
CREATE TABLE `t_user_permission` (
  `userID` varchar(32) DEFAULT NULL,
  `userAccount` varchar(30) DEFAULT NULL COMMENT '登录用户名',
  `permission_type` varchar(10) DEFAULT NULL COMMENT '允许登录的类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `roleID` varchar(32) NOT NULL DEFAULT '',
  `userID` varchar(32) NOT NULL DEFAULT '',
  `ORGID` decimal(9,0) NOT NULL,
  PRIMARY KEY (`roleID`,`userID`,`ORGID`),
  KEY `FK_Station_User` (`userID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_version
-- ----------------------------
DROP TABLE IF EXISTS `t_version`;
CREATE TABLE `t_version` (
  `id` varchar(32) NOT NULL,
  `versionkey` varchar(50) DEFAULT NULL,
  `versioncode` varchar(100) DEFAULT NULL,
  `versionnum` varchar(100) DEFAULT NULL,
  `isDefault` varchar(2) DEFAULT NULL,
  `serviceid` varchar(32) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `productcode` varchar(30) DEFAULT NULL,
  `versiontype` varchar(10) DEFAULT NULL,
  `joinvalue` varchar(225) DEFAULT NULL,
  `versionseq` int(11) DEFAULT NULL,
  `ismustupdate` varchar(2) DEFAULT NULL,
  `filesize` varchar(20) DEFAULT NULL,
  `adaptsystem` varchar(200) DEFAULT NULL,
  `createdate` DATETIME DEFAULT NULL,
  `bundleidentifier` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `plisturl` varchar(200) DEFAULT NULL,
  `union_service` varchar(32) DEFAULT NULL,
  `versioncontent` VARCHAR(1000) DEFAULT NULL,
  `filename` VARCHAR(50) DEFAULT NULL,
  `isusing`  VARCHAR(2) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for t_versionfunc
-- ----------------------------
DROP TABLE IF EXISTS `t_versionfunc`;
CREATE TABLE `t_versionfunc` (
  `id` varchar(32) DEFAULT NULL,
  `versionfunckey` varchar(50) DEFAULT NULL,
  `versionfuncname` varchar(100) DEFAULT NULL,
  `versionid` varchar(32) DEFAULT NULL,
  `serviceid` varchar(32) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `isdefault` varchar(2) DEFAULT NULL,
  `intfconfid` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for t_web_log
-- ----------------------------
DROP TABLE IF EXISTS `t_web_log`;
CREATE TABLE `t_web_log` (
  `weblogid` int(9) NOT NULL AUTO_INCREMENT,
  `requestip` varchar(20) DEFAULT NULL,
  `serverip` varchar(20) DEFAULT NULL,
  `sendbytes` int(9) DEFAULT NULL,
  `remotename` varchar(200) DEFAULT NULL,
  `httpagreement` varchar(20) DEFAULT NULL,
  `requesttype` varchar(20) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `querystring` varchar(4000) DEFAULT NULL,
  `httpfirst` varchar(4000) DEFAULT NULL,
  `httpstatus` int(4) DEFAULT NULL,
  `usersessionid` varchar(200) DEFAULT NULL,
  `requestdatetime` int(11) DEFAULT NULL,
  `urlpath` varchar(4000) DEFAULT NULL,
  `requestsecond` int(9) DEFAULT NULL,
  `userAgent` varchar(4000) DEFAULT NULL,
  `requestpath` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`weblogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS=1;