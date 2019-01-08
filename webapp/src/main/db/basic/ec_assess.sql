/*
Navicat MySQL Data Transfer

Source Server         : 国寿养老云
Source Server Version : 50636
Source Host           : 59.110.214.144:3306
Source Database       : ec_assess_v3_zhyl

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2018-12-06 18:12:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_hr_person
-- ----------------------------
DROP TABLE IF EXISTS `t_hr_person`;
CREATE TABLE `t_hr_person` (
  `person_id` varchar(32) NOT NULL,
  `userid` decimal(9,0) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `name_en` varchar(30) DEFAULT NULL,
  `gender` decimal(1,0) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` decimal(3,0) DEFAULT NULL,
  `id_card_type` decimal(1,0) NOT NULL,
  `id_no` varchar(18) NOT NULL,
  `picture` longblob,
  `householder_relation` varchar(3) DEFAULT NULL,
  `social_security` varchar(2) DEFAULT NULL,
  `social_security_no` varchar(30) DEFAULT NULL,
  `cellphone` varchar(15) NOT NULL,
  `email` varchar(70) DEFAULT NULL,
  `resident_type` decimal(1,0) DEFAULT NULL,
  `marital_status` decimal(1,0) DEFAULT NULL,
  `political_status` varchar(2) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `nationality_code` varchar(3) DEFAULT NULL,
  `occupation` varchar(10) DEFAULT NULL,
  `employ_status` decimal(1,0) DEFAULT NULL,
  `occu_quality` decimal(1,0) DEFAULT NULL,
  `nation_code` varchar(2) DEFAULT NULL,
  `ed_background` varchar(2) DEFAULT NULL,
  `graduate_time` date DEFAULT NULL,
  `graduate_academy` varchar(70) DEFAULT NULL,
  `degree_code` varchar(3) DEFAULT NULL,
  `profession` varchar(6) DEFAULT NULL,
  `start_work_time` date DEFAULT NULL,
  `work_unit_name` varchar(70) DEFAULT NULL,
  `work_department` varchar(70) DEFAULT NULL,
  `position_type` decimal(1,0) DEFAULT NULL,
  `duty` varchar(3) DEFAULT NULL,
  `position` decimal(1,0) DEFAULT NULL,
  `punishment_type` decimal(1,0) DEFAULT NULL,
  `award_type` decimal(1,0) DEFAULT NULL,
  `body_height` decimal(4,1) DEFAULT NULL,
  `body_weight` decimal(4,1) DEFAULT NULL,
  `chest_circum` decimal(4,1) DEFAULT NULL,
  `waist_line` decimal(4,1) DEFAULT NULL,
  `hip_circum` decimal(4,1) DEFAULT NULL,
  `SBP` decimal(3,0) DEFAULT NULL,
  `DBP` decimal(3,0) DEFAULT NULL,
  `ABO_type` decimal(1,0) DEFAULT NULL,
  `rh_type` decimal(1,0) DEFAULT NULL,
  `dis_type` varchar(3) DEFAULT NULL,
  `religion` varchar(2) DEFAULT NULL,
  `postalcode` decimal(6,0) DEFAULT NULL,
  `contac_address` varchar(100) DEFAULT NULL,
  `province` decimal(2,0) DEFAULT NULL,
  `city` decimal(4,0) DEFAULT NULL,
  `county` decimal(6,0) DEFAULT NULL,
  `township` decimal(9,0) DEFAULT NULL,
  `streetname` decimal(12,0) DEFAULT NULL,
  `housenumber` varchar(10) DEFAULT NULL,
  `info_status` varchar(2) DEFAULT NULL,
  `confidentiality` decimal(2,0) DEFAULT NULL,
  `create_person` varchar(32) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `create_orgid` decimal(9,0) DEFAULT NULL,
  `custodian_orgid` decimal(9,0) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `orgid` decimal(9,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='与户主关系（householder_relation）\r\n参考 CCV0218.01家庭和社会关系代码\r\n                                -&';

-- ----------------------------
-- Table structure for t_kb_app_msg_accept
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_app_msg_accept`;
CREATE TABLE `t_kb_app_msg_accept` (
  `msg_accept_id` varchar(32) NOT NULL,
  `msg_id` varchar(32) NOT NULL,
  `userid` varchar(32) DEFAULT NULL,
  `msg_accept_flag` decimal(1,0) DEFAULT NULL,
  `msg_accept_date` timestamp NULL DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_Time` timestamp NULL DEFAULT NULL,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`msg_accept_id`),
  KEY `FK_msg_id` (`msg_id`) USING BTREE,
  CONSTRAINT `t_kb_app_msg_accept_ibfk_1` FOREIGN KEY (`msg_id`) REFERENCES `t_kb_app_msg_base` (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_app_msg_base
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_app_msg_base`;
CREATE TABLE `t_kb_app_msg_base` (
  `msg_id` varchar(32) NOT NULL,
  `msg_name` varchar(50) NOT NULL,
  `msg_context` varchar(200) NOT NULL,
  `msg_level` decimal(1,0) NOT NULL,
  `is_valid` decimal(1,0) NOT NULL,
  `operate_person` varchar(32) NOT NULL,
  `operate_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_app_proposal
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_app_proposal`;
CREATE TABLE `t_kb_app_proposal` (
  `app_proposal_id` varchar(32) NOT NULL,
  `app_proposal_context` varchar(600) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NULL DEFAULT NULL,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`app_proposal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_aq_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_aq_subject`;
CREATE TABLE `t_kb_aq_subject` (
  `aq_subject_id` varchar(32) NOT NULL,
  `questionnaire_id` varchar(32) DEFAULT NULL,
  `main_questionnaire_id` varchar(32) DEFAULT NULL,
  `aq_subject_code` varchar(30) DEFAULT NULL,
  `aq_subject_name` varchar(255) DEFAULT NULL,
  `aq_subject_type` varchar(3) DEFAULT NULL,
  `aq_subject_no` decimal(5,0) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`aq_subject_id`),
  KEY `FK_Relationship_18` (`questionnaire_id`) USING BTREE,
  CONSTRAINT `t_kb_aq_subject_ibfk_1` FOREIGN KEY (`questionnaire_id`) REFERENCES `t_kb_assess_questionnaire` (`questionnaire_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_aq_subject_option
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_aq_subject_option`;
CREATE TABLE `t_kb_aq_subject_option` (
  `subject_option_id` varchar(32) NOT NULL,
  `aq_subject_id` varchar(32) DEFAULT NULL,
  `subject_option_code` varchar(3) DEFAULT NULL,
  `subject_option_name` varchar(500) DEFAULT NULL,
  `subject_option_score` decimal(5,2) DEFAULT NULL,
  `subject_option_weight` decimal(2,2) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`subject_option_id`),
  KEY `FK_Relationship_87` (`aq_subject_id`) USING BTREE,
  CONSTRAINT `t_kb_aq_subject_option_ibfk_1` FOREIGN KEY (`aq_subject_id`) REFERENCES `t_kb_aq_subject` (`aq_subject_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_assessment_report
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_assessment_report`;
CREATE TABLE `t_kb_assessment_report` (
  `report_id` varchar(32) NOT NULL,
  `questionnaire_result_id` varchar(32) DEFAULT NULL,
  `person_id` varchar(32) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` decimal(1,0) DEFAULT NULL,
  `age` decimal(3,0) DEFAULT NULL,
  `guide_advice` varchar(2000) DEFAULT NULL,
  `evaluator` varchar(32) DEFAULT NULL,
  `evaluator_name` varchar(30) DEFAULT NULL,
  `evaluate_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  KEY `FK_Relationship_15` (`person_id`) USING BTREE,
  KEY `FK_Relationship_16` (`questionnaire_result_id`) USING BTREE,
  CONSTRAINT `t_kb_assessment_report_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `t_hr_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_kb_assessment_report_ibfk_2` FOREIGN KEY (`questionnaire_result_id`) REFERENCES `t_kb_questionnaire_result` (`questionnaire_result_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_assess_algorithm
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_assess_algorithm`;
CREATE TABLE `t_kb_assess_algorithm` (
  `assess_algorithm_id` varchar(32) NOT NULL,
  `algorithm_code` varchar(30) DEFAULT NULL,
  `algorithm_name` varchar(100) DEFAULT NULL,
  `algorithm_type` decimal(3,0) DEFAULT NULL,
  `algorithm_entrance` varchar(100) DEFAULT NULL,
  `algorithm_desc` varchar(1000) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`assess_algorithm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_assess_guide
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_assess_guide`;
CREATE TABLE `t_kb_assess_guide` (
  `assess_guide_id` varchar(32) NOT NULL,
  `qs_standard_id` varchar(32) DEFAULT NULL,
  `questionnaire_id` varchar(32) DEFAULT NULL,
  `main_questionnaire_id` varchar(32) DEFAULT NULL,
  `guide_item_code` varchar(50) DEFAULT NULL,
  `guide_item_content` varchar(20000) DEFAULT NULL,
  `qss_grade` decimal(2,0) DEFAULT NULL,
  `qss_grade_desc` varchar(100) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`assess_guide_id`),
  KEY `FK_Relationship_19` (`qs_standard_id`) USING BTREE,
  KEY `FK_Relationship_95` (`questionnaire_id`) USING BTREE,
  CONSTRAINT `t_kb_assess_guide_ibfk_1` FOREIGN KEY (`qs_standard_id`) REFERENCES `t_kb_questionnaire_assess_standard` (`qs_standard_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_kb_assess_guide_ibfk_2` FOREIGN KEY (`questionnaire_id`) REFERENCES `t_kb_assess_questionnaire` (`questionnaire_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='\r\n指导条目代码(guide_item_code)定义规范：\r\n主分类代码-次分类代码-四位数字，例如：\r\n老年人能力评估，包含四个一级指标：日常生活活动、精神状态、感知觉与沟通、社会参与，代码定义如下：\r\nelder-daily-0000\r\nelder-mind-0000\r\nelder-sense-0001\r\nelder-social-0010';

-- ----------------------------
-- Table structure for t_kb_assess_questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_assess_questionnaire`;
CREATE TABLE `t_kb_assess_questionnaire` (
  `questionnaire_id` varchar(32) NOT NULL,
  `aq_code` varchar(50) DEFAULT NULL,
  `aq_name` varchar(50) DEFAULT NULL,
  `aq_type` varchar(3) DEFAULT NULL,
  `aq_pid` varchar(32) DEFAULT NULL,
  `aq_level` varchar(2) DEFAULT NULL,
  `aq_full_path` varchar(100) DEFAULT NULL,
  `aq_highest_score` decimal(5,2) DEFAULT NULL,
  `aq_lowest_score` decimal(5,2) DEFAULT NULL,
  `questionnaire_template_id_ref` varchar(32) DEFAULT NULL,
  `enabled_flag` decimal(1,0) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_eva_task
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_eva_task`;
CREATE TABLE `t_kb_eva_task` (
  `kb_eva_task_id` varchar(32) NOT NULL COMMENT '评估任务ID',
  `apply_id` varchar(32) NOT NULL COMMENT '长照申请基本信息表id（经办系统中表）',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `idcard_no` varchar(32) NOT NULL COMMENT '身份证号',
  `sex` varchar(4) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `age` decimal(3,0) DEFAULT NULL COMMENT '年龄',
  `contact_address` varchar(32) DEFAULT NULL COMMENT '联系住址',
  `eva_type` decimal(1,0) DEFAULT NULL COMMENT '评估类型  0 初评\\\\r\\\\n            1 复评\\\\r\\\\n            2  年度复评',
  `eva_plan_time` datetime DEFAULT NULL COMMENT '评估排期',
  `eva_mode` decimal(1,0) DEFAULT NULL COMMENT '评估方式  0  现场评估\\\\r\\\\n            1  机构评估\\\\r\\\\n            2  资料复评',
  `eva_org_id` varchar(32) DEFAULT NULL COMMENT '评估机构ID',
  `eva_org_name` varchar(50) DEFAULT NULL COMMENT '评估机构名称',
  `handler_id` varchar(32) DEFAULT NULL COMMENT '经办人ID',
  `handler_name` varchar(50) DEFAULT NULL COMMENT '经办人姓名',
  `eva_expert` varchar(100) DEFAULT NULL COMMENT '评估专家',
  `eva_time` datetime DEFAULT NULL COMMENT '实际评估日期',
  `eva_verdict` decimal(1,0) DEFAULT NULL COMMENT '评估结论   1  重度失能一级\\r\\n            2  重度失能二级\\r\\n            3  重度失能三级',
  `eva_record` varchar(1000) DEFAULT NULL COMMENT '现场评估记录',
  `eva_detail_id` varchar(32) DEFAULT NULL COMMENT '记录评估系统的对应评估结果ID',
  `finished_flag` decimal(1,0) DEFAULT '0' COMMENT '办结标志   0  待办\\r\\n            1  已办',
  `questionnaire_id` varchar(32) DEFAULT NULL COMMENT '评估问卷id',
  PRIMARY KEY (`kb_eva_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评估任务';

-- ----------------------------
-- Table structure for t_kb_eva_task_material
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_eva_task_material`;
CREATE TABLE `t_kb_eva_task_material` (
  `eva_material_id` varchar(32) NOT NULL COMMENT '评估资料ID',
  `kb_eva_task_id` varchar(32) DEFAULT NULL COMMENT '评估任务ID',
  `attach_type` varchar(50) DEFAULT NULL COMMENT '资料类别',
  `file_type` varchar(50) DEFAULT NULL COMMENT '文件类型',
  `file_path` varchar(200) DEFAULT NULL COMMENT '文件路径',
  PRIMARY KEY (`eva_material_id`),
  KEY `FK_Relationship_1` (`kb_eva_task_id`) USING BTREE,
  CONSTRAINT `t_kb_eva_task_material_ibfk_1` FOREIGN KEY (`kb_eva_task_id`) REFERENCES `t_kb_eva_task` (`kb_eva_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='现场资料';

-- ----------------------------
-- Table structure for t_kb_gender_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_gender_rule`;
CREATE TABLE `t_kb_gender_rule` (
  `gender_rule_id` varchar(32) NOT NULL,
  `questionnaire_id_ref` varchar(32) DEFAULT NULL,
  `aq_subject_id_ref` varchar(32) DEFAULT NULL,
  `gender` decimal(1,0) DEFAULT NULL,
  `aq_subject_no` decimal(5,0) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`gender_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_guide
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_guide`;
CREATE TABLE `t_kb_guide` (
  `kb_guide_id` varchar(32) NOT NULL,
  `report_id` varchar(32) DEFAULT NULL,
  `guide_item_name` varchar(50) DEFAULT NULL,
  `guide_item_content` varchar(20000) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`kb_guide_id`),
  KEY `FK_Relationship_17` (`report_id`) USING BTREE,
  CONSTRAINT `t_kb_guide_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `t_kb_assessment_report` (`report_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_questionaire_algorithm
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_questionaire_algorithm`;
CREATE TABLE `t_kb_questionaire_algorithm` (
  `questionaire_algorithm_id` varchar(32) NOT NULL,
  `questionnaire_id` varchar(32) DEFAULT NULL,
  `algorithm_code` varchar(30) DEFAULT NULL,
  `algorithm_entrance` varchar(100) DEFAULT NULL,
  `algorithm_priority` decimal(2,0) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`questionaire_algorithm_id`),
  KEY `FK_Relationship_20` (`questionnaire_id`) USING BTREE,
  CONSTRAINT `t_kb_questionaire_algorithm_ibfk_1` FOREIGN KEY (`questionnaire_id`) REFERENCES `t_kb_assess_questionnaire` (`questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_questionnaire_assess_standard
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_questionnaire_assess_standard`;
CREATE TABLE `t_kb_questionnaire_assess_standard` (
  `qs_standard_id` varchar(32) NOT NULL,
  `questionnaire_id` varchar(32) NOT NULL,
  `main_questionnaire_id` varchar(32) NOT NULL,
  `qss_lowest_score` decimal(5,2) DEFAULT NULL,
  `qss_highest_score` decimal(5,2) DEFAULT NULL,
  `qss_grade` decimal(2,0) DEFAULT NULL,
  `qss_grade_desc` varchar(100) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`qs_standard_id`),
  KEY `FK_Relationship_81` (`questionnaire_id`) USING BTREE,
  CONSTRAINT `t_kb_questionnaire_assess_standard_ibfk_1` FOREIGN KEY (`questionnaire_id`) REFERENCES `t_kb_assess_questionnaire` (`questionnaire_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_questionnaire_result
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_questionnaire_result`;
CREATE TABLE `t_kb_questionnaire_result` (
  `questionnaire_result_id` varchar(32) NOT NULL,
  `parent_result_id` varchar(32) DEFAULT NULL COMMENT '上级结果ID',
  `questionnaire_id` varchar(32) DEFAULT NULL,
  `person_id` varchar(32) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `qr_score` decimal(5,2) DEFAULT NULL,
  `qr_type` decimal(2,0) DEFAULT NULL,
  `qr_initial_grade` decimal(2,0) DEFAULT NULL,
  `qr_initial_grade_desc` varchar(100) DEFAULT NULL,
  `qr_grade` decimal(2,0) DEFAULT NULL,
  `qr_grade_desc` varchar(100) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`questionnaire_result_id`),
  KEY `FK_Relationship_14` (`person_id`) USING BTREE,
  KEY `FK_Relationship_86` (`questionnaire_id`) USING BTREE,
  CONSTRAINT `t_kb_questionnaire_result_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `t_hr_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_kb_questionnaire_result_ibfk_2` FOREIGN KEY (`questionnaire_id`) REFERENCES `t_kb_assess_questionnaire` (`questionnaire_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_questionnaire_template
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_questionnaire_template`;
CREATE TABLE `t_kb_questionnaire_template` (
  `questionnaire_template_id` varchar(32) NOT NULL,
  `template_code` varchar(30) DEFAULT NULL,
  `template_name` varchar(50) DEFAULT NULL,
  `template_type` decimal(3,0) DEFAULT NULL,
  `template_path` varchar(100) DEFAULT NULL,
  `template_style` longblob,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`questionnaire_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_subject_assess_standard
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_subject_assess_standard`;
CREATE TABLE `t_kb_subject_assess_standard` (
  `sa_standard_id` varchar(32) NOT NULL,
  `aq_subject_id` varchar(32) DEFAULT NULL,
  `sas_highest_score` decimal(5,2) DEFAULT NULL,
  `sas_lowest_score` decimal(5,2) DEFAULT NULL,
  `sas_grade` decimal(2,0) DEFAULT NULL,
  `sas_grade_desc` varchar(100) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`sa_standard_id`),
  KEY `FK_Relationship_82` (`aq_subject_id`) USING BTREE,
  CONSTRAINT `t_kb_subject_assess_standard_ibfk_1` FOREIGN KEY (`aq_subject_id`) REFERENCES `t_kb_aq_subject` (`aq_subject_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_subject_result
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_subject_result`;
CREATE TABLE `t_kb_subject_result` (
  `subject_result_id` varchar(32) NOT NULL,
  `aq_subject_id` varchar(32) DEFAULT NULL,
  `questionnaire_result_id` varchar(32) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sr_answer` varchar(10) DEFAULT NULL,
  `sr_score` decimal(5,2) DEFAULT NULL,
  `sr_grade` decimal(2,0) DEFAULT NULL,
  `sr_result` varchar(10) DEFAULT NULL,
  `aq_subject_no` decimal(5,0) DEFAULT NULL,
  `is_valid` decimal(1,0) DEFAULT NULL,
  `operate_person` varchar(32) DEFAULT NULL,
  `operate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orgid` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`subject_result_id`),
  KEY `FK_Relationship_13` (`questionnaire_result_id`) USING BTREE,
  KEY `FK_Relationship_83` (`aq_subject_id`) USING BTREE,
  CONSTRAINT `t_kb_subject_result_ibfk_1` FOREIGN KEY (`questionnaire_result_id`) REFERENCES `t_kb_questionnaire_result` (`questionnaire_result_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_kb_subject_result_ibfk_2` FOREIGN KEY (`aq_subject_id`) REFERENCES `t_kb_aq_subject` (`aq_subject_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_kb_subject_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_kb_subject_rule`;
CREATE TABLE `t_kb_subject_rule` (
  `subject_rule_id` varchar(32) NOT NULL,
  `questionnaire_id_ref` varchar(32) DEFAULT NULL,
  `aq_subject_id_ref` varchar(32) DEFAULT NULL,
  `subject_option_id_ref` varchar(32) DEFAULT NULL,
  `subject_option_code` varchar(3) DEFAULT NULL,
  `next_subject_no` decimal(5,0) DEFAULT NULL,
  `aq_subject_property` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`subject_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
