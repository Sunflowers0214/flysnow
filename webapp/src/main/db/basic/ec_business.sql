/*
Navicat MySQL Data Transfer

Source Server         : 智慧养老表结构
Source Server Version : 50623
Source Database       : ec_business_v3_test
Source Host           : 192.168.7.252:3606
Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2018-12-04 09:41:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_account
-- ----------------------------
DROP TABLE IF EXISTS `tb_account`;
CREATE TABLE `tb_account` (
  `account_id` varchar(32) NOT NULL COMMENT 'account_id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `institution_id` varchar(32) DEFAULT NULL,
  `account_code` varchar(30) DEFAULT NULL COMMENT '账号编码',
  `account_balance` decimal(10,2) DEFAULT NULL COMMENT '账户余额',
  `currency` varchar(30) DEFAULT NULL COMMENT '币种',
  `open_time` datetime DEFAULT NULL COMMENT '开户时间',
  `close_time` datetime DEFAULT NULL COMMENT '销户时间',
  `account_type` varchar(30) DEFAULT NULL COMMENT '账户类型',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `account_integration` decimal(10,2) DEFAULT NULL COMMENT '账户积分',
  `virtual_currency` decimal(10,2) DEFAULT NULL COMMENT '虚拟币',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='金额账户';

-- ----------------------------
-- Table structure for tb_account_alert
-- ----------------------------
DROP TABLE IF EXISTS `tb_account_alert`;
CREATE TABLE `tb_account_alert` (
  `account_alert_id` varchar(32) NOT NULL COMMENT 'account_alert_id',
  `account_alert_amount` decimal(10,2) DEFAULT NULL COMMENT '预警金额',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`account_alert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户预警';

-- ----------------------------
-- Table structure for tb_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_account_detail`;
CREATE TABLE `tb_account_detail` (
  `account_detail_id` varchar(32) NOT NULL COMMENT 'account_detail_id',
  `account_id` varchar(32) DEFAULT NULL COMMENT 'account_id',
  `bill_no` varchar(20) DEFAULT NULL COMMENT 'bill_no',
  `busi_bill_id` varchar(32) DEFAULT NULL COMMENT '业务单据id',
  `busi_bill_type` varchar(20) DEFAULT NULL COMMENT '业务单据类型',
  `occurrence_time` datetime DEFAULT NULL COMMENT '业务发生时间',
  `income_type` varchar(30) DEFAULT NULL COMMENT '收支类型',
  `account_detail_amount` decimal(10,2) DEFAULT NULL COMMENT '台帐金额',
  `payment_type` varchar(32) DEFAULT NULL COMMENT '付款方式',
  `payer_payee` varchar(20) DEFAULT NULL COMMENT '付款收款人姓名',
  `balance_code` varchar(30) DEFAULT NULL COMMENT '单据编码',
  `catagory_level_1` varchar(32) DEFAULT NULL COMMENT '大分类编码',
  `catagory_level_1_name` varchar(20) DEFAULT NULL COMMENT '大分类名称',
  `catagory_level_2` varchar(32) DEFAULT NULL COMMENT '中分类编码',
  `catagory_level_2_name` varchar(20) DEFAULT NULL COMMENT '中分类名称',
  `catagory_level_3` varchar(32) DEFAULT NULL COMMENT '小分类编码',
  `catagory_level_3_name` varchar(30) DEFAULT NULL COMMENT '小分类名称',
  `operate_man_name` varchar(30) DEFAULT NULL COMMENT '操作人姓名',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `account_period` varchar(10) DEFAULT NULL COMMENT '账期',
  PRIMARY KEY (`account_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='金额台帐';

-- ----------------------------
-- Table structure for tb_account_receivable
-- ----------------------------
DROP TABLE IF EXISTS `tb_account_receivable`;
CREATE TABLE `tb_account_receivable` (
  `receivablel_id` varchar(32) NOT NULL COMMENT '应收单id',
  `balance_id` varchar(32) DEFAULT NULL COMMENT 'balance_id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `institution_id` varchar(32) DEFAULT NULL,
  `busi_bill_id` varchar(32) DEFAULT NULL COMMENT '业务单据id',
  `busi_bill_type` varchar(20) DEFAULT NULL COMMENT '业务单据类型',
  `occurrence_time` datetime DEFAULT NULL COMMENT '业务发生时间',
  `busi_start_time` varchar(20) DEFAULT NULL COMMENT '费用开始日期',
  `busi_end_time` varchar(20) DEFAULT NULL COMMENT '费用结束日期',
  `busi_bill_desc1` varchar(50) DEFAULT NULL COMMENT '业务说明1',
  `busi_bill_desc2` varchar(50) DEFAULT NULL COMMENT '业务说明2',
  `busi_bill_desc3` varchar(50) DEFAULT NULL COMMENT '业务说明3',
  `catagory_level_1` varchar(32) DEFAULT NULL COMMENT '大分类编码',
  `catagory_level_1_name` varchar(20) DEFAULT NULL COMMENT '大分类名称',
  `catagory_level_2` varchar(32) DEFAULT NULL COMMENT '中分类编码',
  `catagory_level_2_name` varchar(20) DEFAULT NULL COMMENT '中分类名称',
  `catagory_level_3` varchar(32) DEFAULT NULL COMMENT '小分类编码',
  `catagory_level_3_name` varchar(30) DEFAULT NULL COMMENT '小分类名称',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `display_amount` varchar(50) DEFAULT NULL COMMENT '表示金额',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`receivablel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应收单';

-- ----------------------------
-- Table structure for tb_activity_action
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_action`;
CREATE TABLE `tb_activity_action` (
  `activity_id` varchar(32) DEFAULT NULL COMMENT '活动id',
  `activity_action_id` varchar(32) DEFAULT NULL COMMENT '活动操作id',
  `action_user_id` varchar(32) DEFAULT NULL COMMENT '活动操作人Id',
  `action_user_name` varchar(50) DEFAULT NULL COMMENT '活动操作人姓名',
  `action_type` varchar(8) DEFAULT NULL COMMENT '活动操作类型, 1:喜欢,2:分享',
  `action_time` datetime DEFAULT NULL COMMENT '活动操作时间',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `depart_code` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动喜欢动作';

-- ----------------------------
-- Table structure for tb_activity_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_evaluation`;
CREATE TABLE `tb_activity_evaluation` (
  `activity_evaluation_id` varchar(32) NOT NULL COMMENT '活动评价ID',
  `activity_id` varchar(32) DEFAULT NULL COMMENT '活动id',
  `evaluation_user_id` varchar(32) NOT NULL COMMENT '评价用户id',
  `evaluation_user_name` varchar(50) DEFAULT NULL COMMENT '评价用户姓名',
  `evaluation_content` varchar(1024) DEFAULT NULL COMMENT '评价内容',
  `evaluation_star_level` varchar(64) DEFAULT NULL COMMENT '评价满意度',
  `evaluation_star_level_name` varchar(50) DEFAULT NULL COMMENT '评价满意度名称',
  `evaluation_label_titles` varchar(128) DEFAULT NULL COMMENT '评价标签,多个使用英文逗号分隔',
  `evaluation_time` datetime DEFAULT NULL COMMENT '评价时间',
  `sign_status` varchar(2) DEFAULT NULL COMMENT '是否报名',
  `evaluation_period` varchar(2) DEFAULT NULL COMMENT '评价活动阶段,1:报名中,2进行中,3:结束',
  `terminal_type` varchar(10) DEFAULT NULL COMMENT '评价终端类型, iphone,android,ipad',
  `activity_user_type` varchar(2) DEFAULT NULL COMMENT '活动对象类型:1：客户，2：员工，3：志愿者',
  `praise_num` int(11) DEFAULT NULL COMMENT '点赞数',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`activity_evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动评价';

-- ----------------------------
-- Table structure for tb_activity_evaluation_praise
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_evaluation_praise`;
CREATE TABLE `tb_activity_evaluation_praise` (
  `activity_prase_id` varchar(32) NOT NULL COMMENT '评价点赞id',
  `activity_evaluation_id` varchar(32) DEFAULT NULL COMMENT '活动评价ID',
  `evaluation_user_id` varchar(32) DEFAULT NULL COMMENT '评价用户id',
  `evaluation_user_name` varchar(50) DEFAULT NULL COMMENT '评价用户姓名',
  `activity_prase_content` varchar(50) DEFAULT NULL COMMENT '点赞内容,1:赞',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`activity_prase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动评价点赞';

-- ----------------------------
-- Table structure for tb_activity_evaluation_reply
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_evaluation_reply`;
CREATE TABLE `tb_activity_evaluation_reply` (
  `activity_evaluation_id` varchar(32) DEFAULT NULL COMMENT '活动评价ID',
  `reply_id` varchar(32) DEFAULT NULL COMMENT '评价回复id',
  `reply_content` varchar(512) DEFAULT NULL COMMENT '评价回复内容',
  `reply_user_id` varchar(32) DEFAULT NULL COMMENT '评价回复者id',
  `reply_user_name` varchar(50) DEFAULT NULL COMMENT '评价回复者名字',
  `reply_time` datetime DEFAULT NULL COMMENT '评价回复时间',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动评价回复';

-- ----------------------------
-- Table structure for tb_activity_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_info`;
CREATE TABLE `tb_activity_info` (
  `activity_id` varchar(32) NOT NULL COMMENT '活动id',
  `activity_code` varchar(13) DEFAULT NULL COMMENT '活动编号',
  `activity_name` varchar(128) DEFAULT NULL COMMENT '活动名称',
  `activity_org_dept_code` varchar(32) DEFAULT NULL COMMENT '筹办部门',
  `activity_org_dept_name` varchar(128) DEFAULT NULL COMMENT '筹办部门名称',
  `activity_master` varchar(20) DEFAULT NULL COMMENT '活动负责人',
  `activity_beg_tm` datetime NOT NULL COMMENT '活动开始时间',
  `activity_end_tm` datetime NOT NULL COMMENT '活动结束时间',
  `activity_sub_beg_tm` datetime DEFAULT NULL COMMENT '活动预约开始时间',
  `activity_sub_end_tm` datetime DEFAULT NULL COMMENT '活动预约结束时间',
  `activity_type` varchar(2) DEFAULT NULL COMMENT '活动类型',
  `activity_address` varchar(50) DEFAULT NULL COMMENT '活动地点',
  `master_tel` varchar(18) DEFAULT NULL COMMENT '负责人电话',
  `activity_abstract` varchar(50) DEFAULT NULL COMMENT '活动简介',
  `activity_detail` varchar(200) DEFAULT NULL COMMENT '活动详情',
  `activity_summary` varchar(200) DEFAULT NULL COMMENT '活动总结',
  `h5_address` varchar(50) DEFAULT NULL COMMENT 'h5页面地址',
  `release_user_id` varchar(32) DEFAULT NULL COMMENT '活动发布人id',
  `release_user_name` varchar(50) DEFAULT NULL COMMENT '活动发布人姓名',
  `release_time` datetime DEFAULT NULL COMMENT '活动发布时间',
  `cancel_user_id` varchar(32) DEFAULT NULL COMMENT '活动取消人id',
  `cancel_user_name` varchar(50) DEFAULT NULL COMMENT '活动取消人姓名',
  `cancel_time` datetime DEFAULT NULL COMMENT '活动取消时间',
  `referee_status` varchar(2) DEFAULT NULL COMMENT '是否被推荐',
  `referee_user_id` varchar(32) DEFAULT NULL COMMENT '活动推荐人id',
  `referee_user_name` varchar(50) DEFAULT NULL COMMENT '推荐人姓名',
  `referee_time` datetime DEFAULT NULL COMMENT '推荐时间',
  `activity_num` int(4) DEFAULT NULL COMMENT '活动人数',
  `activity_cost` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(512) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动信息';

-- ----------------------------
-- Table structure for tb_activity_participator
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_participator`;
CREATE TABLE `tb_activity_participator` (
  `participator_id` varchar(32) NOT NULL COMMENT '报名行ID',
  `activity_id` varchar(32) DEFAULT NULL COMMENT '活动id',
  `activity_user_id` varchar(32) DEFAULT NULL COMMENT '活动对象ID',
  `activity_user_name` varchar(50) DEFAULT NULL COMMENT '活动对象姓名',
  `participator_type` varchar(8) DEFAULT NULL COMMENT '活动参与者类型',
  `telephone` varchar(18) DEFAULT NULL COMMENT '报名者电话',
  `id_card` varchar(18) DEFAULT NULL COMMENT '报名者身份证号',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL COMMENT '报名者家庭住址',
  `is_intention` varchar(2) DEFAULT NULL COMMENT '是否意向客户',
  `pay_amount` decimal(10,2) DEFAULT NULL COMMENT '报名缴费金额',
  `cost_type` varchar(2) DEFAULT NULL,
  `pay_status` char(1) DEFAULT NULL COMMENT '交费状态, 0:免费，1：未交费，2：已交费',
  `pay_id` varchar(100) DEFAULT NULL COMMENT '缴费ID',
  `participator_status` varchar(2) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`participator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动报名';

-- ----------------------------
-- Table structure for tb_activity_photo
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_photo`;
CREATE TABLE `tb_activity_photo` (
  `photo_id` varchar(32) NOT NULL,
  `photo_url` varchar(100) NOT NULL COMMENT '照片',
  `photo_num` int(11) DEFAULT NULL COMMENT '图片编号',
  `fun_type` varchar(4) NOT NULL COMMENT '业务模块:1:活动背景图片,2:活动评价图片,3:活动总结图片',
  `fun_table` varchar(128) DEFAULT NULL COMMENT '业务所属表',
  `fun_id` varchar(32) NOT NULL COMMENT '业务ID',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动介绍图片';

-- ----------------------------
-- Table structure for tb_activity_range_define
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_range_define`;
CREATE TABLE `tb_activity_range_define` (
  `range_define_id` varchar(32) NOT NULL,
  `activity_id` varchar(32) DEFAULT NULL COMMENT '活动id',
  `activity_user_type` varchar(2) DEFAULT NULL COMMENT '活动对象类型:1：客户，2：员工，3：志愿者',
  `activity_range_type` varchar(2) DEFAULT NULL COMMENT '发布范围类型，10：老人全部，11：老人自定义，20：员工全部，21：员工自定义,30:志愿者全部，31：志愿者自定义',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`range_define_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动发布范围定义';

-- ----------------------------
-- Table structure for tb_activity_range_obj
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_range_obj`;
CREATE TABLE `tb_activity_range_obj` (
  `range_obj_id` varchar(32) NOT NULL,
  `range_define_id` varchar(32) DEFAULT NULL,
  `activity_code` varchar(13) DEFAULT NULL COMMENT '活动编号',
  `activity_user_id` varchar(32) DEFAULT NULL COMMENT '活动对象ID',
  `activity_user_name` varchar(50) DEFAULT NULL COMMENT '活动对象姓名',
  `activity_user_type` varchar(2) DEFAULT NULL COMMENT '活动对象类型:1：客户，2：员工，3：志愿者',
  `activity_range_type` varchar(2) DEFAULT NULL COMMENT '发布范围类型，10：老人全部，11：老人自定义，20：员工全部，21：员工自定义,30:志愿者全部，31：志愿者自定义',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`range_obj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动发布范围对象';

-- ----------------------------
-- Table structure for tb_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `tb_advertisement`;
CREATE TABLE `tb_advertisement` (
  `advertisement_id` varchar(32) NOT NULL COMMENT 'advertisement_id',
  `advertisement_img` varchar(256) DEFAULT NULL COMMENT 'advertisement_img',
  `advertisement_desc` varchar(200) DEFAULT NULL COMMENT '广告描述',
  `advertisement_url` varchar(256) DEFAULT NULL COMMENT '跳转地址',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`advertisement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='app首页广告';

-- ----------------------------
-- Table structure for tb_applicant_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_applicant_history`;
CREATE TABLE `tb_applicant_history` (
  `applicant_delay_id` varchar(32) NOT NULL COMMENT '预约延期ID',
  `applicant_info_id` varchar(32) DEFAULT NULL COMMENT '预约ID',
  `applicant_in_date_old` date DEFAULT NULL COMMENT '原预入住日期',
  `applicant_in_date` date DEFAULT NULL COMMENT '新预入住日期',
  `delay_reason` varchar(200) DEFAULT NULL COMMENT '延期原因',
  `delay_time` datetime DEFAULT NULL COMMENT '延期时间',
  `delay_operator` varchar(50) DEFAULT NULL COMMENT '延期操作人',
  PRIMARY KEY (`applicant_delay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约延期信息';

-- ----------------------------
-- Table structure for tb_applicant_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_applicant_info`;
CREATE TABLE `tb_applicant_info` (
  `applicant_info_id` varchar(32) NOT NULL COMMENT '预约ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `applicant_name` varchar(50) DEFAULT NULL COMMENT '预约人姓名',
  `applicant_sex` varchar(10) DEFAULT NULL COMMENT '预约人性别',
  `applicant_tel` varchar(20) DEFAULT NULL COMMENT '预约人电话',
  `party_type` varchar(10) DEFAULT NULL COMMENT '关系类型',
  `applicant_amount` decimal(10,2) DEFAULT NULL COMMENT '预定金',
  `applicant_in_date` date DEFAULT NULL COMMENT '预约入住日期',
  `is_shuttle` varchar(2) DEFAULT NULL COMMENT '是否需要派车去接',
  `applicant_date` date DEFAULT NULL COMMENT '预约日期',
  `applicant_operator` varchar(50) DEFAULT NULL COMMENT '预约操作人',
  `room_bed` varchar(200) DEFAULT NULL COMMENT '预定房间',
  `applicant_amount_return` decimal(10,0) DEFAULT NULL COMMENT '退费金额',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构编码',
  PRIMARY KEY (`applicant_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约信息';

-- ----------------------------
-- Table structure for tb_app_version
-- ----------------------------
DROP TABLE IF EXISTS `tb_app_version`;
CREATE TABLE `tb_app_version` (
  `version_id` varchar(32) NOT NULL COMMENT 'id',
  `isMustUpdate` varchar(2) DEFAULT NULL COMMENT '是否前置更新',
  `version_url` varchar(50) DEFAULT NULL COMMENT '版本下载地址',
  `version_num` varchar(20) DEFAULT NULL COMMENT '最新版本号',
  `version_type` varchar(12) DEFAULT NULL COMMENT '版本类型',
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='app版本更新';

-- ----------------------------
-- Table structure for tb_assist_move_check
-- ----------------------------
DROP TABLE IF EXISTS `tb_assist_move_check`;
CREATE TABLE `tb_assist_move_check` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `commit_tm` varchar(6) DEFAULT NULL COMMENT '提交时间',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `enquip_type` varchar(32) DEFAULT NULL COMMENT '设备类型',
  `machine_name` varchar(20) DEFAULT NULL COMMENT '机器名称',
  `machine_no` varchar(35) DEFAULT NULL COMMENT '机器编号',
  `work_content` varchar(20) DEFAULT NULL COMMENT '工作内容',
  `work_result` varchar(10) DEFAULT NULL COMMENT '工作结果',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='辅助移动机器检查';

-- ----------------------------
-- Table structure for tb_balance
-- ----------------------------
DROP TABLE IF EXISTS `tb_balance`;
CREATE TABLE `tb_balance` (
  `balance_id` varchar(32) NOT NULL COMMENT 'balance_id',
  `balance_code` varchar(30) DEFAULT NULL COMMENT '单据编码',
  `balancer` varchar(32) DEFAULT NULL COMMENT '结算人',
  `prov_balance_date` datetime DEFAULT NULL,
  `balance_amount` decimal(10,2) DEFAULT NULL COMMENT '结算金额',
  `other_amount` decimal(10,2) DEFAULT NULL COMMENT '其他增减项',
  `other_content` varchar(200) DEFAULT NULL COMMENT '增减项说明',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `payee` varchar(20) DEFAULT NULL COMMENT '收款人',
  `elder_code` varchar(32) DEFAULT NULL,
  `account_period` varchar(10) DEFAULT NULL COMMENT '账期',
  `tran_status` varchar(2) DEFAULT NULL COMMENT '交账状态',
  `check_status` varchar(2) DEFAULT NULL COMMENT '核对状态',
  `payee_id` varchar(32) DEFAULT NULL COMMENT '收款人id',
  PRIMARY KEY (`balance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算单';

-- ----------------------------
-- Table structure for tb_balance_bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_balance_bill_detail`;
CREATE TABLE `tb_balance_bill_detail` (
  `balance_detail_id` varchar(32) NOT NULL COMMENT 'balance_detail_id',
  `balance_id` varchar(32) DEFAULT NULL COMMENT 'balance_id',
  `payment_type` varchar(32) DEFAULT NULL COMMENT '付款方式',
  `money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`balance_detail_id`),
  KEY `FK_Relationship_11` (`balance_id`),
  CONSTRAINT `FK_Relationship_11` FOREIGN KEY (`balance_id`) REFERENCES `tb_balance` (`balance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算单明细';

-- ----------------------------
-- Table structure for tb_balance_receivable
-- ----------------------------
DROP TABLE IF EXISTS `tb_balance_receivable`;
CREATE TABLE `tb_balance_receivable` (
  `receivable_id` varchar(32) DEFAULT NULL COMMENT '应收单id',
  `balance_id` varchar(32) DEFAULT NULL COMMENT 'balance_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算单结算的应收单';

-- ----------------------------
-- Table structure for tb_bath_care
-- ----------------------------
DROP TABLE IF EXISTS `tb_bath_care`;
CREATE TABLE `tb_bath_care` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `assist_shower` varchar(4) DEFAULT NULL COMMENT '协助冲凉',
  `shower_tm` varchar(6) DEFAULT NULL COMMENT '协助冲凉时间',
  `wipe_digit` varchar(4) DEFAULT NULL COMMENT '抹指趾缝',
  `digit_tm` varchar(6) DEFAULT NULL COMMENT '抹指趾缝时间',
  `apply_moisturizer` varchar(4) DEFAULT NULL COMMENT '涂润肤膏',
  `moisturizer_tm` varchar(6) DEFAULT NULL COMMENT '涂润肤膏时间',
  `apply_prect_cream` varchar(4) DEFAULT NULL COMMENT '涂保护膏',
  `prect_cream_tm` varchar(6) DEFAULT NULL COMMENT '涂保护膏时间',
  `scrub_body` varchar(4) DEFAULT NULL COMMENT '擦洗身体',
  `scrub_body_tm` varchar(6) DEFAULT NULL COMMENT '擦洗身体时间',
  `wash_perineum` varchar(4) DEFAULT NULL COMMENT '清洗会阴',
  `wash_perineum_tm` varchar(6) DEFAULT NULL COMMENT '清洗会阴时间',
  `institution_id` varchar(32) DEFAULT NULL,
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='沐浴照顾';

-- ----------------------------
-- Table structure for tb_bedclothes
-- ----------------------------
DROP TABLE IF EXISTS `tb_bedclothes`;
CREATE TABLE `tb_bedclothes` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `commit_tm` varchar(6) DEFAULT NULL COMMENT '提交时间',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `check_content` varchar(20) DEFAULT NULL COMMENT '检查内容',
  `work_result` varchar(10) DEFAULT NULL COMMENT '工作结果',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='床上用品';

-- ----------------------------
-- Table structure for tb_bed_change
-- ----------------------------
DROP TABLE IF EXISTS `tb_bed_change`;
CREATE TABLE `tb_bed_change` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `building_no` varchar(32) DEFAULT NULL COMMENT '楼号',
  `building_name` varchar(20) DEFAULT NULL,
  `floor_no` varchar(32) DEFAULT NULL COMMENT '楼层代码',
  `floor_name` varchar(20) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL COMMENT '区域',
  `room_no` varchar(32) DEFAULT NULL COMMENT '房间编号',
  `room_name` varchar(20) DEFAULT NULL,
  `bed_no` varchar(32) DEFAULT NULL COMMENT '床位代码',
  `in_room_num` varchar(20) DEFAULT NULL,
  `is_single` varchar(4) DEFAULT NULL COMMENT '是否包间',
  `begin_date` datetime NOT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `change_type` int(11) DEFAULT NULL COMMENT '变动类型',
  `change_reason` varchar(200) DEFAULT NULL COMMENT '变更原因',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老人床位变动信息';

-- ----------------------------
-- Table structure for tb_bed_change_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_bed_change_history`;
CREATE TABLE `tb_bed_change_history` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `building_no` varchar(32) DEFAULT NULL COMMENT '楼号',
  `building_name` varchar(20) DEFAULT NULL,
  `floor_no` varchar(32) DEFAULT NULL COMMENT '楼层代码',
  `floor_name` varchar(20) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL COMMENT '区域',
  `room_no` varchar(32) DEFAULT NULL COMMENT '房间编号',
  `room_name` varchar(20) DEFAULT NULL,
  `bed_no` varchar(32) DEFAULT NULL COMMENT '床位代码',
  `in_room_num` varchar(20) DEFAULT NULL,
  `is_single` varchar(4) DEFAULT NULL COMMENT '是否包间',
  `begin_date` datetime NOT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `change_type` int(11) DEFAULT NULL COMMENT '变动类型',
  `change_reason` varchar(200) DEFAULT NULL COMMENT '变更原因',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老人床位变动信息';

-- ----------------------------
-- Table structure for tb_bed_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_bed_info`;
CREATE TABLE `tb_bed_info` (
  `BED_NO` varchar(32) NOT NULL COMMENT '床位代码',
  `room_no` varchar(32) NOT NULL COMMENT '房间编号',
  `region_no` varchar(32) DEFAULT NULL COMMENT 'region_no',
  `in_room_num` varchar(3) DEFAULT NULL COMMENT '房间内序号',
  `bed_fee` decimal(8,2) DEFAULT NULL COMMENT '收费标准',
  `floor_no` varchar(32) DEFAULT NULL COMMENT '楼层代码',
  `bed_type` varchar(1) DEFAULT NULL COMMENT '床位类型',
  `bed_status` varchar(1) DEFAULT NULL COMMENT '床位状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `service_time` datetime DEFAULT NULL COMMENT '录入系统开始服务时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='床位信息';

-- ----------------------------
-- Table structure for tb_building_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_building_info`;
CREATE TABLE `tb_building_info` (
  `building_no` varchar(32) NOT NULL COMMENT '楼号',
  `building_name` varchar(20) DEFAULT NULL COMMENT '楼名称',
  `building_address` varchar(20) DEFAULT NULL COMMENT '楼地址',
  `building_contactor` varchar(20) DEFAULT NULL COMMENT '联系人',
  `building_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `building_desc` varchar(100) DEFAULT NULL COMMENT '楼宇描述',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼信息';

-- ----------------------------
-- Table structure for tb_card_account
-- ----------------------------
DROP TABLE IF EXISTS `tb_card_account`;
CREATE TABLE `tb_card_account` (
  `card_account_id` varchar(32) NOT NULL COMMENT 'card_account_id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `institution_id` varchar(32) DEFAULT NULL,
  `card_account_code` varchar(30) DEFAULT NULL COMMENT '服务卡账户编码',
  `service_item_id` varchar(32) DEFAULT NULL COMMENT 'service_item_id',
  `remain_count` int(11) DEFAULT NULL COMMENT '剩余次数',
  `card_number` varchar(16) DEFAULT NULL COMMENT '卡号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务卡账户';

-- ----------------------------
-- Table structure for tb_card_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_card_account_detail`;
CREATE TABLE `tb_card_account_detail` (
  `card_account_detail_id` varchar(32) NOT NULL COMMENT 'card_account_detail_id',
  `card_account_id` varchar(32) DEFAULT NULL COMMENT 'card_account_id',
  `busi_bill_id` varchar(32) DEFAULT NULL COMMENT '业务单据id',
  `busi_bill_type` varchar(20) DEFAULT NULL COMMENT '业务单据类型',
  `service_item_id` varchar(32) DEFAULT NULL COMMENT 'service_item_id',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`card_account_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务卡账户明细';

-- ----------------------------
-- Table structure for tb_care_record_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_care_record_info`;
CREATE TABLE `tb_care_record_info` (
  `id` varchar(32) NOT NULL COMMENT '任务id',
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `twld_ns` int(11) DEFAULT NULL COMMENT '体温量度ns',
  `xymb_ns` int(11) DEFAULT NULL COMMENT '血压脉搏ns',
  `xtld_ns` int(11) DEFAULT NULL COMMENT '心跳量度ns',
  `hxld_ns` int(11) DEFAULT NULL COMMENT '呼吸量度ns',
  `xycl_ns` int(11) DEFAULT NULL COMMENT '血氧测量ns',
  `kfxt_ns` int(11) DEFAULT NULL COMMENT '空腹血糖ns',
  `chxt_ns` int(11) DEFAULT NULL COMMENT '餐后血糖ns',
  `ghnd_ns` int(11) DEFAULT NULL COMMENT '更换尿袋ns',
  `ghng_ns` int(11) DEFAULT NULL COMMENT '更换尿管ns',
  `ghwg_ns` int(11) DEFAULT NULL COMMENT '更换胃管ns',
  `fxyc_ns` int(11) DEFAULT NULL COMMENT '发现异常ns',
  `cyfw` int(11) DEFAULT NULL COMMENT '穿衣服务',
  `qcsx` int(11) DEFAULT NULL COMMENT '起床梳洗',
  `kqqj` int(11) DEFAULT NULL COMMENT '口腔清洁',
  `qxjy` int(11) DEFAULT NULL COMMENT '清洗假牙',
  `lf` int(11) DEFAULT NULL COMMENT '理发',
  `myzg` int(11) DEFAULT NULL COMMENT '沐浴照顾',
  `jzzj` int(11) DEFAULT NULL COMMENT '剪趾指甲',
  `ptyy` int(11) DEFAULT NULL COMMENT '护理老人',
  `gsyy` int(11) DEFAULT NULL COMMENT '鼻饲老人',
  `rc` int(11) DEFAULT NULL COMMENT '如厕',
  `cltw` int(11) DEFAULT NULL COMMENT '测量体温',
  `cltz` int(11) DEFAULT NULL COMMENT '测量体重',
  `nyjc` int(11) DEFAULT NULL COMMENT '尿液检测',
  `wczs` int(11) DEFAULT NULL COMMENT '卧床转身',
  `ghnp` int(11) DEFAULT NULL COMMENT '更换尿片',
  `ysgc` int(11) DEFAULT NULL COMMENT '约束观察',
  `fxyc` int(11) DEFAULT NULL COMMENT '发现异常pcw',
  `jshd` int(11) DEFAULT NULL COMMENT '接送活动',
  `qxjc` int(11) DEFAULT NULL COMMENT '器械检查',
  `wcjjs` int(11) DEFAULT NULL COMMENT '五常家居',
  `shjl` int(11) DEFAULT NULL COMMENT '生活记录',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='护理记录信息,应该是护理pad端 护理次数记录的表';

-- ----------------------------
-- Table structure for tb_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart` (
  `userid` varchar(32) NOT NULL COMMENT '用户id',
  `item_id` varchar(32) NOT NULL COMMENT '物品id',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_cash_bill
-- ----------------------------
DROP TABLE IF EXISTS `tb_cash_bill`;
CREATE TABLE `tb_cash_bill` (
  `cash_bill_id` varchar(32) NOT NULL COMMENT 'cash_bill_id',
  `cash_bill_code` varchar(30) DEFAULT NULL COMMENT '现金单据编码',
  `institution_id` varchar(32) DEFAULT NULL,
  `target_institution_id` varchar(32) DEFAULT NULL COMMENT '目标机构',
  `target_handler` varchar(32) DEFAULT NULL COMMENT '目标机构经手人',
  `target_handler_name` varchar(30) DEFAULT NULL COMMENT '目标机构经手人名称',
  `institution_handler` varchar(32) DEFAULT NULL COMMENT '机构处理人',
  `institution_handler_name` varchar(30) DEFAULT NULL COMMENT '机构处理人名称',
  `currency` varchar(30) DEFAULT NULL COMMENT '币种',
  `payment_type` varchar(32) DEFAULT NULL COMMENT '付款方式',
  `payment_amount` decimal(10,2) DEFAULT NULL COMMENT '付款金额',
  `income_type` varchar(30) DEFAULT NULL COMMENT '收支类型',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='现金单据';

-- ----------------------------
-- Table structure for tb_cash_bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_cash_bill_detail`;
CREATE TABLE `tb_cash_bill_detail` (
  `cash_bill_detail_id` varchar(32) NOT NULL COMMENT 'cash_bill_detail_id',
  `cash_bill_id` varchar(32) DEFAULT NULL COMMENT 'cash_bill_id',
  `busi_bill_id` varchar(32) DEFAULT NULL COMMENT '业务单据id',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `busi_bill_type` varchar(20) DEFAULT NULL COMMENT '业务单据类型',
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cash_bill_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='现金单据明细';

-- ----------------------------
-- Table structure for tb_change_diapers
-- ----------------------------
DROP TABLE IF EXISTS `tb_change_diapers`;
CREATE TABLE `tb_change_diapers` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `is_finish` varchar(2) DEFAULT NULL COMMENT '完成',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='更换尿片';

-- ----------------------------
-- Table structure for tb_change_urinbag
-- ----------------------------
DROP TABLE IF EXISTS `tb_change_urinbag`;
CREATE TABLE `tb_change_urinbag` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `no_chg_reason` varchar(48) DEFAULT NULL COMMENT '未更换原因',
  `is_chg` varchar(4) DEFAULT NULL COMMENT '是否更换',
  `chg_date` date DEFAULT NULL COMMENT '更换日期',
  `chg_time` varchar(4) DEFAULT NULL COMMENT '更换时间',
  `uri_amount` varchar(20) DEFAULT NULL COMMENT '小便量',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='更换尿袋';

-- ----------------------------
-- Table structure for tb_chg_prone_position
-- ----------------------------
DROP TABLE IF EXISTS `tb_chg_prone_position`;
CREATE TABLE `tb_chg_prone_position` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `prone_position` varchar(4) DEFAULT NULL COMMENT '姿势',
  `prone_tm` varchar(6) DEFAULT NULL COMMENT '转身时间',
  `relieve_press` varchar(4) DEFAULT NULL COMMENT '减轻皮肤受压',
  `relieve_press_tm` varchar(6) DEFAULT NULL COMMENT '减轻皮肤受压时间',
  `clean_skin` varchar(4) DEFAULT NULL COMMENT '清洁皮肤',
  `clean_skin_tm` varchar(6) DEFAULT NULL COMMENT '清洁皮肤时间',
  `wash_perineum` varchar(4) DEFAULT NULL COMMENT '清洗会阴',
  `wash_perineum_tm` varchar(6) DEFAULT NULL COMMENT '清洗会阴时间',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卧床转身';

-- ----------------------------
-- Table structure for tb_chg_stomackthroat
-- ----------------------------
DROP TABLE IF EXISTS `tb_chg_stomackthroat`;
CREATE TABLE `tb_chg_stomackthroat` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `chg_date` date DEFAULT NULL COMMENT '更换日期',
  `chg_time` varchar(4) DEFAULT NULL COMMENT '更换时间',
  `tube_type` varchar(20) DEFAULT NULL COMMENT '管类',
  `tube_size` varchar(20) DEFAULT NULL COMMENT '管尺寸',
  `change_rate` varchar(20) DEFAULT NULL COMMENT '更换间隔星期',
  `next_chg_dt` date DEFAULT NULL COMMENT '下次更换时间',
  `is_chg` varchar(4) DEFAULT NULL COMMENT '是否更换',
  `no_chg_reason` varchar(48) DEFAULT NULL COMMENT '未更换原因',
  `stomach_content` varchar(20) DEFAULT NULL COMMENT '胃容物',
  `stomach_content_amount` varchar(20) DEFAULT NULL COMMENT '胃容物量',
  `stomach_content_ph` varchar(20) DEFAULT NULL COMMENT '胃容物PH值',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='更换胃喉';

-- ----------------------------
-- Table structure for tb_chg_urinethroat
-- ----------------------------
DROP TABLE IF EXISTS `tb_chg_urinethroat`;
CREATE TABLE `tb_chg_urinethroat` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `chg_date` date DEFAULT NULL COMMENT '更换日期',
  `chg_time` varchar(4) DEFAULT NULL COMMENT '更换时间',
  `tube_type` varchar(20) DEFAULT NULL COMMENT '管类',
  `tube_size` varchar(20) DEFAULT NULL COMMENT '管尺寸',
  `change_rate` varchar(20) DEFAULT NULL COMMENT '更换间隔星期',
  `next_chg_dt` date DEFAULT NULL COMMENT '下次更换时间',
  `is_chg` varchar(4) DEFAULT NULL COMMENT '是否更换',
  `water_inject` varchar(20) DEFAULT NULL COMMENT '注水量',
  `uri_amount` varchar(20) DEFAULT NULL COMMENT '小便量',
  `no_chg_reason` varchar(48) DEFAULT NULL COMMENT '未更换原因',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='更换尿喉';

-- ----------------------------
-- Table structure for tb_complaint
-- ----------------------------
DROP TABLE IF EXISTS `tb_complaint`;
CREATE TABLE `tb_complaint` (
  `complaint_id` varchar(32) NOT NULL COMMENT 'Ͷ����ϢID',
  `institution_id` int(11) DEFAULT NULL,
  `complaint_time` datetime DEFAULT NULL COMMENT 'Ͷ��ʱ��',
  `complaint_type` varchar(32) DEFAULT NULL,
  `complaint_request` varchar(200) DEFAULT NULL COMMENT '�ͻ�����',
  `complaint_response` varchar(200) DEFAULT NULL COMMENT '����������',
  `complaintor` varchar(32) DEFAULT NULL,
  `complaintor_name` varchar(30) DEFAULT NULL,
  `complainted_object` varchar(30) DEFAULT NULL,
  `dispatch_detail_id` varchar(32) DEFAULT NULL,
  `dealing_people` varchar(32) DEFAULT NULL,
  `treat_results` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL COMMENT 'init enabled disable complete checked non-checked',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '�Ƿ���Ч',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `operate_man` varchar(32) DEFAULT NULL COMMENT '������',
  `operate_reason` varchar(100) DEFAULT NULL COMMENT '����ԭ��',
  `memo` varchar(255) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_constraints_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `tb_constraints_evaluation`;
CREATE TABLE `tb_constraints_evaluation` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `evaluate_code` varchar(32) DEFAULT NULL COMMENT '评估代码',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `evaluate_date` varchar(10) NOT NULL COMMENT '约束评估日期',
  `evaluate_time` datetime DEFAULT NULL COMMENT '评价时间',
  `evaluation_type` varchar(10) DEFAULT NULL COMMENT '评估l类型',
  `spirit_exception` varchar(48) DEFAULT NULL COMMENT '精神异常类型',
  `fall_risk_type` varchar(48) DEFAULT NULL COMMENT '跌倒危险类型',
  `poor_posture_reasion` varchar(48) DEFAULT NULL COMMENT '不良坐姿原因',
  `extract_lifesup_type` varchar(48) DEFAULT NULL COMMENT '拔维生品类型',
  `extract_clean_type` varchar(48) DEFAULT NULL COMMENT '拔卫生品类型',
  `evaluate_goods` varchar(20) DEFAULT NULL COMMENT '约束种类',
  `use_time` varchar(30) DEFAULT NULL COMMENT '使用时段',
  `incase_need` varchar(48) DEFAULT NULL COMMENT '需要时用',
  `use_position` varchar(20) DEFAULT NULL COMMENT '使用位置',
  `other_note` varchar(200) DEFAULT NULL COMMENT '其说明它',
  `evaluater` varchar(32) DEFAULT NULL COMMENT '评价人',
  `next_evalueate_dt` date DEFAULT NULL COMMENT '下次评估日期',
  `try_method` varchar(52) DEFAULT NULL COMMENT '试行措施',
  `try_date` date DEFAULT NULL COMMENT '试行日期',
  `try_eval_dt` date DEFAULT NULL COMMENT '试行评估日期',
  `try_result` varchar(20) DEFAULT NULL COMMENT '试行评估结果',
  `try_remark` varchar(200) DEFAULT NULL COMMENT '试行备注',
  `try_method_sg` varchar(20) DEFAULT NULL COMMENT '社工试行措施',
  `try_date_sg` date DEFAULT NULL COMMENT '社工试行日期',
  `try_eval_dt_sg` date DEFAULT NULL COMMENT '社工试行评估日期',
  `try_result_sg` varchar(20) DEFAULT NULL COMMENT '社工试行评估结果',
  `try_remark_sg` varchar(200) DEFAULT NULL COMMENT '社工试行备注',
  `try_method_wl` varchar(52) DEFAULT NULL COMMENT '物疗试行措施',
  `try_date_wl` date DEFAULT NULL COMMENT '物疗试行日期',
  `try_eval_dt_wl` date DEFAULT NULL COMMENT '物疗试行评估日期',
  `try_result_wl` varchar(20) DEFAULT NULL COMMENT '物疗试行评估结果',
  `try_remarl_wl` varchar(200) DEFAULT NULL COMMENT '物疗试行备注',
  `try_method_zl` varchar(52) DEFAULT NULL COMMENT '职疗试行措施',
  `try_date_zl` date DEFAULT NULL COMMENT '职疗试行日期',
  `try_eval_dt_zl` varchar(20) DEFAULT NULL COMMENT '职疗试行评估日期',
  `try_result_zl` varchar(20) DEFAULT NULL COMMENT '职疗试行评估结果',
  `try_remark_zl` varchar(200) DEFAULT NULL COMMENT '职疗试行备注',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='约束评估';

-- ----------------------------
-- Table structure for tb_consume_service_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_consume_service_record`;
CREATE TABLE `tb_consume_service_record` (
  `consume_service_record_id` varchar(32) NOT NULL COMMENT '消费服务记录id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `institution_id` varchar(32) DEFAULT NULL,
  `in_out_id` varchar(32) DEFAULT NULL COMMENT '入出院记录ID',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT 'expense_item_id',
  `expense_type_id` varchar(32) DEFAULT NULL COMMENT '费用类型id',
  `consume_start_time` datetime DEFAULT NULL COMMENT '服务开始时间',
  `consume_end_time` datetime DEFAULT NULL COMMENT '服务结束时间',
  `delete_flag` char(1) DEFAULT NULL COMMENT '删除标志',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`consume_service_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消费服务记录';

-- ----------------------------
-- Table structure for tb_contract
-- ----------------------------
DROP TABLE IF EXISTS `tb_contract`;
CREATE TABLE `tb_contract` (
  `contract_id` varchar(32) NOT NULL COMMENT 'contract_id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `institution_id` varchar(32) DEFAULT NULL,
  `balance_period_code` varchar(30) DEFAULT NULL COMMENT '结算周期编码',
  `contract_name` varchar(50) DEFAULT NULL COMMENT '合同名称',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `terminal_time` datetime DEFAULT NULL COMMENT '终止时间',
  `sign_date` date DEFAULT NULL COMMENT '签订日期',
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  `cus_signer_id` varchar(32) DEFAULT NULL COMMENT '客户签订人id',
  `cus_signer_name` varchar(30) DEFAULT NULL COMMENT '客户签订人名称',
  `discount_rete` decimal(10,2) DEFAULT NULL COMMENT '优惠比例',
  `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  `attachment` varchar(1024) DEFAULT NULL COMMENT '合同附件',
  `signer` varchar(32) DEFAULT NULL COMMENT '运营商签订人',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同信息';



-- ----------------------------
-- Table structure for tb_crm_complaint_handle
-- ----------------------------
DROP TABLE IF EXISTS `tb_crm_complaint_handle`;
CREATE TABLE `tb_crm_complaint_handle` (
  `handle_code` varchar(32) NOT NULL COMMENT '处理代码',
  `complaint_code` varchar(32) DEFAULT NULL COMMENT '投诉代码',
  `handle_result` varchar(50) DEFAULT NULL COMMENT '处理结果',
  `handler` varchar(32) DEFAULT NULL COMMENT '处理人姓名',
  `handle_dt` varchar(10) DEFAULT NULL COMMENT '处理时间',
  `handle_tm` varchar(6) DEFAULT NULL COMMENT '处理时间',
  `feedback_cus_name` varchar(20) DEFAULT NULL COMMENT '客户反馈姓名',
  `feedback_dt` varchar(10) DEFAULT NULL COMMENT '客户反馈日期',
  `feedback_tm` varchar(6) DEFAULT NULL COMMENT '客户反馈时间',
  `feedbadck_result` varchar(50) DEFAULT NULL COMMENT '客户对反馈结果态度',
  `feedback_em_name` varchar(20) DEFAULT NULL COMMENT '反馈员工姓名',
  `meno` varchar(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`handle_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉处理';

-- ----------------------------
-- Table structure for tb_crm_complaint_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_crm_complaint_info`;
CREATE TABLE `tb_crm_complaint_info` (
  `complaint_code` varchar(32) NOT NULL COMMENT '投诉代码',
  `party_name` varchar(32) DEFAULT NULL COMMENT '关系人姓名',
  `complaint_dt` varchar(8) DEFAULT NULL COMMENT '投诉日期',
  `complaint_tm` varchar(6) DEFAULT NULL COMMENT '投诉时间',
  `complaint_name` varchar(20) DEFAULT NULL COMMENT '投诉人姓名',
  `complaint_way` varchar(20) DEFAULT NULL COMMENT '投诉方式',
  `recieper` varchar(32) DEFAULT NULL COMMENT '接待员工姓名',
  `complaint_content` varchar(200) DEFAULT NULL COMMENT '投诉内容',
  `complaint_status` varchar(20) DEFAULT NULL COMMENT '投诉状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `meno` varchar(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `Column_17` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户投诉';

-- ----------------------------
-- Table structure for tb_crm_follow_up
-- ----------------------------
DROP TABLE IF EXISTS `tb_crm_follow_up`;
CREATE TABLE `tb_crm_follow_up` (
  `visit_code` varchar(32) NOT NULL COMMENT '随访代码',
  `visit_employer` varchar(32) DEFAULT NULL COMMENT '随访员工',
  `visit_dt` datetime DEFAULT NULL COMMENT '随访日期',
  `visit_type` varchar(32) DEFAULT NULL COMMENT '回访方式',
  `visit_way` varchar(20) DEFAULT NULL COMMENT '随访方式',
  `fam_name` varchar(20) DEFAULT NULL COMMENT '家属姓名',
  `visit_content` varchar(255) DEFAULT NULL COMMENT '回访内容',
  `custom_advise` varchar(100) DEFAULT NULL COMMENT '客户建议',
  `visit_status` varchar(10) DEFAULT NULL COMMENT '随访状态',
  `meno` varchar(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `visiter` varchar(20) DEFAULT NULL COMMENT '回访负责人',
  `visiter_id` varchar(32) DEFAULT NULL COMMENT '回访负责人id',
  `plan_visit_dt` date DEFAULT NULL COMMENT '计划回访日期',
  `busi_bill_id` varchar(32) DEFAULT NULL COMMENT '业务类型',
  PRIMARY KEY (`visit_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户随访';

-- ----------------------------
-- Table structure for tb_crm_visit_elder
-- ----------------------------
DROP TABLE IF EXISTS `tb_crm_visit_elder`;
CREATE TABLE `tb_crm_visit_elder` (
  `visit_elder_code` varchar(32) NOT NULL COMMENT '探视ID',
  `visit_elder_dt` varchar(8) DEFAULT NULL COMMENT '探视日期',
  `visti_elder_tm` varchar(6) DEFAULT NULL COMMENT '探视时间',
  `leave_tm` varchar(6) DEFAULT NULL COMMENT '离开时间',
  `visitor_type` varchar(10) DEFAULT NULL COMMENT '探视人员类型',
  `fam_name` varchar(20) DEFAULT NULL COMMENT '家属姓名',
  `visitor_count` decimal(2,0) DEFAULT NULL COMMENT '探视人数',
  `fam_phone` varchar(20) DEFAULT NULL COMMENT '家属联系方式',
  `receiver` varchar(32) DEFAULT NULL COMMENT '接待员工姓名',
  `meno` varchar(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  PRIMARY KEY (`visit_elder_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='探视管理';

-- ----------------------------
-- Table structure for tb_cs_deduct_recrd
-- ----------------------------
DROP TABLE IF EXISTS `tb_cs_deduct_recrd`;
CREATE TABLE `tb_cs_deduct_recrd` (
  `cs_deduct_recrd_id` varchar(32) NOT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `deduct_type` varchar(10) DEFAULT NULL COMMENT '扣款类型',
  `deduct_confirm_user_id` varchar(32) DEFAULT NULL COMMENT '扣款确认人id',
  `deduct_confirm_user` varchar(20) DEFAULT NULL COMMENT '扣款确认人',
  `deduct_descr` varchar(200) DEFAULT NULL COMMENT '扣款说明',
  `deduct_amount` decimal(16,2) DEFAULT NULL COMMENT '扣款金额',
  `register_user` varchar(20) DEFAULT NULL COMMENT '登记人',
  `registe_date` date DEFAULT NULL COMMENT '登记日期',
  `settle_status` varchar(10) DEFAULT NULL COMMENT '结算状态,0:未结算，1：结算中，2：已结算，3：结算失败',
  `STATUS` varchar(30) DEFAULT NULL COMMENT '状态',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`cs_deduct_recrd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户扣款记录';

-- ----------------------------
-- Table structure for tb_cs_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_cs_record`;
CREATE TABLE `tb_cs_record` (
  `tb_cs_call_rec_id` varchar(32) NOT NULL COMMENT '客户服务记录',
  `cs_info_id` varchar(32) DEFAULT NULL,
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `employee_name` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `caller_name` char(10) DEFAULT NULL,
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `seat_phone_number` varchar(20) DEFAULT NULL COMMENT '坐席电话号码',
  `cs_phone_number` varchar(20) DEFAULT NULL COMMENT '客户电话号码',
  `talk_time` decimal(4,0) DEFAULT NULL COMMENT '通话时长(秒）',
  `phone_status` varchar(10) DEFAULT NULL COMMENT '通话状态(通话中、挂断、呼叫中、呼叫保持、转接）',
  `caller_type` varchar(10) DEFAULT NULL COMMENT '来电人类别',
  `caller_type_name` varchar(20) DEFAULT NULL COMMENT '来电人类别名称',
  `from_phone_number` char(10) DEFAULT NULL COMMENT '来自转接电话',
  `from_transfer_name` varchar(20) DEFAULT NULL COMMENT '来自转接人的姓名',
  `transfed_phone` varchar(20) DEFAULT NULL COMMENT '转接的电话号',
  `transfed_name` varchar(20) DEFAULT NULL COMMENT '转到人的姓名',
  `call_type` varchar(10) DEFAULT NULL COMMENT '呼叫类型, 0:接听，1：外拨',
  `call_start_time` datetime DEFAULT NULL COMMENT '呼叫开始时间',
  `call_over_time` datetime DEFAULT NULL COMMENT '呼叫结束时间',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`tb_cs_call_rec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服通话记录';

-- ----------------------------
-- Table structure for tb_cs_seat_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_cs_seat_info`;
CREATE TABLE `tb_cs_seat_info` (
  `cs_info_id` varchar(32) NOT NULL,
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `cs_seat_name` varchar(50) DEFAULT NULL COMMENT '客服坐席名称',
  `cs_ext_phone` varchar(15) DEFAULT NULL,
  `cs_online_status` varchar(10) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`cs_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服坐席信息';

-- ----------------------------
-- Table structure for tb_cs_to_do
-- ----------------------------
DROP TABLE IF EXISTS `tb_cs_to_do`;
CREATE TABLE `tb_cs_to_do` (
  `tb_cs_to_do_id` varchar(32) NOT NULL,
  `tb_cs_call_rec_id` varchar(32) DEFAULT NULL COMMENT '客户服务记录',
  `to_do_bus_id` varchar(32) DEFAULT NULL,
  `to_do_bus_type` varchar(20) DEFAULT NULL,
  `to_do_bus_descr` varchar(512) DEFAULT NULL,
  `to_do_bus_status` varchar(10) DEFAULT NULL,
  `to_do_finished_time` datetime DEFAULT NULL COMMENT '待办解决时间',
  `to_do_level` varchar(10) DEFAULT NULL COMMENT '待办事项紧急状态, 0:一般，1：紧急',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`tb_cs_to_do_id`),
  KEY `FK_Relationship_150` (`tb_cs_call_rec_id`),
  CONSTRAINT `FK_Relationship_150` FOREIGN KEY (`tb_cs_call_rec_id`) REFERENCES `tb_cs_record` (`tb_cs_call_rec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服待办事项';

-- ----------------------------
-- Table structure for tb_dailycare_package
-- ----------------------------
DROP TABLE IF EXISTS `tb_dailycare_package`;
CREATE TABLE `tb_dailycare_package` (
  `dailycare_pk_id` varchar(32) NOT NULL COMMENT '服务套餐',
  `dailycare_pk_desc` varchar(200) DEFAULT NULL COMMENT '日间照料套餐说明',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `dailycare_pk_name` varchar(50) DEFAULT NULL COMMENT '日间照料套餐名称',
  `pk_month_fee` decimal(8,2) DEFAULT NULL COMMENT '日间照料套餐月费',
  `pk_daily_fee` decimal(5,2) DEFAULT NULL COMMENT '日间照料套餐日费',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日间照料套餐';

-- ----------------------------
-- Table structure for tb_dailycare_register
-- ----------------------------
DROP TABLE IF EXISTS `tb_dailycare_register`;
CREATE TABLE `tb_dailycare_register` (
  `dailycare_regist_id` varchar(32) NOT NULL COMMENT '日间照料登记ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `contract_no` varchar(32) DEFAULT NULL COMMENT '合同号',
  `care_beg_dt` date DEFAULT NULL COMMENT '入托日期',
  `charge_beg_dt` date DEFAULT NULL COMMENT '计费开始日期',
  `BED_NO` varchar(32) DEFAULT NULL COMMENT '床位代码',
  `dailycare_pk_id` varchar(32) DEFAULT NULL COMMENT '服务套餐',
  `dailycare_pk_name` varchar(50) DEFAULT NULL COMMENT '日间照料套餐名称',
  `pk_month_fee` decimal(8,2) DEFAULT NULL COMMENT '日间照料套餐月费',
  `pk_daily_fee` decimal(5,2) DEFAULT NULL COMMENT '日间照料套餐日费',
  `care_ed_dt` date DEFAULT NULL COMMENT '退托日期',
  `charge_end_dt` date DEFAULT NULL COMMENT '计费截止日期',
  `drop_out_type` varchar(32) DEFAULT NULL COMMENT '退托类型',
  `operator` varchar(32) DEFAULT NULL COMMENT '经办人',
  `guarantor` varchar(32) DEFAULT NULL COMMENT '保证人',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日间照料登记';

-- ----------------------------
-- Table structure for tb_dailycare_shuttle
-- ----------------------------
DROP TABLE IF EXISTS `tb_dailycare_shuttle`;
CREATE TABLE `tb_dailycare_shuttle` (
  `shuttle_id` varchar(32) NOT NULL COMMENT '日间照料接送ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人代码外键',
  `shuttle_type` varchar(32) DEFAULT NULL COMMENT '接送类型',
  `shuttle_dt` varchar(10) DEFAULT NULL COMMENT '接送日期',
  `shuttle_tm` varchar(5) DEFAULT NULL COMMENT '接送时间',
  `shuttle_operator` varchar(32) DEFAULT NULL COMMENT '接送负责人',
  `shuttle_tel` varchar(32) DEFAULT NULL COMMENT '接送联系电话',
  `status` varchar(32) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构编码外键',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_reason` varchar(100) DEFAULT NULL COMMENT '操作原因',
  `depart_code` varchar(200) DEFAULT NULL,
  `operate_man` varchar(32) DEFAULT NULL COMMENT '操作人',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接送信息表';

-- ----------------------------
-- Table structure for tb_daily_account
-- ----------------------------
DROP TABLE IF EXISTS `tb_daily_account`;
CREATE TABLE `tb_daily_account` (
  `daily_account_id` varchar(32) NOT NULL,
  `payee_id` varchar(32) DEFAULT NULL COMMENT '收款人id',
  `payee` varchar(20) DEFAULT NULL COMMENT '收款人',
  `payee_date` date DEFAULT NULL COMMENT '收费日期',
  `tran_accounts_time` datetime DEFAULT NULL COMMENT '交账时间',
  `tran_user` varchar(20) DEFAULT NULL COMMENT '交账人',
  `tran_user_id` varchar(32) DEFAULT NULL COMMENT '交账人id',
  `tran_bills_num` smallint(6) DEFAULT NULL COMMENT '交账单据数',
  `tran_total_amount` decimal(16,2) DEFAULT NULL COMMENT '收款金额',
  `cash_amount` decimal(16,2) DEFAULT NULL COMMENT '现金金额',
  `cash_amount_check_status` varchar(10) DEFAULT NULL COMMENT '现金核对状态',
  `card_amount` decimal(16,2) DEFAULT NULL COMMENT '刷卡金额',
  `card_num` smallint(6) DEFAULT NULL COMMENT '刷卡笔数',
  `card_amount_check_status` varchar(10) DEFAULT NULL COMMENT '刷卡核对状态',
  `transfer_amount` decimal(16,2) DEFAULT NULL COMMENT '转账金额',
  `transfer_num` char(10) DEFAULT NULL COMMENT '转账笔数',
  `transfer_amount_check_status` varchar(10) DEFAULT NULL COMMENT '转账核对状态',
  `weixin_amount` decimal(16,2) DEFAULT NULL COMMENT '微信支付金额',
  `weixin_num` smallint(6) DEFAULT NULL,
  `weixin_amount_check_status` decimal(16,2) DEFAULT NULL COMMENT '微信支付金额核对状态',
  `zhifubao_amount` decimal(16,2) DEFAULT NULL COMMENT '支付宝金额',
  `zhifubao_num` char(10) DEFAULT NULL,
  `zhifubao_amount_status` varchar(10) DEFAULT NULL COMMENT '支付宝金额核对状态',
  `check_status` varchar(4) DEFAULT NULL COMMENT '检查状态',
  `check_result_memo` varchar(200) DEFAULT NULL COMMENT '核对结果备注',
  `check_user_id` varchar(32) DEFAULT NULL COMMENT '核对人id',
  `check_user` varchar(20) DEFAULT NULL COMMENT '核对人',
  `check_time` datetime DEFAULT NULL COMMENT '核对时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`daily_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日交账记录表';

-- ----------------------------
-- Table structure for tb_daily_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_daily_account_detail`;
CREATE TABLE `tb_daily_account_detail` (
  `daily_account_detail_id` varchar(32) NOT NULL COMMENT '日交账明细id',
  `daily_account_id` varchar(32) DEFAULT NULL,
  `bus_bill_id` varchar(32) DEFAULT NULL COMMENT '业务单据id',
  `bus_bill_no` varchar(32) DEFAULT NULL COMMENT '业务单据号',
  `bus_bill_type` varchar(10) DEFAULT NULL COMMENT '业务单类型, 充值,结算',
  `tran_total_amount` decimal(16,2) DEFAULT NULL COMMENT '收款金额',
  `cash_amount` decimal(16,2) DEFAULT NULL COMMENT '现金金额',
  `cash_amount_check_status` varchar(10) DEFAULT NULL COMMENT '现金核对状态',
  `card_amount` decimal(16,2) DEFAULT NULL COMMENT '刷卡金额',
  `card_amount_check_status` varchar(10) DEFAULT NULL COMMENT '刷卡核对状态',
  `transfer_amount` decimal(16,2) DEFAULT NULL COMMENT '转账金额',
  `transfer_amount_check_status` varchar(10) DEFAULT NULL COMMENT '转账核对状态',
  `weixin_amount` decimal(16,2) DEFAULT NULL COMMENT '微信支付金额',
  `weixin_amount_check_status` decimal(16,2) DEFAULT NULL COMMENT '微信支付金额核对状态',
  `zhifubao_amount` decimal(16,2) DEFAULT NULL COMMENT '支付宝金额',
  `zhifubao_amount_status` varchar(10) DEFAULT NULL COMMENT '支付宝金额核对状态',
  `check_status` varchar(4) DEFAULT NULL COMMENT '检查状态',
  `check_result_memo` varchar(200) DEFAULT NULL COMMENT '核对结果备注',
  `check_user_id` varchar(32) DEFAULT NULL COMMENT '核对人id',
  `check_user` varchar(20) DEFAULT NULL COMMENT '核对人',
  `check_time` datetime DEFAULT NULL COMMENT '核对时间',
  `pay_info_memo` varchar(200) DEFAULT NULL COMMENT '支付信息',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`daily_account_detail_id`),
  KEY `FK_Relationship_148` (`daily_account_id`),
  CONSTRAINT `FK_Relationship_148` FOREIGN KEY (`daily_account_id`) REFERENCES `tb_daily_account` (`daily_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日交账明细';

-- ----------------------------
-- Table structure for tb_denture_care
-- ----------------------------
DROP TABLE IF EXISTS `tb_denture_care`;
CREATE TABLE `tb_denture_care` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `zx_denture` varchar(4) DEFAULT NULL COMMENT '装卸假牙',
  `zx_denture_tm` varchar(6) DEFAULT NULL COMMENT '装卸假牙时间',
  `denture_care` varchar(4) DEFAULT NULL COMMENT '清洗假牙',
  `denture_care_tm` varchar(6) DEFAULT NULL COMMENT '清洗假牙时间',
  `soak_teeth` varchar(4) DEFAULT NULL COMMENT '浸牙',
  `soak_teeth_tm` varchar(6) DEFAULT NULL COMMENT '浸牙时间',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='清洗假牙';

-- ----------------------------
-- Table structure for tb_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `tb_dispatch`;
CREATE TABLE `tb_dispatch` (
  `dispatch_id` varchar(32) NOT NULL COMMENT 'dispatch_id',
  `dispatch_code` varchar(100) DEFAULT NULL COMMENT '派遣单编码',
  `package_type` varchar(4) DEFAULT NULL COMMENT '派单模式',
  `service_items` varchar(200) DEFAULT NULL COMMENT 'serviceplan_id',
  `dispatch_type` char(1) DEFAULT NULL COMMENT '0æœ¬æœºæž„  1ä¾›åº”å•†  2å¿—æ„¿è€…',
  `receiving_deadline` datetime DEFAULT NULL COMMENT 'æŽ¥æ”¶æˆªæ­¢æ—¶é—´',
  `receiver_id` varchar(32) DEFAULT NULL,
  `receiver_name` varchar(50) DEFAULT NULL,
  `receiver_departid` varchar(32) DEFAULT NULL COMMENT '部门id',
  `receiver_departname` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `task_amount` decimal(3,0) DEFAULT NULL,
  `singles` varchar(50) DEFAULT NULL,
  `single_time` datetime DEFAULT NULL,
  `cust_balanced` decimal(1,0) DEFAULT NULL COMMENT 'æ˜¯å¦ä¸Žç¬¬ä¸‰æ–¹å•†å®¶ç»“ç®—',
  `dispatch_status` char(1) DEFAULT NULL COMMENT '1æ–°æ´¾  2å·²æŽ¥  3æ‹’æŽ¥/è¿‡æœŸ',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`dispatch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ´¾é£å•';

-- ----------------------------
-- Table structure for tb_dispatch_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_dispatch_detail`;
CREATE TABLE `tb_dispatch_detail` (
  `service_task_id` varchar(32) DEFAULT NULL,
  `dispatch_id` varchar(32) DEFAULT NULL COMMENT 'dispatch_id',
  KEY `FK_Relationship_71` (`dispatch_id`),
  KEY `FK_Relationship_80` (`service_task_id`),
  CONSTRAINT `FK_Relationship_71` FOREIGN KEY (`dispatch_id`) REFERENCES `tb_dispatch` (`dispatch_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Relationship_80` FOREIGN KEY (`service_task_id`) REFERENCES `tb_service_task` (`service_task_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_donation_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_donation_info`;
CREATE TABLE `tb_donation_info` (
  `donation_code` varchar(32) NOT NULL COMMENT '捐赠编码',
  `donation_dt` varchar(8) DEFAULT NULL COMMENT '捐赠日期',
  `donation_unit` varchar(50) DEFAULT NULL COMMENT '捐赠人或单位',
  `donation_amount` decimal(16,2) DEFAULT NULL COMMENT '合计金额',
  `donation_way` varchar(20) DEFAULT NULL COMMENT '捐赠形式',
  `meno` varchar(200) DEFAULT NULL,
  `donation_things_name` varchar(100) DEFAULT NULL COMMENT '捐赠物品名称',
  `donation_things_count` varchar(100) DEFAULT NULL COMMENT '捐赠数量',
  `handler` varchar(32) DEFAULT NULL COMMENT '处理人姓名',
  `handle_dt` varchar(10) DEFAULT NULL COMMENT '处理时间',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`donation_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='捐赠信息';

-- ----------------------------
-- Table structure for tb_drug_fee_rec
-- ----------------------------
DROP TABLE IF EXISTS `tb_drug_fee_rec`;
CREATE TABLE `tb_drug_fee_rec` (
  `drug_fee_code` varchar(32) NOT NULL COMMENT '药品计费明细ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `drug_code` varchar(32) NOT NULL COMMENT '药品编码',
  `consume_dt` varchar(10) DEFAULT NULL COMMENT '消费日期',
  `consume_tm` varchar(6) DEFAULT NULL COMMENT '消费时间',
  `drug_count` int(11) DEFAULT NULL COMMENT '药品数量',
  `drug_price` decimal(16,2) DEFAULT NULL COMMENT '药品单价',
  `consume_amount` decimal(16,2) DEFAULT NULL COMMENT '消费金额',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`drug_fee_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_dr_drug_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_dr_drug_info`;
CREATE TABLE `tb_dr_drug_info` (
  `drug_code` varchar(32) NOT NULL COMMENT '药品编码',
  `drug_name` varchar(50) DEFAULT NULL COMMENT '药品名称',
  `drug_brand` varchar(20) DEFAULT NULL COMMENT '药品品牌',
  `drug_general_name` varchar(50) DEFAULT NULL COMMENT '药品通用名',
  `drug_specific` varchar(50) DEFAULT NULL COMMENT '药品规格',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂家',
  `bar_code` varchar(30) DEFAULT NULL COMMENT '条形码',
  `Approved_code` varchar(30) DEFAULT NULL COMMENT '国药准字',
  `drug_unit` varchar(15) DEFAULT NULL COMMENT '药品单位',
  `drug_type` varchar(10) DEFAULT NULL COMMENT '药品类别',
  `drug_py` varchar(50) DEFAULT NULL COMMENT '药品拼音码',
  `drug_form` varchar(20) DEFAULT NULL COMMENT '药品剂型',
  `drug_basic_unit` varchar(20) DEFAULT NULL COMMENT '药品基本单位',
  `rx_flag` varchar(4) DEFAULT NULL COMMENT '处方药标志',
  `max_inventory` decimal(20,0) DEFAULT NULL COMMENT '最大库存',
  `min_inventory` decimal(20,0) DEFAULT NULL COMMENT '最小库存',
  `drug_pri_flag` varchar(4) DEFAULT NULL COMMENT '药品目录所属标志',
  `drug_price` decimal(16,2) DEFAULT NULL COMMENT '药品单价',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品目录信息';

-- ----------------------------
-- Table structure for tb_elder
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder`;
CREATE TABLE `tb_elder` (
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  `elder_name_en` varchar(30) DEFAULT NULL COMMENT '英文名',
  `medical_type` varchar(32) DEFAULT NULL COMMENT '医疗方式（医保、新农合、自费）',
  `service_request` varchar(32) DEFAULT NULL COMMENT '服务需求',
  `contact_address` varchar(200) DEFAULT NULL,
  `contact_tel` varchar(32) DEFAULT NULL,
  `area_code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `area_name` varchar(150) DEFAULT NULL COMMENT '区域名称',
  `postalcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `photo` varchar(255) DEFAULT NULL COMMENT '员工照片',
  `photo_phone` varchar(255) DEFAULT NULL,
  `picture` longblob COMMENT '员工照片',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `idcard_no` varchar(32) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `idiom` varchar(20) DEFAULT NULL COMMENT '方言',
  `nation` varchar(32) DEFAULT NULL,
  `is_psychosis` char(2) DEFAULT NULL COMMENT '是否有精神病史',
  `native_place` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `self_care_ability` varchar(20) DEFAULT NULL COMMENT '自理能力',
  `person_type` varchar(10) DEFAULT NULL COMMENT '人员类别 常照老人 1 其他 0或null',
  `politics_status` varchar(32) DEFAULT NULL COMMENT '政治面貌',
  `work_unit` varchar(40) DEFAULT NULL COMMENT '工作单位',
  `social_sec_card` varchar(20) DEFAULT NULL COMMENT '社保卡号',
  `elder_card` varchar(20) DEFAULT NULL COMMENT '老人卡号',
  `monthly_income` decimal(10,2) DEFAULT NULL COMMENT '月收入',
  `marital_status` varchar(32) DEFAULT NULL COMMENT '婚姻状况',
  `degree_educate` varchar(32) DEFAULT NULL COMMENT '文化程度',
  `faith` varchar(32) DEFAULT NULL COMMENT '宗教信仰',
  `child_counts` decimal(2,0) DEFAULT NULL COMMENT '子女人数',
  `is_security` char(2) DEFAULT NULL COMMENT '是否领取总受',
  `is_recieve_key` varchar(2) DEFAULT NULL COMMENT '是否领取钥匙',
  `care_place` varchar(20) DEFAULT NULL COMMENT '宿位',
  `place_quota` varchar(20) DEFAULT NULL COMMENT '宿位配额',
  `nurse_type` varchar(20) DEFAULT NULL COMMENT '护理类型',
  `family_desc` varchar(200) DEFAULT NULL COMMENT '家庭情况描述',
  `elder_level` varchar(32) DEFAULT NULL COMMENT '老人级别（用户自定义）',
  `memo` varchar(200) DEFAULT NULL,
  `elder_number` varchar(30) DEFAULT NULL COMMENT '老人编号',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户登录id',
  `useraccount` varchar(30) DEFAULT NULL COMMENT '账号',
  `care_level` varchar(20) DEFAULT NULL,
  `check_status` varchar(4) DEFAULT NULL,
  `healthcard_num` varchar(30) DEFAULT NULL COMMENT '医保卡号',
  `noretirement_career` varchar(50) DEFAULT NULL COMMENT '退休前职业',
  `source_finance` varchar(32) DEFAULT NULL COMMENT '经济来源',
  `interests` varchar(200) DEFAULT NULL COMMENT '兴趣爱好',
  `housing_conditions` varchar(32) DEFAULT NULL COMMENT '居住状态',
  `is_health_record` varchar(4) DEFAULT NULL COMMENT '是否已录入健康档案',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_elder_ability_assess
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_ability_assess`;
CREATE TABLE `tb_elder_ability_assess` (
  `ability_assess_id` varchar(32) NOT NULL COMMENT '老人能力评估行ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `primary_grade` varchar(20) DEFAULT NULL COMMENT '初步等级',
  `grade_chg_basis` varchar(20) DEFAULT NULL COMMENT '等级变更依据',
  `ability_grade` varchar(20) DEFAULT NULL COMMENT '评定分级',
  `ability_assess_man` varchar(20) DEFAULT NULL COMMENT '评估人',
  `ability_assess_dt` varchar(10) DEFAULT NULL COMMENT '评估日期',
  `info_provider` varchar(20) DEFAULT NULL COMMENT '信息提供者',
  `provide_dt` varchar(10) DEFAULT NULL COMMENT '信息提供日期',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老人能力评估结果';

-- ----------------------------
-- Table structure for tb_elder_contract
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_contract`;
CREATE TABLE `tb_elder_contract` (
  `elder_contract_id` varchar(32) NOT NULL COMMENT '客户合同id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `elder_contract_name` varchar(100) DEFAULT NULL COMMENT '合同名称',
  `elder_contract_no` varchar(20) DEFAULT NULL COMMENT '合同编号',
  `elder_contract_type` varchar(20) DEFAULT NULL COMMENT '合同类型',
  `elder_contract_sign_date` date DEFAULT NULL COMMENT '合同签订日期',
  `elder_contract_start_date` date DEFAULT NULL COMMENT '合同生效起始日期',
  `elder_contract_end_date` date DEFAULT NULL COMMENT '合同生效结束日期',
  `elder_contract_signer` varchar(20) DEFAULT NULL COMMENT '合同经办人',
  `elder_contract_signer_id` varchar(32) DEFAULT NULL COMMENT '合同经办人id',
  `elder_contract_attachment` varchar(200) DEFAULT NULL COMMENT '合同附件',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) NOT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  `operate_person` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门编码',
  `depart_name` varchar(32) DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`elder_contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户合同';

-- ----------------------------
-- Table structure for tb_elder_deposit_mgr
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_deposit_mgr`;
CREATE TABLE `tb_elder_deposit_mgr` (
  `elder_deposit_mgr_id` varchar(32) NOT NULL COMMENT '押金缴费记录id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `in_deposit` decimal(16,2) DEFAULT NULL COMMENT '收取入住押金',
  `medical_deposit` decimal(16,2) DEFAULT NULL COMMENT '收取医疗押金',
  `payer` varchar(20) DEFAULT NULL COMMENT '缴款人',
  `payer_id` varchar(32) DEFAULT NULL COMMENT '缴款人id',
  `payee_id` varchar(32) DEFAULT NULL COMMENT '收款人id',
  `payee` varchar(20) DEFAULT NULL COMMENT '收款人',
  `pay_time` datetime DEFAULT NULL COMMENT '收取时间',
  `return_user` varchar(20) DEFAULT NULL COMMENT '退还人',
  `refund_time` datetime DEFAULT NULL COMMENT '退还时间',
  `receipt_status` varchar(2) DEFAULT NULL COMMENT '收据状态',
  `regain_status` varchar(2) DEFAULT NULL COMMENT '收回状态',
  `regain_time` datetime DEFAULT NULL COMMENT '收回时间',
  `return_amount` decimal(16,2) DEFAULT NULL COMMENT '实际退回金额',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `return_memo` varchar(200) DEFAULT NULL COMMENT '退还说明',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) NOT NULL COMMENT '机构id',
  PRIMARY KEY (`elder_deposit_mgr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='押金管理记录';

-- ----------------------------
-- Table structure for tb_elder_diet_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_diet_info`;
CREATE TABLE `tb_elder_diet_info` (
  `elder_diet_info_id` varchar(32) NOT NULL COMMENT '客户饮食信息id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `eating_habits` varchar(20) DEFAULT NULL COMMENT '饮食习惯',
  `eating_habits_descr` varchar(50) DEFAULT NULL COMMENT '饮食习惯描述',
  `food_preference` varchar(20) DEFAULT NULL COMMENT '食物偏好',
  `food_preference_descr` varchar(50) DEFAULT NULL COMMENT '食物偏好描述',
  `food_allergy` varchar(500) DEFAULT NULL COMMENT '食物过敏',
  `food_taboo` varchar(500) DEFAULT NULL COMMENT '食物禁忌',
  `catering_package` varchar(50) DEFAULT NULL COMMENT '餐饮套餐',
  `catering_package_start` date DEFAULT NULL COMMENT '选择套餐开始日期',
  `catering_package_end` date DEFAULT NULL COMMENT '选择套餐结束日期',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `memo` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`elder_diet_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户饮食信息';

-- ----------------------------
-- Table structure for tb_elder_diet_package_recd
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_diet_package_recd`;
CREATE TABLE `tb_elder_diet_package_recd` (
  `diet_package_recd_id` varchar(32) NOT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `catering_package_code` varchar(20) DEFAULT NULL COMMENT '套餐编码',
  `catering_package` varchar(50) DEFAULT NULL COMMENT '餐饮套餐',
  `catering_package_start` date DEFAULT NULL COMMENT '选择套餐开始日期',
  `catering_package_end` date DEFAULT NULL COMMENT '选择套餐结束日期',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `memo` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`diet_package_recd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户套餐配置记录';

-- ----------------------------
-- Table structure for tb_elder_discharge_in
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_discharge_in`;
CREATE TABLE `tb_elder_discharge_in` (
  `elder_discharge_in_id` varchar(32) NOT NULL COMMENT '入住详情id',
  `in_out_id` varchar(32) DEFAULT NULL COMMENT '入出院记录ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `expense_type_id` varchar(32) DEFAULT NULL COMMENT '费用类型id',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT '费用项id',
  `expense_item_name` varchar(50) DEFAULT NULL COMMENT '费用项目表示名称',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `expense_standard_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  `standard_sale_price` decimal(10,2) DEFAULT NULL COMMENT '费用标准价格',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `day` int(11) DEFAULT NULL,
  `price_start_time` datetime DEFAULT NULL COMMENT '生效开始时间',
  `price_end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `expense_standard_attribute_id` varchar(32) DEFAULT NULL COMMENT '标准id',
  PRIMARY KEY (`elder_discharge_in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入住详情';

-- ----------------------------
-- Table structure for tb_elder_discharge_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_discharge_info`;
CREATE TABLE `tb_elder_discharge_info` (
  `in_out_id` varchar(32) NOT NULL COMMENT '入出院记录ID',
  `in_dt` varchar(10) DEFAULT NULL COMMENT '入院日期',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `checkstatus` varchar(255) DEFAULT NULL COMMENT '入院状态',
  `care_level` varchar(20) DEFAULT NULL COMMENT '护理等级',
  `out_dt` varchar(10) DEFAULT NULL COMMENT '出院日期',
  `charge_end_time` date DEFAULT NULL COMMENT '收费截止日期',
  `out_reason` varchar(50) DEFAULT NULL COMMENT '出院原因',
  `out_reason_desc` varchar(200) DEFAULT NULL COMMENT '出院原因描述',
  `in_sponsor` varchar(32) DEFAULT NULL COMMENT '入院保证人',
  `handle_man` varchar(50) DEFAULT NULL COMMENT '经办人',
  `out_sponsor` varchar(32) DEFAULT NULL COMMENT '出院保证人',
  `in_memo` varchar(100) DEFAULT NULL COMMENT '入院备注',
  `out_memo` varchar(100) DEFAULT NULL COMMENT '出院备注',
  `out_leave_date` date DEFAULT NULL COMMENT '搬离日期',
  `out_confirm_date` date DEFAULT NULL COMMENT '出院确认时间',
  `out_confirm_user` varchar(50) DEFAULT NULL COMMENT '出院确认人',
  `out_confirm_memo` varchar(100) DEFAULT NULL COMMENT '出院确认备注',
  `charge_start_time` date DEFAULT NULL COMMENT '收费开始日期',
  `in_history_info` varchar(10000) DEFAULT NULL COMMENT '入住原始信息',
  `floor_name` varchar(20) DEFAULT NULL COMMENT '楼层名称',
  `room_name` varchar(20) DEFAULT NULL COMMENT '房间名',
  `bed_no` varchar(32) DEFAULT NULL COMMENT '床位',
  `register_date` date DEFAULT NULL COMMENT '登记时间',
  `register_id` varchar(32) DEFAULT NULL COMMENT '登记人编码',
  `register_man` varchar(100) DEFAULT NULL COMMENT '登记人',
  `out_apply_dt` varchar(10) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `building_name` varchar(20) DEFAULT NULL COMMENT '楼名称',
  PRIMARY KEY (`in_out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老人入出院信息';

-- ----------------------------
-- Table structure for tb_elder_discharge_out
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_discharge_out`;
CREATE TABLE `tb_elder_discharge_out` (
  `elder_discharge_out_id` varchar(32) NOT NULL COMMENT '退住详情id',
  `in_out_id` varchar(32) DEFAULT NULL COMMENT '入出院记录ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `expense_type_id` varchar(32) DEFAULT NULL COMMENT '费用类型id',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT '费用项id',
  `expense_item_name` varchar(50) DEFAULT NULL COMMENT '费用项目表示名称',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `expense_standard_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  `cost_bal_end_date` date DEFAULT NULL COMMENT '费用结算-结束日期',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注4',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`elder_discharge_out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退住详情';

-- ----------------------------
-- Table structure for tb_elder_expense_discount
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_expense_discount`;
CREATE TABLE `tb_elder_expense_discount` (
  `elder_expense_discount_id` varchar(32) NOT NULL COMMENT '老人优惠项目id',
  `institution_id` varchar(32) DEFAULT NULL,
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `in_out_id` varchar(32) DEFAULT NULL COMMENT '入出院记录ID',
  `discount_expense_standard_price` decimal(10,0) DEFAULT NULL COMMENT '优惠后价格',
  `price_start_time` datetime DEFAULT NULL COMMENT '生效开始时间',
  `price_end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`elder_expense_discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录老人的优惠。针对费用标准的优惠';

-- ----------------------------
-- Table structure for tb_elder_go_back
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_go_back`;
CREATE TABLE `tb_elder_go_back` (
  `goout_id` varchar(32) NOT NULL COMMENT '外出记录ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `goout_dt` varchar(10) DEFAULT NULL COMMENT '外出日期',
  `goout_tm` varchar(6) DEFAULT NULL COMMENT '外出时间',
  `goout_reason` varchar(50) DEFAULT NULL COMMENT '外出原因',
  `goout_accomp` varchar(32) DEFAULT NULL COMMENT '外出陪同人',
  `projected_back_dt` varchar(10) DEFAULT NULL COMMENT '预计归院日期',
  `projected_back_tm` varchar(6) DEFAULT NULL COMMENT '预计归院时间',
  `back_dt` varchar(10) DEFAULT NULL COMMENT '归院日期',
  `back_tm` varchar(6) DEFAULT NULL COMMENT '归院时间',
  `corr_apply_id` varchar(32) DEFAULT NULL COMMENT '对应的请假ID',
  `goout_confirm_man` varchar(32) DEFAULT NULL COMMENT '外出确认人',
  `back_confirm_man` varchar(32) DEFAULT NULL COMMENT '返回确认人',
  `goout_status` varchar(4) DEFAULT NULL COMMENT '外出状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `goout_days` int(11) DEFAULT NULL COMMENT '外出退费天数',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老人外出登记';

-- ----------------------------
-- Table structure for tb_elder_go_back_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_go_back_detail`;
CREATE TABLE `tb_elder_go_back_detail` (
  `elder_go_back_detail_id` varchar(32) NOT NULL COMMENT '外出退费详细id',
  `goout_id` varchar(32) DEFAULT NULL COMMENT '外出记录ID',
  `expense_type_id` varchar(32) DEFAULT NULL COMMENT '费用类型id',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT 'expense_item_id',
  `expense_item_name` varchar(50) DEFAULT NULL COMMENT '费用项目表示名称',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `expense_standard_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  `standard_sale_price` decimal(10,2) DEFAULT NULL COMMENT '费用标准价格',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `cost_bal_start_date` datetime DEFAULT NULL COMMENT '生效开始时间',
  `cost_bal_end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `leave_refund_days` varchar(10) DEFAULT NULL COMMENT '退费天数',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`elder_go_back_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外出退费详情';

-- ----------------------------
-- Table structure for tb_elder_interview_recd
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_interview_recd`;
CREATE TABLE `tb_elder_interview_recd` (
  `elder_interview_rec_id` varchar(32) NOT NULL COMMENT '会员面试记录id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `interview_date` datetime DEFAULT NULL COMMENT '会员面试日期',
  `interview_place` varchar(64) DEFAULT NULL COMMENT '面试地点',
  `interview_leader` varchar(10) DEFAULT NULL COMMENT '面试负责人',
  `interview_user_id` varchar(32) DEFAULT NULL COMMENT '面试负责人id',
  `interview_obj_type` varchar(20) DEFAULT NULL COMMENT '面试对象类型',
  `interview_obj_descr` varchar(50) DEFAULT NULL COMMENT '面试对象类型描述',
  `interview_group_user_ids` varchar(500) DEFAULT NULL COMMENT '面试组成员',
  `interview_group_user_names` varchar(128) DEFAULT NULL COMMENT '面试组成员名字',
  `interview_content` varchar(256) DEFAULT NULL COMMENT '面试内容简述',
  `interview_result` varchar(50) DEFAULT NULL COMMENT '面试结果',
  `interview_result_descr` varchar(100) DEFAULT NULL COMMENT '面试结果描述',
  `memo` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `operate_person` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`elder_interview_rec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员面试记录';

-- ----------------------------
-- Table structure for tb_elder_in_notify
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_in_notify`;
CREATE TABLE `tb_elder_in_notify` (
  `elder_in_notify_id` varchar(32) NOT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  `sex` varchar(10) DEFAULT NULL,
  `idcard_no` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `contact_address` varchar(200) DEFAULT NULL,
  `party_name` varchar(32) DEFAULT NULL COMMENT '关系人姓名',
  `contact_tel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `in_house_info` varchar(200) DEFAULT NULL COMMENT '入住房间床位',
  `applicant_in_date` date DEFAULT NULL COMMENT '预约入住日期',
  `applicant_date` date DEFAULT NULL COMMENT '预约日期',
  `party_phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `charge_start_time` datetime DEFAULT NULL COMMENT '收费开始日期',
  `care_level` varchar(20) DEFAULT NULL COMMENT '护理等级',
  `notifier` varchar(20) DEFAULT NULL COMMENT '发放通知人',
  `notify_time` datetime DEFAULT NULL COMMENT '发放时间',
  `memo` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`elder_in_notify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入住通知单';

-- ----------------------------
-- Table structure for tb_elder_party
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_party`;
CREATE TABLE `tb_elder_party` (
  `party_code` varchar(32) NOT NULL COMMENT '老人家属编码',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `party_name` varchar(32) NOT NULL COMMENT '关系人姓名',
  `sex` varchar(10) DEFAULT NULL,
  `party_phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `area_code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `area_name` varchar(150) DEFAULT NULL COMMENT '区域名称',
  `party_address` varchar(50) DEFAULT NULL COMMENT '家庭住址',
  `idcard_no` varchar(32) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL COMMENT '家属电子邮箱',
  `updater` varchar(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `userID` varchar(32) DEFAULT NULL COMMENT '用户登录id',
  `useraccount` varchar(32) DEFAULT NULL COMMENT '移动端用户名',
  `picture` longblob,
  `photo` varchar(255) DEFAULT NULL COMMENT '员工照片',
  `photo_phone` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家属信息';

-- ----------------------------
-- Table structure for tb_elder_price_proposal
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_price_proposal`;
CREATE TABLE `tb_elder_price_proposal` (
  `elder_price_proposal_id` varchar(32) NOT NULL COMMENT '老人价格方案id',
  `in_out_id` varchar(32) DEFAULT NULL COMMENT '入出院记录ID',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `institution_id` varchar(32) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `expense_type_id` varchar(32) DEFAULT NULL COMMENT '费用类型id',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT 'expense_item_id',
  `standard_sale_price` decimal(10,2) DEFAULT NULL COMMENT '费用标准价格',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `day` int(11) DEFAULT NULL COMMENT '阶段费用的天数',
  `price_start_time` datetime DEFAULT NULL COMMENT '生效开始时间',
  `price_end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expense_item_name` varchar(50) DEFAULT NULL COMMENT '费用项目表示名称',
  `expense_standard_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  PRIMARY KEY (`elder_price_proposal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='针对老人的价格方案';

-- ----------------------------
-- Table structure for tb_elder_service_modify
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_service_modify`;
CREATE TABLE `tb_elder_service_modify` (
  `elder_service_modify_id` varchar(32) NOT NULL DEFAULT '' COMMENT '老人服务等级变更id',
  `in_out_id` varchar(32) DEFAULT NULL COMMENT '入出院记录ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `institution_id` varchar(32) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL COMMENT '变更时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `original_care_level` varchar(20) DEFAULT NULL COMMENT '原护理等级',
  `original_bed_no` varchar(32) DEFAULT NULL COMMENT '原床位号',
  `original_bed_compartment_flag` char(1) DEFAULT NULL COMMENT '原房间是否包间',
  `original_meal_type` varchar(32) DEFAULT NULL COMMENT '原用餐类型',
  `modified_care_level` varchar(32) DEFAULT NULL COMMENT '修改后护理等级',
  `modified_bed_no` varchar(32) DEFAULT NULL COMMENT '修改后床位号',
  `modified_bed_compartment_flag` char(1) DEFAULT NULL COMMENT '修改后房间是否包间',
  `modified_meal_type` varchar(32) DEFAULT NULL COMMENT '修改后餐类型',
  `bed_modified_info` varchar(200) DEFAULT NULL COMMENT 'bed_modified_info',
  `original_reserved_field1` varchar(32) DEFAULT NULL COMMENT '原来数值保留字段1',
  `original_reserved_field2` varchar(32) DEFAULT NULL COMMENT '原来数值保留字段2',
  `modified_reserved_field1` varchar(32) DEFAULT NULL COMMENT '修改后数值保留字段1',
  `modified_reserved_field2` varchar(32) DEFAULT NULL COMMENT '修改后数值保留字段2',
  `original_care_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '原护理费费用标准',
  `original_care_price` decimal(10,2) DEFAULT NULL COMMENT '原护理费费用金额',
  `original_bed_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '原床位费用标准',
  `original_bed_price` decimal(10,2) DEFAULT NULL COMMENT '原床位费用急金额',
  `original_meal_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '原用餐费用标准',
  `original_meal_price` decimal(10,2) DEFAULT NULL COMMENT '原用餐费用金额',
  `modified_care_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '修改后护理费费用标准',
  `modified_bed_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '修改后床位费用标准',
  `modified_meal_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '修改后用餐费用标准',
  `original_reserved_field1_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '原保留字段费用标准1',
  `original_reserved_field1_price` decimal(10,2) DEFAULT NULL COMMENT '原保留字段1费用金额',
  `original_reserved_field2_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '原保留字段费用标准2',
  `original_reserved_field2_price` decimal(10,2) DEFAULT NULL COMMENT '原保留字段2费用金额',
  `modified_reserved_field1_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '修改后保留字段费用标准1',
  `modified_reserved_field2_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '修改后保留字段费用标准2',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `bed_original_info` varchar(200) DEFAULT NULL COMMENT 'bed_original_info',
  PRIMARY KEY (`elder_service_modify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老人服务等级变更';

-- ----------------------------
-- Table structure for tb_elder_service_recd
-- ----------------------------
DROP TABLE IF EXISTS `tb_elder_service_recd`;
CREATE TABLE `tb_elder_service_recd` (
  `elder_service_recd_id` varchar(32) NOT NULL COMMENT '客户服务记录id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `elder_request_mode` varchar(10) DEFAULT NULL COMMENT '提出方式',
  `elder_request_type` varchar(10) DEFAULT NULL COMMENT '问题类型',
  `elder_request_time` datetime DEFAULT NULL COMMENT '来访时间',
  `elder_question` varchar(256) DEFAULT NULL COMMENT '客户问题',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `service_person` varchar(20) DEFAULT NULL COMMENT '接待客服',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `question_handle_mode` varchar(10) DEFAULT NULL COMMENT '问题处理方式',
  `question_handle_descr` varchar(256) DEFAULT NULL COMMENT '处理记录',
  `handle_status` varchar(10) DEFAULT NULL COMMENT '处理状态',
  `handle_person` varchar(20) DEFAULT NULL COMMENT '处理人',
  `handle_time` datetime DEFAULT NULL COMMENT '处理时间',
  `feekback_status` varchar(10) DEFAULT NULL COMMENT '反馈状态',
  `feekback_mode` varchar(10) DEFAULT NULL COMMENT '反馈方式',
  `feekback_person` varchar(20) DEFAULT NULL COMMENT '反馈人',
  `feekback_time` datetime DEFAULT NULL COMMENT '反馈时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `feekback_memo` varchar(200) DEFAULT NULL COMMENT '反馈备注',
  `satisfaction` varchar(10) DEFAULT NULL COMMENT '满意度',
  `service_task_id` varchar(32) DEFAULT NULL COMMENT '工单任务id',
  `depart_code` varchar(200) DEFAULT NULL COMMENT '部门code',
  PRIMARY KEY (`elder_service_recd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户服务记录';

-- ----------------------------
-- Table structure for tb_employee_entry
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee_entry`;
CREATE TABLE `tb_employee_entry` (
  `emp_entry_id` varchar(32) NOT NULL COMMENT '员工入职记录Id',
  `employee_name` varchar(20) NOT NULL COMMENT '员工姓名',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `idcard_no` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `contact_tel` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `depart_id` varchar(32) DEFAULT NULL COMMENT '所在部门',
  `depart_name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `origin_institution_id` char(32) DEFAULT NULL COMMENT '原机构id',
  `origin_institution_name` char(100) DEFAULT NULL COMMENT '原机构名称',
  `notice_entry_emp_name` varchar(20) DEFAULT NULL COMMENT '通知入职人',
  `notice_entry_emp_id` varchar(32) DEFAULT NULL COMMENT '通知入职人id',
  `notiy_entry_time` datetime DEFAULT NULL COMMENT '通知入职时间',
  `entry_confirm_status` varchar(10) DEFAULT NULL COMMENT '确认状态,0:未确认，1：已确认',
  `entry_confirm_time` datetime DEFAULT NULL COMMENT '入职确认时间',
  `useraccount` varchar(30) DEFAULT NULL COMMENT '用户登录账号',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户登录id',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(512) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL COMMENT '入职机构id',
  `institution_name` char(100) DEFAULT NULL COMMENT '入职机构名称',
  PRIMARY KEY (`emp_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工入职';

-- ----------------------------
-- Table structure for tb_employee_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee_info`;
CREATE TABLE `tb_employee_info` (
  `employee_code` varchar(32) NOT NULL COMMENT '员工编码',
  `employee_name` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `sex` varchar(10) DEFAULT NULL,
  `nation` varchar(32) DEFAULT NULL,
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `idcard_no` varchar(20) DEFAULT NULL,
  `politics_status` varchar(32) DEFAULT NULL COMMENT '政治面貌',
  `degree_educate` varchar(32) DEFAULT NULL COMMENT '文化程度',
  `graduation_college` varchar(200) DEFAULT NULL COMMENT '毕业院校',
  `native_place` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `marital_status` varchar(32) DEFAULT NULL COMMENT '婚姻状况',
  `depart_id` varchar(32) DEFAULT NULL COMMENT '所在部门',
  `contact_address` varchar(200) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL COMMENT '角色',
  `position_` varchar(20) DEFAULT NULL COMMENT '职位',
  `post_title` varchar(20) DEFAULT NULL COMMENT '职称',
  `duty` varchar(20) DEFAULT NULL COMMENT '职责',
  `entrydate` varchar(32) DEFAULT NULL COMMENT '入职日期',
  `dimission_date` varchar(8) DEFAULT NULL COMMENT '离职日期',
  `employ_nature` varchar(32) DEFAULT NULL COMMENT '用工性质',
  `degree` varchar(8) DEFAULT NULL COMMENT '学历',
  `major_domain` varchar(200) DEFAULT NULL,
  `salary_account` varchar(20) DEFAULT NULL COMMENT '工资账户',
  `region_no` varchar(32) DEFAULT NULL COMMENT 'region_no',
  `meno` varchar(200) DEFAULT NULL,
  `employee_type` varchar(32) DEFAULT NULL COMMENT '员工类型',
  `photo_url` varchar(100) DEFAULT NULL COMMENT '照片',
  `updatename` varchar(20) DEFAULT NULL COMMENT '更新人',
  `service_state` varchar(20) DEFAULT NULL COMMENT 'service_state',
  `teach_course` varchar(255) DEFAULT NULL COMMENT '计划教授课程',
  `work_mode` varchar(2) DEFAULT NULL COMMENT '工作模式',
  `userID` varchar(32) DEFAULT NULL COMMENT '用户登录id',
  `retirement_date` varchar(8) DEFAULT NULL COMMENT '退休日期',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `depart_name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `mail_address` varchar(50) DEFAULT NULL COMMENT '邮件地址',
  `residence` varchar(32) DEFAULT NULL,
  `post` varchar(32) DEFAULT NULL COMMENT '职务',
  `employee_specialty` varchar(32) DEFAULT NULL COMMENT '特长说明',
  `photo` varchar(255) DEFAULT NULL COMMENT '员工照片',
  `idcard_photo` varchar(255) DEFAULT NULL COMMENT '身份证照片（正反）',
  `contact_tel` varchar(32) DEFAULT NULL,
  `area_code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `area_name` varchar(150) DEFAULT NULL COMMENT '区域名称',
  `level` varchar(32) DEFAULT NULL COMMENT '级别',
  `job_category` varchar(30) DEFAULT NULL COMMENT '岗位类别',
  `pretax_salary` decimal(8,2) DEFAULT NULL COMMENT '稅前工资',
  `work_unit` varchar(100) DEFAULT NULL COMMENT '工作单位',
  `personnel_type` varchar(32) DEFAULT NULL COMMENT '人员类型',
  `useraccount` varchar(30) DEFAULT NULL COMMENT '用户登录账号',
  PRIMARY KEY (`employee_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工信息';

-- ----------------------------
-- Table structure for tb_en_diagnosischeck
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_diagnosischeck`;
CREATE TABLE `tb_en_diagnosischeck` (
  `check_code` varchar(32) DEFAULT NULL COMMENT '行标识',
  `medical_code` varchar(32) NOT NULL COMMENT '就诊主键',
  `check_type` varchar(10) DEFAULT NULL COMMENT '检查类型',
  `check_project` varchar(20) DEFAULT NULL COMMENT '检查项目',
  `check_result` varchar(100) DEFAULT NULL COMMENT '检查结果',
  `photo` varchar(250) DEFAULT NULL COMMENT '伤口照片',
  `check_date` date DEFAULT NULL COMMENT '检查日期',
  `check_people` varchar(20) DEFAULT NULL COMMENT '检查人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='就诊检查记录';

-- ----------------------------
-- Table structure for tb_en_diagnosisregistration
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_diagnosisregistration`;
CREATE TABLE `tb_en_diagnosisregistration` (
  `diagnosis_code` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `medical_Institutions` varchar(50) DEFAULT NULL COMMENT '就诊机构',
  `medical_reason` varchar(100) DEFAULT NULL COMMENT '就诊原因',
  `familie_code` varchar(32) DEFAULT NULL COMMENT '家属',
  `familie_name` varchar(20) DEFAULT NULL COMMENT '家属姓名',
  `family_phone` varchar(11) DEFAULT NULL COMMENT '家属电话',
  `inform_familie` varchar(10) DEFAULT NULL COMMENT '是否通知家属',
  `accompany_type` varchar(10) DEFAULT NULL COMMENT '陪诊人类型',
  `accompany_man` varchar(32) DEFAULT NULL COMMENT '陪诊人',
  `accompany_phone` varchar(11) DEFAULT NULL COMMENT '陪诊人电话',
  `accompany_fee` double DEFAULT NULL COMMENT '陪诊费用',
  `isneed_car` varchar(10) DEFAULT NULL COMMENT '是否用车',
  `car_feee` double DEFAULT NULL COMMENT '用车费用',
  `departure_time` datetime DEFAULT NULL COMMENT '离院时间',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外出就诊记录';

-- ----------------------------
-- Table structure for tb_en_doctoradvice
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_doctoradvice`;
CREATE TABLE `tb_en_doctoradvice` (
  `advice_code` varchar(32) NOT NULL,
  `medical_code` varchar(32) NOT NULL,
  `drug_name` varchar(32) DEFAULT NULL,
  `unit_dose` varchar(10) DEFAULT NULL,
  `dose` float DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `drug_role` varchar(50) DEFAULT NULL,
  `medicine_way` varchar(10) DEFAULT NULL,
  `duration_medication` int(11) DEFAULT NULL,
  `prescripiton_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `endDrug_date` date DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构编码外键',
  `valid_flag` varchar(32) DEFAULT NULL COMMENT '是否有效',
  `operate_reason` varchar(32) DEFAULT NULL COMMENT '操作原因',
  `operate_man` varchar(20) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`advice_code`,`medical_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='就诊医嘱记录';

-- ----------------------------
-- Table structure for tb_en_elder_indcident
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_elder_indcident`;
CREATE TABLE `tb_en_elder_indcident` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `indcident_date` date NOT NULL COMMENT '日期',
  `indcident_time` varchar(6) DEFAULT NULL COMMENT '发现时间',
  `discover` char(20) DEFAULT NULL COMMENT '发现者',
  `discover_role` varchar(10) DEFAULT NULL COMMENT '发现人角色',
  `indcident_address` varchar(20) DEFAULT NULL COMMENT '地点',
  `active_at_time` varchar(20) DEFAULT NULL COMMENT '当时活动',
  `active_desc` varchar(100) DEFAULT NULL COMMENT '当时活动描述',
  `exception_dec` varchar(200) DEFAULT NULL COMMENT '异常问题',
  `deal_methode` varchar(200) DEFAULT NULL COMMENT '跟进措施',
  `is_inform` varchar(4) DEFAULT NULL COMMENT '是否通知家人',
  `inform_time` datetime DEFAULT NULL COMMENT '通知家属时间',
  `dependent_name` char(10) DEFAULT NULL COMMENT '家属姓名',
  `relationship` varchar(20) DEFAULT NULL COMMENT '与院友关系',
  `fam_tel` varchar(20) DEFAULT NULL COMMENT '家人电话',
  `inform_result` varchar(4) DEFAULT NULL COMMENT '通报结果',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `discover_type` varchar(10) DEFAULT NULL COMMENT '发现人类型',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `record_tm` datetime DEFAULT NULL COMMENT '记录时间',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发现异常';

-- ----------------------------
-- Table structure for tb_en_feed_medicine
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_feed_medicine`;
CREATE TABLE `tb_en_feed_medicine` (
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `feed_date` varchar(10) DEFAULT NULL COMMENT '给药日期',
  `feed_time` varchar(6) NOT NULL COMMENT '给药时间',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `medi_name` varchar(20) DEFAULT NULL COMMENT '药物名称',
  `feed_dosage` varchar(8) DEFAULT NULL COMMENT '给药剂量',
  `medi_unit` varchar(8) DEFAULT NULL COMMENT '给药单位',
  `frequent` varchar(10) DEFAULT NULL COMMENT '频率',
  `medi_source` varchar(25) DEFAULT NULL COMMENT '来源',
  `checker` varchar(20) DEFAULT NULL COMMENT '核对人',
  `distribute_peo` varchar(20) DEFAULT NULL COMMENT '派发人',
  `not_finish_reason` varchar(8) DEFAULT NULL COMMENT '未完成原因',
  `distribute_result` varchar(4) DEFAULT NULL COMMENT '派药结果',
  `pres_occasion` varchar(20) DEFAULT NULL COMMENT '医嘱时机',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每日给药记录';

-- ----------------------------
-- Table structure for tb_en_medicalrecords
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_medicalrecords`;
CREATE TABLE `tb_en_medicalrecords` (
  `medical_code` varchar(32) DEFAULT NULL COMMENT '行标识',
  `diagnosis_code` varchar(32) NOT NULL COMMENT '外诊code',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `diagnostic_result` varchar(200) DEFAULT NULL COMMENT '诊断结果',
  `photo` varchar(250) DEFAULT NULL COMMENT '伤口照片',
  `backhospital_time` datetime DEFAULT NULL COMMENT '回院时间',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='就诊记录';

-- ----------------------------
-- Table structure for tb_en_prescription
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_prescription`;
CREATE TABLE `tb_en_prescription` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `visitdoctor_id` varchar(32) DEFAULT NULL COMMENT '就诊ID',
  `diagnose_code` varchar(32) DEFAULT NULL COMMENT '诊断编码',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `recipel_id` varchar(32) DEFAULT NULL COMMENT '处方编码',
  `recipel_date` datetime DEFAULT NULL COMMENT '处方日期',
  `recipel_source` varchar(20) DEFAULT NULL COMMENT '处方来源',
  `recipel_doctor` varchar(20) DEFAULT NULL COMMENT '开方医生',
  `medicine_name` varchar(50) DEFAULT NULL COMMENT '药物名称',
  `dosage` varchar(20) DEFAULT NULL COMMENT '剂量',
  `tiems_per_dt` varchar(20) DEFAULT NULL COMMENT '每日次数',
  `recipel_unit` varchar(20) DEFAULT NULL COMMENT '处方单位',
  `take_method` varchar(20) DEFAULT NULL COMMENT '给药途径',
  `recipel_duration` varchar(20) DEFAULT NULL COMMENT '服用期限',
  `recipel_days` decimal(5,0) DEFAULT NULL COMMENT '处方天数',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `medicine_amount` varchar(20) DEFAULT NULL COMMENT '登记数量',
  `meno` varchar(200) DEFAULT NULL,
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `recipe_photo` varchar(100) DEFAULT NULL COMMENT '处方相片',
  `is_immune` varchar(2) DEFAULT NULL COMMENT '是否豁免',
  `cash_amount` decimal(16,4) DEFAULT NULL COMMENT '现金金额',
  `other_amount` decimal(16,4) DEFAULT NULL COMMENT '其它费用金额',
  `monthly_amount` decimal(16,4) DEFAULT NULL COMMENT '月结金额',
  `voucher_amount` decimal(16,4) DEFAULT NULL COMMENT '医疗券金额',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `recipel_record_tm` datetime DEFAULT NULL COMMENT '处方记录时间',
  `update_time` datetime DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药物处方';

-- ----------------------------
-- Table structure for tb_en_tubefeed_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_tubefeed_info`;
CREATE TABLE `tb_en_tubefeed_info` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `tube_type` varchar(20) DEFAULT NULL COMMENT '管类',
  `tube_name` varchar(20) DEFAULT NULL COMMENT '管名称',
  `tube_mode` varchar(20) DEFAULT NULL COMMENT '管型号',
  `tube_size` varchar(20) DEFAULT NULL COMMENT '管尺寸',
  `milk_type` varchar(20) DEFAULT NULL COMMENT '奶类型',
  `milk_amount` varchar(20) DEFAULT NULL COMMENT '奶量',
  `feed_count` decimal(2,0) DEFAULT NULL COMMENT '每日次数',
  `change_rate` varchar(20) DEFAULT NULL COMMENT '更换间隔星期',
  `update_time` datetime DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL COMMENT '更新人',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管饲院友用品信息表';

-- ----------------------------
-- Table structure for tb_en_woud_assessment
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_woud_assessment`;
CREATE TABLE `tb_en_woud_assessment` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `wound_id` varchar(32) NOT NULL COMMENT '伤口代码',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `discover_date` varchar(10) DEFAULT NULL COMMENT '发现日期',
  `wound_reason` varchar(30) DEFAULT NULL COMMENT '伤口原因',
  `wound_assess_dt` varchar(10) DEFAULT NULL COMMENT '伤口评估日期',
  `wound_assess_tm` varchar(6) DEFAULT NULL COMMENT '伤口评估时间',
  `wound_source` varchar(30) DEFAULT NULL COMMENT '伤口来源',
  `wound_position` varchar(20) DEFAULT NULL COMMENT '伤口位置',
  `wound_length` varchar(20) DEFAULT NULL COMMENT '伤口长',
  `wound_width` varchar(20) DEFAULT NULL COMMENT '伤口宽',
  `wound_deep` varchar(20) DEFAULT NULL COMMENT '伤口深',
  `wound_type` varchar(48) DEFAULT NULL COMMENT '伤口类型',
  `wound_wash_way` varchar(48) DEFAULT NULL COMMENT '换症方法',
  `wound_wash_count` varchar(20) DEFAULT NULL COMMENT '换症次数',
  `wound_recover_dt` varchar(10) DEFAULT NULL COMMENT '愈合日期',
  `wound_remark` varchar(20) DEFAULT NULL COMMENT '伤口备注',
  `wound_assessor` varchar(20) DEFAULT NULL COMMENT '伤口评估人',
  `photo` varchar(255) DEFAULT NULL COMMENT '员工照片',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `task_exec_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='伤口评估';

-- ----------------------------
-- Table structure for tb_en_wound_wash
-- ----------------------------
DROP TABLE IF EXISTS `tb_en_wound_wash`;
CREATE TABLE `tb_en_wound_wash` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `wash_date` varchar(8) DEFAULT NULL COMMENT '洗症日期',
  `wash_tm` varchar(6) DEFAULT NULL COMMENT '洗症时间',
  `wound_id` varchar(32) DEFAULT NULL COMMENT '伤口代码',
  `wash_man` varchar(20) DEFAULT NULL COMMENT '洗症人',
  `wound_way` varchar(48) DEFAULT NULL COMMENT 'wound_way',
  `wash_remark` varchar(200) DEFAULT NULL COMMENT '洗症备注',
  `wound_deep` varchar(20) DEFAULT NULL COMMENT '伤口深',
  `wound_width` varchar(20) DEFAULT NULL COMMENT '伤口宽',
  `wound_length` varchar(20) DEFAULT NULL COMMENT '伤口长',
  `is_stink` varchar(10) DEFAULT NULL COMMENT '有无臭味',
  `around_status` varchar(20) DEFAULT NULL COMMENT '伤口周围状况',
  `center_status` varchar(20) DEFAULT NULL COMMENT '伤口中央状况',
  `exudation` varchar(20) DEFAULT NULL COMMENT '有无渗液',
  `photo` varchar(255) DEFAULT NULL COMMENT '员工照片',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `task_exec_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='伤口洗症';

-- ----------------------------
-- Table structure for tb_equipment_repair
-- ----------------------------
DROP TABLE IF EXISTS `tb_equipment_repair`;
CREATE TABLE `tb_equipment_repair` (
  `repair_code` varchar(32) NOT NULL COMMENT '设备维修编码',
  `repair_report_depart` varchar(20) DEFAULT NULL COMMENT '报修部门',
  `repair_report_man` varchar(20) DEFAULT NULL COMMENT '报修人员',
  `equipment_code` varchar(32) DEFAULT NULL COMMENT '设备编码FK',
  `equipment_name` varchar(50) DEFAULT NULL COMMENT '报修设备名称',
  `repair_report_dt` varchar(8) DEFAULT NULL COMMENT '报修日期',
  `repair_report_desc` varchar(100) DEFAULT NULL COMMENT '报修问题描述',
  `repair_status` varchar(10) DEFAULT NULL COMMENT '维修状态',
  `repair_dt` varchar(8) DEFAULT NULL COMMENT '维修日期',
  `repair_man` varchar(20) DEFAULT NULL COMMENT '维修人员',
  `repair_desc` varchar(100) DEFAULT NULL COMMENT '维修过程描述',
  `repair_result` varchar(50) DEFAULT NULL COMMENT '维修结果',
  `meno` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`repair_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设施设备维修';

-- ----------------------------
-- Table structure for tb_eva_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_eva_task`;
CREATE TABLE `tb_eva_task` (
  `eva_task_id` varchar(32) NOT NULL,
  `eva_type` decimal(1,0) DEFAULT NULL COMMENT '0 初评\n            1 复评\n            1 入住评估',
  `eva_plan_time` datetime DEFAULT NULL,
  `eva_mode` decimal(1,0) DEFAULT NULL COMMENT '0  现场评估\n            1  机构评估\n            2  资料复评',
  `questionnaire_id` char(50) DEFAULT NULL,
  `questionnaire_name` varchar(50) DEFAULT NULL,
  `eva_org_id` varchar(32) DEFAULT NULL,
  `eva_org_name` varchar(50) DEFAULT NULL,
  `handler_id` varchar(32) DEFAULT NULL,
  `handler_name` varchar(50) DEFAULT NULL,
  `eva_expert` varchar(100) DEFAULT NULL,
  `eva_time` datetime DEFAULT NULL,
  `eva_verdict_name` varchar(50) DEFAULT NULL,
  `eva_verdict` varchar(32) DEFAULT NULL COMMENT '入住区域部门id',
  `eva_record` varchar(1000) DEFAULT NULL,
  `eva_detail_id` varchar(32) DEFAULT NULL COMMENT '记录评估系统的对应评估结果ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  `idcard_no` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `room_no` varchar(32) DEFAULT NULL COMMENT '房间编号',
  `BED_NO` varchar(32) DEFAULT NULL COMMENT '床位代码',
  `sex` varchar(10) DEFAULT NULL,
  `contact_tel` varchar(32) DEFAULT NULL,
  `contact_address` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `STATUS` varchar(2) DEFAULT NULL COMMENT '未排期,已排期,已评估',
  `institution_id` varchar(32) DEFAULT NULL,
  `self_care_ability` varchar(20) DEFAULT NULL COMMENT '活动能力',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`eva_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_expense_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_expense_item`;
CREATE TABLE `tb_expense_item` (
  `institution_id` varchar(32) NOT NULL,
  `expense_item_id` varchar(32) NOT NULL COMMENT 'expense_item_id',
  `expense_item_name` varchar(50) DEFAULT NULL COMMENT '费用项目表示名称',
  `expense_type_id` varchar(32) DEFAULT NULL COMMENT '费用类型id',
  `leave_refund_restrict_flag` varchar(5) DEFAULT NULL COMMENT '请假退费标志',
  `leave_refund_restrict_mode` varchar(32) DEFAULT NULL COMMENT '请假退费方式',
  `leave_refund_startbillingdays` int(11) DEFAULT NULL COMMENT '请假退费开始天数',
  `quit_refund_restrict_flag` varchar(5) DEFAULT NULL COMMENT '退住退费标志',
  `quit_refund_mode` varchar(32) DEFAULT NULL COMMENT '退住退费方式',
  `continue_payment` varchar(5) DEFAULT NULL COMMENT '持续缴费或者一次缴费',
  `payment_cycle` varchar(32) DEFAULT NULL COMMENT '缴费周期（月缴年缴）',
  `payment_cycle_start_dt` datetime DEFAULT NULL COMMENT '缴费阶段开始日期',
  `payment_cycle_end_dt` datetime DEFAULT NULL COMMENT '缴费阶段终止日期',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_flag` char(1) DEFAULT NULL COMMENT '删除标志',
  `slv` varchar(10) DEFAULT NULL COMMENT '税率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='费用项目';

-- ----------------------------
-- Table structure for tb_expense_levy
-- ----------------------------
DROP TABLE IF EXISTS `tb_expense_levy`;
CREATE TABLE `tb_expense_levy` (
  `expense_levy_id` varchar(32) NOT NULL,
  `expense_standard_attribute_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `adjust_type` char(2) DEFAULT NULL COMMENT '征收类型,统一征收or自定义',
  `levy_time` datetime DEFAULT NULL COMMENT '征收时间',
  `recorder` varchar(20) DEFAULT NULL COMMENT '征收记录人',
  `recorder_id` varchar(32) DEFAULT NULL COMMENT '记录人id',
  PRIMARY KEY (`expense_levy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='费用征收记录';

-- ----------------------------
-- Table structure for tb_expense_levy_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_expense_levy_detail`;
CREATE TABLE `tb_expense_levy_detail` (
  `expense_levy_detail_id` varchar(32) NOT NULL,
  `expense_levy_id` varchar(32) NOT NULL,
  `elder_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`expense_levy_detail_id`),
  KEY `FK_Reference_19` (`expense_levy_id`),
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`expense_levy_id`) REFERENCES `tb_expense_levy` (`expense_levy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='征收了那些人';

-- ----------------------------
-- Table structure for tb_expense_standard
-- ----------------------------
DROP TABLE IF EXISTS `tb_expense_standard`;
CREATE TABLE `tb_expense_standard` (
  `expense_standard_id` varchar(32) NOT NULL COMMENT '费用标准id',
  `institution_id` varchar(32) DEFAULT NULL,
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT 'expense_item_id',
  `expense_standard_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  `standard_sale_price` decimal(10,2) DEFAULT NULL COMMENT '费用标准价格',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_flag` char(1) DEFAULT NULL COMMENT '删除标志',
  `item_type` char(2) DEFAULT NULL COMMENT '基础项目0,其他1',
  `spbm` varchar(50) DEFAULT NULL COMMENT '商品编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='费用标准';

-- ----------------------------
-- Table structure for tb_expense_standard_attribute
-- ----------------------------
DROP TABLE IF EXISTS `tb_expense_standard_attribute`;
CREATE TABLE `tb_expense_standard_attribute` (
  `expense_standard_attribute_id` varchar(32) NOT NULL COMMENT '费用标准属性id',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `price_start_time` datetime DEFAULT NULL COMMENT '生效开始时间',
  `price_end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `adjust_type` varchar(32) DEFAULT NULL COMMENT 'adjust_type',
  `elder_code` text,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_flag` char(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`expense_standard_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='费用标准属性';

-- ----------------------------
-- Table structure for tb_external_inspection
-- ----------------------------
DROP TABLE IF EXISTS `tb_external_inspection`;
CREATE TABLE `tb_external_inspection` (
  `ex_inspect_id` varchar(32) NOT NULL COMMENT '政府检查ID',
  `ex_inspect_type` varchar(10) DEFAULT NULL COMMENT '政府检查类别',
  `ex_inspect_dt` varchar(8) DEFAULT NULL COMMENT '政府检查日期',
  `ex_inspect_tm` varchar(6) DEFAULT NULL COMMENT '政府检查时间',
  `ex_inspect_org` varchar(20) DEFAULT NULL COMMENT '政府检查机构',
  `ex_inspect_man` varchar(20) DEFAULT NULL COMMENT '政府检查人员',
  `ex_inspected_man` varchar(20) DEFAULT NULL COMMENT '受检人',
  `ex_inspect_problem` varchar(100) DEFAULT NULL COMMENT '问题及整改要求',
  `ex_inspect_ag_result` varchar(100) DEFAULT NULL COMMENT '复查情况',
  `ex_inspect_ag_dt` varchar(8) DEFAULT NULL COMMENT '复查时间',
  `ex_inspect_explain` varchar(50) DEFAULT NULL COMMENT '检查描述',
  `ex_inspect_result` varchar(20) DEFAULT NULL COMMENT '检查结果',
  `ex_inspect_area` varchar(20) DEFAULT NULL COMMENT '政府检查区域',
  `institution_id` varchar(32) DEFAULT NULL,
  `reform_status` varchar(4) DEFAULT NULL COMMENT '整改状态',
  `meno` varchar(200) DEFAULT NULL,
  `reform_result` varchar(100) DEFAULT NULL COMMENT '整改结果',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ex_inspect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='政府部门安全检查';

-- ----------------------------
-- Table structure for tb_family_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_family_history`;
CREATE TABLE `tb_family_history` (
  `family_history_id` varchar(32) NOT NULL COMMENT '家族史ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `fh_relationship` varchar(30) DEFAULT NULL COMMENT '人物与本人关系',
  `fh_code` varchar(30) DEFAULT NULL COMMENT '家族史疾病代码',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`family_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家族史';

-- ----------------------------
-- Table structure for tb_fd_daily_diet
-- ----------------------------
DROP TABLE IF EXISTS `tb_fd_daily_diet`;
CREATE TABLE `tb_fd_daily_diet` (
  `diet_code` varchar(32) NOT NULL COMMENT '食谱ID',
  `food_id` varchar(32) DEFAULT NULL,
  `diet_dt` varchar(8) DEFAULT NULL COMMENT '食谱日期',
  `diet_type` varchar(10) DEFAULT NULL COMMENT '餐次',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `weekly_set_meal_id` varchar(32) NOT NULL COMMENT '周id',
  PRIMARY KEY (`diet_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每日食谱';

-- ----------------------------
-- Table structure for tb_fd_daily_diet_like
-- ----------------------------
DROP TABLE IF EXISTS `tb_fd_daily_diet_like`;
CREATE TABLE `tb_fd_daily_diet_like` (
  `daily_diet_like_id` varchar(32) NOT NULL COMMENT '每日食谱喜欢id',
  `diet_code` varchar(32) DEFAULT NULL COMMENT '食谱ID',
  `userID` varchar(32) NOT NULL COMMENT '用户登录id',
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  `food_like` varchar(8) NOT NULL COMMENT '食谱喜欢,  1:喜欢',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`daily_diet_like_id`),
  KEY `FK_Relationship_138` (`diet_code`),
  CONSTRAINT `FK_Relationship_138` FOREIGN KEY (`diet_code`) REFERENCES `tb_fd_daily_diet` (`diet_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每日食谱喜欢';

-- ----------------------------
-- Table structure for tb_fd_meal_diction
-- ----------------------------
DROP TABLE IF EXISTS `tb_fd_meal_diction`;
CREATE TABLE `tb_fd_meal_diction` (
  `food_id` varchar(32) DEFAULT NULL,
  `food_code` varchar(32) NOT NULL COMMENT '餐品编码',
  `food_name` varchar(20) DEFAULT NULL COMMENT '餐品名称',
  `food_type` varchar(20) DEFAULT NULL COMMENT '餐品类型',
  `food_price` varchar(20) DEFAULT NULL COMMENT '餐品价格',
  `food_unit` varchar(20) DEFAULT NULL COMMENT '餐品单位',
  `food_material` varchar(50) DEFAULT NULL COMMENT '餐品材料',
  `food_photo` varchar(500) DEFAULT NULL,
  `service_mode` char(3) DEFAULT NULL COMMENT '标准餐/订餐',
  `use_flag` varchar(32) DEFAULT NULL COMMENT '使用标志',
  `meno` varchar(100) DEFAULT NULL COMMENT '备注',
  `is_recommend` varchar(4) DEFAULT NULL COMMENT '是否推荐',
  `institution_id` varchar(32) DEFAULT NULL,
  `food_nutrition_comp` varchar(200) DEFAULT NULL COMMENT '营养成分',
  `food_suitable_crowd` varchar(200) DEFAULT NULL COMMENT '适宜人群',
  `food_unsuitable_crowd` varchar(200) DEFAULT NULL COMMENT '不适人群',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`food_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='餐品字典';

-- ----------------------------
-- Table structure for tb_fd_week_set_meal
-- ----------------------------
DROP TABLE IF EXISTS `tb_fd_week_set_meal`;
CREATE TABLE `tb_fd_week_set_meal` (
  `weekly_set_meal_id` varchar(32) NOT NULL COMMENT '周套餐id',
  `weekly_set_no` int(11) DEFAULT NULL COMMENT '周套餐序号',
  `weekly_set_name` varchar(50) NOT NULL COMMENT '周套餐名称',
  `weekly_set_type` varchar(10) DEFAULT NULL COMMENT '周套餐类型1:标准套餐,2:高尿酸套餐,3:高血糖套餐',
  `weekly_start` date NOT NULL COMMENT '周套餐开始日期',
  `weekly_end` date NOT NULL COMMENT '周套餐结束日期',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`weekly_set_meal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='周套餐';

-- ----------------------------
-- Table structure for tb_floor_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_floor_info`;
CREATE TABLE `tb_floor_info` (
  `floor_no` varchar(32) NOT NULL COMMENT '楼层代码',
  `building_no` varchar(32) NOT NULL COMMENT '楼号',
  `floor_rank` varchar(20) DEFAULT NULL COMMENT '楼层序号',
  `floor_name` varchar(20) DEFAULT NULL COMMENT '楼层名称',
  `floor_in_charge` varchar(20) DEFAULT NULL COMMENT '楼层负责人',
  `floor_tel` varchar(20) DEFAULT NULL COMMENT '楼层电话',
  `floor_desc` varchar(100) DEFAULT NULL COMMENT '楼层描述',
  `desc_order` int(11) DEFAULT NULL COMMENT '排序',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼层信息';

-- ----------------------------
-- Table structure for tb_general_in
-- ----------------------------
DROP TABLE IF EXISTS `tb_general_in`;
CREATE TABLE `tb_general_in` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `recorde_time` varchar(4) DEFAULT NULL COMMENT '记录时间',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `solid_type` varchar(20) DEFAULT NULL COMMENT '固体类型',
  `solid_amount` varchar(20) DEFAULT NULL COMMENT '固体量',
  `solid_tm` varchar(6) DEFAULT NULL COMMENT '固体进食时间',
  `liqued_type` varchar(20) DEFAULT NULL COMMENT '流质类型',
  `liqued_amount` varchar(20) DEFAULT NULL COMMENT '流质量',
  `liqued_tm` varchar(6) DEFAULT NULL COMMENT '流体进食时间',
  `menu_code` varchar(20) DEFAULT NULL COMMENT '对应的菜单ID',
  `mouthwash_flag` varchar(4) DEFAULT NULL COMMENT '洗口标志',
  `mouthwash_tm` varchar(6) DEFAULT NULL COMMENT '洗口时间',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `solid` varchar(100) DEFAULT NULL COMMENT '固体',
  `liqued` varchar(100) DEFAULT NULL COMMENT '流质',
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='普通院友入量记录';

-- ----------------------------
-- Table structure for tb_general_out
-- ----------------------------
DROP TABLE IF EXISTS `tb_general_out`;
CREATE TABLE `tb_general_out` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `uri_way` varchar(10) DEFAULT NULL COMMENT '小便方式',
  `uri_amount` varchar(20) DEFAULT NULL COMMENT '小便量',
  `uri_concernd` varchar(48) DEFAULT NULL COMMENT '小便关注事项',
  `uri_tm` varchar(6) DEFAULT NULL COMMENT '小便时间',
  `stool_amount` varchar(20) DEFAULT NULL COMMENT '大便量',
  `stool_concern` varchar(48) DEFAULT NULL COMMENT '大便关注事项',
  `stool_tm` varchar(6) DEFAULT NULL COMMENT '大便时间',
  `vomitus_amount` varchar(20) DEFAULT NULL COMMENT '呕吐量',
  `vomitus_tm` varchar(6) DEFAULT NULL COMMENT '呕吐时间',
  `vomitus_concern` varchar(48) DEFAULT NULL COMMENT '呕吐关注事项',
  `potty_training` varchar(4) DEFAULT NULL COMMENT '如厕训练',
  `potty_training_tm` varchar(20) DEFAULT NULL COMMENT '如厕训练时间',
  `remind_toilet` varchar(4) DEFAULT NULL COMMENT '提醒入厕',
  `remind_toilet_tm` varchar(6) DEFAULT NULL COMMENT '提醒入厕时间',
  `privide_tool` varchar(4) DEFAULT NULL COMMENT '提供便器',
  `privide_tool_tm` varchar(6) DEFAULT NULL COMMENT '提供便器时间',
  `assist_bowel` varchar(4) DEFAULT NULL COMMENT '协助排便',
  `assist_bowel_tm` varchar(6) DEFAULT NULL COMMENT '协助排便时间',
  `assist_urin` varchar(4) DEFAULT NULL COMMENT '协助排尿',
  `assist_urin_tm` varchar(6) DEFAULT NULL COMMENT '协助排尿时间',
  `aritificial_bowel` varchar(4) DEFAULT NULL COMMENT '人工排便',
  `aritificial_bowel_tm` varchar(6) DEFAULT NULL COMMENT '人工排便时间',
  `is_wash` varchar(4) DEFAULT NULL COMMENT '清洗',
  `is_wash_tm` varchar(6) DEFAULT NULL COMMENT '清洗时间',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='普通院友出量表';

-- ----------------------------
-- Table structure for tb_goods_fee_rec
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_fee_rec`;
CREATE TABLE `tb_goods_fee_rec` (
  `goods_fee_id` varchar(32) NOT NULL COMMENT '计费明细ID',
  `goods_fee_code` varchar(32) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `consume_dt` varchar(10) DEFAULT NULL COMMENT '消费日期',
  `consume_amount` decimal(16,2) DEFAULT NULL COMMENT '消费金额',
  `pay_flag` varchar(2) DEFAULT NULL COMMENT '缴费标志',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `institution_id` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`goods_fee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品消费登记单';

-- ----------------------------
-- Table structure for tb_goods_fee_rec_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_fee_rec_detail`;
CREATE TABLE `tb_goods_fee_rec_detail` (
  `goods_fee_rec_detail_id` varchar(32) NOT NULL,
  `goods_fee_id` varchar(32) DEFAULT NULL COMMENT '计费明细ID',
  `goods_code` varchar(32) NOT NULL COMMENT '物品代码',
  `goods_count` varchar(20) DEFAULT NULL COMMENT '物品数量',
  `goods_price` decimal(16,2) DEFAULT NULL COMMENT '物品单价',
  `consume_amount` decimal(16,2) DEFAULT NULL COMMENT '消费金额',
  `consume_tm` varchar(10) DEFAULT NULL COMMENT '消费时间',
  PRIMARY KEY (`goods_fee_rec_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品消费登记单明细';

-- ----------------------------
-- Table structure for tb_health_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_health_basic_info`;
CREATE TABLE `tb_health_basic_info` (
  `health_basic_info_id` varchar(32) NOT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `body_height` decimal(4,1) DEFAULT NULL COMMENT '身高(cm)',
  `body_weight` decimal(4,1) DEFAULT NULL COMMENT '体重(kg)',
  `ABO_type` varchar(32) DEFAULT NULL COMMENT 'ABO 血型',
  `rh_type` varchar(32) DEFAULT NULL COMMENT 'RH 血型',
  `chest_circum` decimal(4,1) DEFAULT NULL COMMENT '胸围(cm)',
  `waist_line` decimal(4,1) DEFAULT NULL COMMENT '腰围(cm)',
  `hip_circum` decimal(4,1) DEFAULT NULL COMMENT '臀围(cm)',
  `left_vision` decimal(4,1) DEFAULT NULL COMMENT '视力(左)',
  `right_vision` decimal(4,1) DEFAULT NULL COMMENT '视力(右)',
  `left_hearing` decimal(4,1) DEFAULT NULL COMMENT '听力(左)',
  `right_hearing` decimal(4,1) DEFAULT NULL COMMENT '听力(右)',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`health_basic_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_hr_activity_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_activity_record`;
CREATE TABLE `tb_hr_activity_record` (
  `emp_activity_record_id` varchar(32) NOT NULL COMMENT '活动参与记录id',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `activity_descr` varchar(512) DEFAULT NULL COMMENT '活动说明',
  `activity_photos_uri` varchar(512) DEFAULT NULL COMMENT '参与活动详情(多个逗号分隔）',
  `activity_time` datetime DEFAULT NULL COMMENT '参与活动时间',
  `upload_time` datetime DEFAULT NULL COMMENT '资料上传时间',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `updatename` varchar(20) DEFAULT NULL COMMENT '更新人',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`emp_activity_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工参与活动的记录';

-- ----------------------------
-- Table structure for tb_hr_certificate
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_certificate`;
CREATE TABLE `tb_hr_certificate` (
  `certificate_id` varchar(32) NOT NULL COMMENT '员工证书ID',
  `certificate_name` varchar(25) DEFAULT NULL COMMENT '证书名称',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `certificate_type` varchar(10) DEFAULT NULL COMMENT '证书类型',
  `certificate_issuer` varchar(50) DEFAULT NULL COMMENT '发证机构',
  `issue_dt` varchar(8) DEFAULT NULL COMMENT '发证日期',
  `valid_dt` varchar(8) DEFAULT NULL COMMENT '有效期',
  `certificates_uri` varchar(1024) DEFAULT NULL COMMENT '证书内页(多个逗号分隔）',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工证书信息';

-- ----------------------------
-- Table structure for tb_hr_employer_chg
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_employer_chg`;
CREATE TABLE `tb_hr_employer_chg` (
  `chg_record_no` varchar(32) NOT NULL COMMENT '档案编号',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `employ_chg_type` varchar(10) DEFAULT NULL COMMENT '人事变动类型',
  `employ_chg_reason` varchar(50) DEFAULT NULL COMMENT '变动原因',
  `employ_chg_dt` varchar(10) DEFAULT NULL COMMENT '变动日期',
  `original_depart` varchar(32) DEFAULT NULL COMMENT '原部门名称',
  `original_post` varchar(32) DEFAULT NULL COMMENT '原职务',
  `new_depart` varchar(32) DEFAULT NULL COMMENT '新部门名称',
  `new_post` varchar(32) DEFAULT NULL COMMENT '新职务',
  `new_institution_id` int(11) DEFAULT NULL COMMENT '新机构id外键',
  `meno` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`chg_record_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工变动';

-- ----------------------------
-- Table structure for tb_hr_employer_resume
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_employer_resume`;
CREATE TABLE `tb_hr_employer_resume` (
  `resume_code` varchar(32) NOT NULL COMMENT '员工履历编码',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `work_company` varchar(50) DEFAULT NULL COMMENT '工作单位',
  `depart` varchar(20) DEFAULT NULL COMMENT '部门',
  `post` varchar(32) DEFAULT NULL COMMENT '职务',
  `salary` decimal(16,2) DEFAULT NULL COMMENT '薪水',
  `resume_beg_dt` varchar(10) DEFAULT NULL COMMENT '工作起始日期',
  `resume_end_dt` varchar(10) DEFAULT NULL COMMENT '工作截止日期',
  `describe_info` varchar(100) DEFAULT NULL COMMENT '描述',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`resume_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工工作履历';

-- ----------------------------
-- Table structure for tb_hr_employer_salary
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_employer_salary`;
CREATE TABLE `tb_hr_employer_salary` (
  `salary_code` varchar(32) NOT NULL COMMENT '工资编码',
  `salary_item_code` varchar(32) DEFAULT NULL COMMENT '工资科目编码',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `salary_month` varchar(6) DEFAULT NULL COMMENT '工资月份',
  `salary_amount` decimal(14,4) DEFAULT NULL COMMENT '工资金额',
  `salary_item_display_order` int(11) DEFAULT NULL COMMENT '工资科目显示顺序',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`salary_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工工资';

-- ----------------------------
-- Table structure for tb_hr_employ_train
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_employ_train`;
CREATE TABLE `tb_hr_employ_train` (
  `train_id` varchar(32) NOT NULL COMMENT '培训ID',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `train_type` varchar(20) DEFAULT NULL COMMENT '培训类别',
  `train_name` varchar(50) DEFAULT NULL COMMENT '培训名称',
  `train_content` varchar(200) DEFAULT NULL COMMENT '培训内容',
  `train_beg_dt` varchar(10) DEFAULT NULL COMMENT '培训开始日期',
  `train_days` float DEFAULT NULL COMMENT '培训天数',
  `train_end_dt` varchar(10) DEFAULT NULL COMMENT '培训截止日期',
  `train_institution` varchar(50) DEFAULT NULL COMMENT '培训机构',
  `is_certificate` varchar(2) DEFAULT NULL COMMENT '是否获得证书',
  `certificate_name` varchar(25) DEFAULT NULL COMMENT '证书名称',
  `meno` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工培训';

-- ----------------------------
-- Table structure for tb_hr_labor_contract
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_labor_contract`;
CREATE TABLE `tb_hr_labor_contract` (
  `contract_code` varchar(32) NOT NULL COMMENT '合同编号',
  `employee_code` varchar(32) DEFAULT NULL,
  `contract_type` varchar(20) DEFAULT NULL COMMENT '合同类型',
  `contract_name` varchar(50) DEFAULT NULL COMMENT '合同名称',
  `contract_beg_dt` varchar(10) DEFAULT NULL COMMENT '合同开始时间',
  `contract_end_dt` varchar(10) DEFAULT NULL COMMENT '合同结束时间',
  `contract_sign_dt` varchar(10) DEFAULT NULL COMMENT '合同签订时间',
  `company_name` varchar(32) DEFAULT NULL COMMENT '单位名称',
  `valid_flag` varchar(4) DEFAULT '0' COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(32) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构编码外键',
  PRIMARY KEY (`contract_code`),
  KEY `FK_Relationship_2` (`employee_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='劳动合同信息';

-- ----------------------------
-- Table structure for tb_hr_leave_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_leave_record`;
CREATE TABLE `tb_hr_leave_record` (
  `leave_code` varchar(32) NOT NULL COMMENT '请假编码',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `apply_dt` varchar(10) DEFAULT NULL COMMENT '请假日期',
  `apply_tm` varchar(6) DEFAULT NULL COMMENT '请假时间',
  `leave_type` varchar(8) DEFAULT NULL COMMENT '请假类型',
  `leave_reason` varchar(50) DEFAULT NULL COMMENT '请假原因',
  `leave_beg_dt` varchar(10) DEFAULT NULL COMMENT '休假开始日期',
  `leave_beg_tm` varchar(6) DEFAULT NULL COMMENT '休假开始时间',
  `leave_end_dt` varchar(10) DEFAULT NULL COMMENT '休假截止日期',
  `leave_end_tm` varchar(6) DEFAULT NULL COMMENT '休假截止时间',
  `leave_days` varchar(8) DEFAULT NULL COMMENT '天数',
  `approver` varchar(32) DEFAULT NULL COMMENT '审批人',
  `approve_manager` varchar(32) DEFAULT NULL COMMENT '批准经理',
  `relay_staff` varchar(32) DEFAULT NULL COMMENT '替班员工',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`leave_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工请假记录';

-- ----------------------------
-- Table structure for tb_hr_performance
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_performance`;
CREATE TABLE `tb_hr_performance` (
  `performance_id` varchar(32) NOT NULL COMMENT '绩效ID',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `assess_cycle` varchar(10) DEFAULT NULL COMMENT '考核周期',
  `assess_conten` varchar(100) DEFAULT NULL COMMENT '考核内容',
  `assess_result` varchar(50) DEFAULT NULL COMMENT '考核结果',
  `assess_name` varchar(32) DEFAULT NULL COMMENT '考核人',
  `assess_dt` varchar(10) DEFAULT NULL COMMENT '考核日期',
  `meno` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`performance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工绩效';

-- ----------------------------
-- Table structure for tb_hr_reward_punish
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_reward_punish`;
CREATE TABLE `tb_hr_reward_punish` (
  `reward_punish_id` varchar(32) NOT NULL COMMENT '奖惩ID',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `publish_dt` varchar(8) DEFAULT NULL COMMENT '发布日期',
  `reward_punish_content` varchar(50) DEFAULT NULL COMMENT '奖惩内容',
  `reward_punish_fee` varchar(20) DEFAULT NULL COMMENT '奖惩金额',
  `reward_punish_reason` varchar(50) DEFAULT NULL COMMENT '奖惩原因',
  `reward_punish_type` varchar(10) DEFAULT NULL COMMENT '奖惩类型',
  `meno` varchar(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`reward_punish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工奖惩';

-- ----------------------------
-- Table structure for tb_hr_salary_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_salary_item`;
CREATE TABLE `tb_hr_salary_item` (
  `salary_item_code` varchar(32) NOT NULL COMMENT '工资科目编码',
  `salary_item` varchar(25) DEFAULT NULL COMMENT '工资科目名称',
  `salary_item_des` varchar(100) DEFAULT NULL COMMENT '工资科目描述',
  `salary_item_display_order` int(11) DEFAULT NULL COMMENT '工资科目显示顺序',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资科目';

-- ----------------------------
-- Table structure for tb_hr_salary_sheet
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_salary_sheet`;
CREATE TABLE `tb_hr_salary_sheet` (
  `salary_sheet_code` varchar(32) NOT NULL COMMENT '工资单科目ID',
  `salary_item_code` varchar(32) DEFAULT NULL COMMENT '工资科目编码',
  `salary_item_display_order` int(11) DEFAULT NULL COMMENT '工资科目显示顺序',
  `begin_month` varchar(6) DEFAULT NULL COMMENT '开始月份',
  `end_month` varchar(6) DEFAULT NULL COMMENT '截止月份',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`salary_sheet_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工资单包含的科目';

-- ----------------------------
-- Table structure for tb_hr_skill_display
-- ----------------------------
DROP TABLE IF EXISTS `tb_hr_skill_display`;
CREATE TABLE `tb_hr_skill_display` (
  `emp_skill_display_id` varchar(32) DEFAULT NULL,
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `skill_scene_descr` varchar(100) DEFAULT NULL COMMENT '技能场景说明',
  `skill_scene_videos_uri` varchar(512) DEFAULT NULL COMMENT '技能场景视频',
  `skill_show` varchar(2) DEFAULT NULL COMMENT '是否共享技能秀场, 0:否，1:是',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `updatename` varchar(20) DEFAULT NULL COMMENT '更新人',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工技能展示';

-- ----------------------------
-- Table structure for tb_import_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_import_log`;
CREATE TABLE `tb_import_log` (
  `import_id` varchar(32) DEFAULT NULL COMMENT '导入ID',
  `import_tm` datetime DEFAULT NULL COMMENT '导入时间',
  `import_template` varchar(20) DEFAULT NULL COMMENT '导入模板',
  `import_result` varchar(8) DEFAULT NULL COMMENT '导入结果',
  `hint` varchar(1000) DEFAULT NULL COMMENT '提示信息',
  `updater` varchar(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='初始化导入日志';

-- ----------------------------
-- Table structure for tb_institution
-- ----------------------------
DROP TABLE IF EXISTS `tb_institution`;
CREATE TABLE `tb_institution` (
  `institution_id` varchar(32) NOT NULL,
  `institution_name` varchar(30) DEFAULT NULL COMMENT '机构名称',
  `institution_englishname` varchar(50) DEFAULT NULL COMMENT '机构英文名称',
  `institution_code` varchar(30) DEFAULT NULL COMMENT '机构编码',
  `firm_nature` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `registered_fund` decimal(10,2) DEFAULT NULL COMMENT '注册资金',
  `registration_num` varchar(30) DEFAULT NULL COMMENT '工商注册号',
  `issuer` varchar(30) DEFAULT NULL COMMENT '发证机关',
  `tax_num` varchar(30) DEFAULT NULL COMMENT '国税登记号',
  `local_tax_num` varchar(30) DEFAULT NULL COMMENT '地税登记编码',
  `deposit_bank_name` varchar(30) DEFAULT NULL COMMENT '开户银行名称',
  `deposit_bank_num` varchar(30) DEFAULT NULL COMMENT '开户银行账号',
  `registered_address` varchar(32) DEFAULT NULL COMMENT '注册地址',
  `administrative_area` varchar(50) DEFAULT NULL COMMENT '行政区域名称',
  `zip` varchar(6) DEFAULT NULL COMMENT '邮编1',
  `fax` varchar(11) DEFAULT NULL COMMENT '传真',
  `mail` varchar(30) DEFAULT NULL COMMENT '电子邮件',
  `website` varchar(50) DEFAULT NULL COMMENT '机构网址',
  `contact_person` varchar(32) DEFAULT NULL COMMENT ' 联系人',
  `contact_tel` varchar(32) DEFAULT NULL,
  `custmer_service_hotline` varchar(32) DEFAULT NULL COMMENT '客服电话',
  `legal_person` varchar(30) DEFAULT NULL COMMENT '法人',
  `business_scope` varchar(255) DEFAULT NULL COMMENT '经营范围',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `institution_classification` varchar(32) DEFAULT NULL COMMENT '机构类别,可分为：master总机构、sub子机构、site站点',
  `organization_image` varchar(100) DEFAULT NULL COMMENT '机构图标',
  `organization_wechat` varchar(32) DEFAULT NULL COMMENT '机构微信号',
  `organization_blog` varchar(32) DEFAULT NULL COMMENT '机构微博',
  `organization_qq` varchar(32) DEFAULT NULL COMMENT '机构QQ号',
  PRIMARY KEY (`institution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构';

-- ----------------------------
-- Table structure for tb_institution_param_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_institution_param_info`;
CREATE TABLE `tb_institution_param_info` (
  `param_id` varchar(32) NOT NULL COMMENT '机构参数ID',
  `param_code` varchar(32) DEFAULT NULL COMMENT '参数编码',
  `param_name` varchar(20) DEFAULT NULL COMMENT '参数名称',
  `param_value` varchar(20) DEFAULT NULL COMMENT '参数值',
  `meno` varchar(200) DEFAULT NULL COMMENT '开始日期',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime NOT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='养老机构业务参数表';

-- ----------------------------
-- Table structure for tb_institution_rel
-- ----------------------------
DROP TABLE IF EXISTS `tb_institution_rel`;
CREATE TABLE `tb_institution_rel` (
  `institution_rel_id` varchar(32) NOT NULL COMMENT 'institution_rel_id',
  `frist_institution_id` varchar(32) DEFAULT NULL COMMENT '主机构',
  `frist_institution_name` varchar(30) DEFAULT NULL COMMENT '主机构名称',
  `second_institution_id` varchar(32) DEFAULT NULL COMMENT '从机构',
  `second_institution_name` varchar(30) DEFAULT NULL COMMENT '从机构名称',
  `relation` varchar(32) DEFAULT NULL COMMENT '关系',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`institution_rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构关系表';

-- ----------------------------
-- Table structure for tb_interface_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_interface_config`;
CREATE TABLE `tb_interface_config` (
  `interface_config_id` varchar(32) DEFAULT NULL COMMENT 'interface_config_id',
  `modular_code` varchar(32) DEFAULT NULL COMMENT '模块编号',
  `modular_name` varchar(32) DEFAULT NULL COMMENT '模块名称',
  `equipment_type` varchar(32) DEFAULT NULL COMMENT '设备类型',
  `operationtype` varchar(32) DEFAULT NULL COMMENT '操作类型',
  `operation_para` varchar(50) DEFAULT NULL COMMENT '操作参数',
  `operation_para_des` varchar(64) DEFAULT NULL COMMENT '操作参数描述',
  `service_object` varchar(32) DEFAULT NULL COMMENT '用户群体',
  `service_class` varchar(64) DEFAULT NULL COMMENT 'service类',
  `service_method` varchar(64) DEFAULT NULL COMMENT 'service方法',
  `inferface_explain` varchar(256) DEFAULT NULL COMMENT '接口说明',
  `remarks` varchar(512) DEFAULT NULL COMMENT '备注',
  `interface_person` varchar(32) DEFAULT NULL COMMENT '接口负责人',
  `interface_status` varchar(32) DEFAULT NULL COMMENT '接口状态',
  `app_code` varchar(32) DEFAULT NULL COMMENT 'app_code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='移动端接口配置表';

-- ----------------------------
-- Table structure for tb_invoice_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_invoice_file`;
CREATE TABLE `tb_invoice_file` (
  `invoice_data_id` varchar(32) NOT NULL COMMENT '发票数据id',
  `invoice_data_file` varchar(512) DEFAULT NULL COMMENT '发票文件',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '客户code',
  `file_create_time` datetime DEFAULT NULL COMMENT '文件创建时间',
  `file_create_user` varchar(20) DEFAULT NULL COMMENT '文件创建人',
  `upload_status` varchar(10) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`invoice_data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发票信息';

-- ----------------------------
-- Table structure for tb_invoice_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_invoice_info`;
CREATE TABLE `tb_invoice_info` (
  `invoice_bill_info_id` varchar(32) NOT NULL COMMENT '发票单据信息id',
  `invoice_data_id` varchar(32) DEFAULT NULL COMMENT '发票数据id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '客户code',
  `djh` varchar(20) DEFAULT NULL COMMENT '单据号',
  `gfmc` varchar(1000) DEFAULT NULL COMMENT '购方名称',
  `gfsh` varchar(32) DEFAULT NULL COMMENT '购方税号',
  `gfyhzh` varchar(100) DEFAULT NULL COMMENT '购方银行账号',
  `gfdzdh` varchar(100) DEFAULT NULL COMMENT '购方地址电话',
  `bz` varchar(240) DEFAULT NULL COMMENT '备注',
  `fhr` varchar(8) DEFAULT NULL COMMENT '复核人',
  `skr` varchar(8) DEFAULT NULL COMMENT '收款人',
  `spbmbbh` varchar(20) DEFAULT NULL COMMENT '商品编码版本号',
  `hsbz` varchar(2) DEFAULT NULL COMMENT '含税标志',
  `Je` varchar(20) DEFAULT NULL COMMENT '金额',
  `account_period` varchar(10) DEFAULT NULL COMMENT '账期',
  `invoice_status` varchar(10) DEFAULT NULL COMMENT '开票状态',
  `kpr` varchar(20) DEFAULT NULL COMMENT '开票人',
  `kprq` date DEFAULT NULL COMMENT '开票日期',
  `faphm` varchar(8) DEFAULT NULL COMMENT '发票号码',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`invoice_bill_info_id`),
  KEY `FK_Relationship_145` (`invoice_data_id`),
  CONSTRAINT `FK_Relationship_145` FOREIGN KEY (`invoice_data_id`) REFERENCES `tb_invoice_file` (`invoice_data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发票信息';

-- ----------------------------
-- Table structure for tb_invoice_receivable_deatil
-- ----------------------------
DROP TABLE IF EXISTS `tb_invoice_receivable_deatil`;
CREATE TABLE `tb_invoice_receivable_deatil` (
  `receivable_detail_id` varchar(32) DEFAULT NULL,
  `invoice_shop_info_id` varchar(32) DEFAULT NULL COMMENT '发票数据id',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  KEY `FK_Relationship_146` (`invoice_shop_info_id`),
  KEY `FK_Relationship_147` (`receivable_detail_id`),
  CONSTRAINT `FK_Relationship_146` FOREIGN KEY (`invoice_shop_info_id`) REFERENCES `tb_invoice_shop_info` (`invoice_shop_info_id`),
  CONSTRAINT `FK_Relationship_147` FOREIGN KEY (`receivable_detail_id`) REFERENCES `tb_receivable_deatil` (`receivable_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开票应收单明细';

-- ----------------------------
-- Table structure for tb_invoice_shop_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_invoice_shop_info`;
CREATE TABLE `tb_invoice_shop_info` (
  `invoice_shop_info_id` varchar(32) NOT NULL COMMENT '发票数据id',
  `invoice_bill_info_id` varchar(32) DEFAULT NULL COMMENT '发票单据信息id',
  `xh` varchar(20) DEFAULT NULL COMMENT '序号',
  `spmc` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `ggxh` varchar(40) DEFAULT NULL COMMENT '规格型号',
  `jldw` varchar(32) DEFAULT NULL COMMENT '计量单位',
  `spbm` varchar(19) DEFAULT NULL COMMENT '商品编码',
  `qyspbm` varchar(20) DEFAULT NULL COMMENT '企业商品编码',
  `syyhzcbz` char(1) DEFAULT NULL COMMENT '优惠政策标识',
  `lslbz` char(1) DEFAULT NULL COMMENT '零税率标识',
  `yhzcsm` varchar(50) DEFAULT NULL COMMENT '优惠政策说明',
  `dj` varchar(20) DEFAULT NULL COMMENT '单价',
  `sl` varchar(20) DEFAULT NULL COMMENT '数量',
  `Je` varchar(20) DEFAULT NULL COMMENT '金额',
  `slv` varchar(20) DEFAULT NULL COMMENT '税率',
  `se` varchar(20) DEFAULT NULL COMMENT '税额',
  `kce` varchar(20) DEFAULT NULL COMMENT '扣除额',
  `fee_item_id` varchar(32) DEFAULT NULL COMMENT '明细id',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `depart_code` varchar(512) DEFAULT NULL COMMENT '数据权限:部门编码',
  PRIMARY KEY (`invoice_shop_info_id`),
  KEY `FK_Relationship_144` (`invoice_bill_info_id`),
  CONSTRAINT `FK_Relationship_144` FOREIGN KEY (`invoice_bill_info_id`) REFERENCES `tb_invoice_info` (`invoice_bill_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发票商品信息';

-- ----------------------------
-- Table structure for tb_life_satus
-- ----------------------------
DROP TABLE IF EXISTS `tb_life_satus`;
CREATE TABLE `tb_life_satus` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `month_` varchar(6) DEFAULT NULL COMMENT '月份',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `evalue_subject` varchar(20) DEFAULT NULL COMMENT '评估科目',
  `evalue_result` varchar(20) DEFAULT NULL COMMENT '评估结果',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='院友生活状态记录';

-- ----------------------------
-- Table structure for tb_living_habit
-- ----------------------------
DROP TABLE IF EXISTS `tb_living_habit`;
CREATE TABLE `tb_living_habit` (
  `living_habit_id` varchar(32) NOT NULL COMMENT 'living_habit_id',
  `living_habit_type` varchar(30) DEFAULT NULL COMMENT '生活习惯类型',
  `living_habit_code` varchar(30) DEFAULT NULL COMMENT '生活习惯编码',
  `mainten_type` varchar(32) DEFAULT NULL COMMENT '维护类型',
  `living_habit_content` varchar(100) DEFAULT NULL COMMENT '生活习惯内容',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  PRIMARY KEY (`living_habit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人生活习惯';

-- ----------------------------
-- Table structure for tb_medical
-- ----------------------------
DROP TABLE IF EXISTS `tb_medical`;
CREATE TABLE `tb_medical` (
  `medical_id` varchar(32) NOT NULL COMMENT 'medical_id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `medical_date` date DEFAULT NULL COMMENT '体检日期',
  `physical_exam_org` varchar(50) DEFAULT NULL COMMENT '体检机构',
  `doctor_name` varchar(20) DEFAULT NULL COMMENT '医生姓名',
  `physical_result` varchar(255) DEFAULT NULL COMMENT '体检结果',
  `valid_flag` varchar(32) DEFAULT NULL,
  `report_photo` varchar(2048) DEFAULT NULL COMMENT 'report_photo',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='体检信息表';

-- ----------------------------
-- Table structure for tb_medical_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_medical_detail`;
CREATE TABLE `tb_medical_detail` (
  `medical_detail_id` varchar(32) NOT NULL COMMENT 'medical_detail_id',
  `medical_id` varchar(32) DEFAULT NULL COMMENT 'medical_id',
  `medical_category` varchar(30) DEFAULT NULL COMMENT '体检项目分类',
  `medical_item_code` varchar(30) DEFAULT NULL COMMENT '体检项目编码',
  `medical_item_name` varchar(30) DEFAULT NULL COMMENT '体检项目名称',
  `medical_item_ref` varchar(255) DEFAULT NULL COMMENT '体检项目参考值',
  `medical_result` varchar(255) DEFAULT NULL COMMENT '体检结果',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`medical_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='体检信息明细表';

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `notice_id` varchar(32) NOT NULL COMMENT '消息ID',
  `notice_title` varchar(32) DEFAULT NULL COMMENT '消息标题',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '消息内容',
  `notice_time` datetime DEFAULT NULL COMMENT '消息时间',
  `is_read` varchar(32) DEFAULT NULL COMMENT '是否已读',
  `userID` varchar(32) DEFAULT NULL COMMENT '用户登录id',
  `is_send` varchar(32) DEFAULT NULL COMMENT '是否发送',
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息,手机app消息通知';

-- ----------------------------
-- Table structure for tb_notice_bulletin
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice_bulletin`;
CREATE TABLE `tb_notice_bulletin` (
  `notice_bulletin_id` varchar(32) DEFAULT NULL COMMENT '公告标题id',
  `bulletin_title` varchar(50) DEFAULT NULL COMMENT '公告标题',
  `bulletin_time` datetime DEFAULT NULL COMMENT '发布时间',
  `bulletin_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `recorder` varchar(50) DEFAULT NULL COMMENT '发布人',
  `scope` varchar(100) DEFAULT NULL COMMENT '发布范围',
  `status` varchar(2) DEFAULT NULL COMMENT '发布状态',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_notice_bulletin_terminal
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice_bulletin_terminal`;
CREATE TABLE `tb_notice_bulletin_terminal` (
  `notice_bulletin_id` varchar(32) NOT NULL COMMENT '公告标题id',
  `terminal_id` varchar(20) NOT NULL COMMENT '终端标识',
  PRIMARY KEY (`notice_bulletin_id`,`terminal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_order_dinner
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_dinner`;
CREATE TABLE `tb_order_dinner` (
  `order_dinner_id` varchar(32) NOT NULL COMMENT '订餐主键',
  `order_dinner_code` varchar(20) DEFAULT NULL COMMENT '订餐编号',
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `userid` varchar(32) NOT NULL COMMENT '用户id',
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  `contact_tel` varchar(32) DEFAULT NULL COMMENT '电话',
  `send_time` datetime DEFAULT NULL COMMENT '派单时间',
  `send_address` varchar(100) DEFAULT NULL COMMENT '派单地址',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `order_amount` double DEFAULT NULL COMMENT '订单金额',
  `payment_type` varchar(10) DEFAULT NULL COMMENT '支付方式 fm_payment_type',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `meno` varchar(100) DEFAULT NULL COMMENT '备注',
  `status` char(2) DEFAULT NULL COMMENT '订单状态 待确认/已确认/已配送/已完成/已取消',
  `show_flag` char(2) DEFAULT NULL COMMENT '是否展现',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`order_dinner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订餐主表';

-- ----------------------------
-- Table structure for tb_order_dinner_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_dinner_detail`;
CREATE TABLE `tb_order_dinner_detail` (
  `order_dinner_detail_id` varchar(32) NOT NULL COMMENT '订单详情id',
  `order_dinner_id` varchar(32) DEFAULT NULL COMMENT '订餐主键',
  `food_id` varchar(32) DEFAULT NULL COMMENT '餐品id',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`order_dinner_detail_id`),
  KEY `FK_Reference_1` (`order_dinner_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`order_dinner_id`) REFERENCES `tb_order_dinner` (`order_dinner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_pac_mouth_care
-- ----------------------------
DROP TABLE IF EXISTS `tb_pac_mouth_care`;
CREATE TABLE `tb_pac_mouth_care` (
  `mouth_care_code` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `brush_teeth` varchar(4) DEFAULT NULL COMMENT '刷牙',
  `brush_teeth_tm` varchar(20) DEFAULT NULL COMMENT '刷牙时间',
  `gargle` varchar(4) DEFAULT NULL COMMENT '漱口',
  `gargle_tm` varchar(6) DEFAULT NULL COMMENT '漱口时间',
  `clean_mouth` varchar(4) DEFAULT NULL COMMENT '清洁口腔',
  `clean_mouth_tm` varchar(6) DEFAULT NULL COMMENT '清洁口腔时间',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='口腔清洁';

-- ----------------------------
-- Table structure for tb_past_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_past_history`;
CREATE TABLE `tb_past_history` (
  `past_history_id` varchar(32) NOT NULL COMMENT '个人既往史ID',
  `ph_type` varchar(30) DEFAULT NULL COMMENT '既往史类型',
  `ph_code` varchar(300) DEFAULT NULL COMMENT '既往史代码',
  `ph_date` date DEFAULT NULL COMMENT '发生时间',
  `mainten_type` varchar(32) DEFAULT NULL COMMENT '维护类型',
  `ph_content` varchar(200) DEFAULT NULL COMMENT '既往史内容',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`past_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='既往史';

-- ----------------------------
-- Table structure for tb_patrol_monitor_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_patrol_monitor_info`;
CREATE TABLE `tb_patrol_monitor_info` (
  `patrol_id` varchar(32) NOT NULL COMMENT '监控巡更ID',
  `patrol_dt` varchar(8) DEFAULT NULL COMMENT '巡更日期',
  `patrol_tm` varchar(6) DEFAULT NULL COMMENT '巡更时间',
  `patrol_area` varchar(20) DEFAULT NULL COMMENT '巡更区域',
  `patrol_condition` varchar(50) DEFAULT NULL COMMENT '巡更情况',
  `patrol_man` varchar(20) DEFAULT NULL COMMENT '巡更人员姓名',
  `is_have_problem` varchar(4) DEFAULT NULL COMMENT '是否发现问题',
  `patrol_problem` varchar(100) DEFAULT NULL COMMENT '问题内容',
  `meno` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`patrol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='监控巡更记录';

-- ----------------------------
-- Table structure for tb_pay_trading_flow
-- ----------------------------
DROP TABLE IF EXISTS `tb_pay_trading_flow`;
CREATE TABLE `tb_pay_trading_flow` (
  `out_trade_no` varchar(32) NOT NULL COMMENT '商户订单号',
  `pay_amount` decimal(10,2) DEFAULT NULL COMMENT '交费金额',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '平台订单号',
  `fee_type` varchar(20) DEFAULT NULL COMMENT '费用类型: 交费，充值',
  `bill_no` varchar(100) DEFAULT NULL,
  `body` varchar(127) DEFAULT NULL COMMENT '商品描述',
  `pay_result` varchar(8) DEFAULT NULL COMMENT '支付结果，0：支付成功，1:支付失败,2：退款失败，3：退款成功',
  `pay_result_descr` varchar(127) DEFAULT NULL COMMENT '支付结果说明',
  `mch_id` varchar(32) DEFAULT NULL COMMENT '商户号',
  `mch_create_ip` varchar(16) DEFAULT NULL COMMENT '终端ip',
  `pay_platform` varchar(64) DEFAULT NULL COMMENT '支付平台',
  `pay_type` varchar(32) DEFAULT NULL COMMENT '支付方式,扫卡支付、扫码支付',
  `pay_time_start` varchar(14) DEFAULT NULL COMMENT '支付起始时间',
  `pay_time_over` varchar(14) DEFAULT NULL COMMENT '支付结束时间',
  `pay_descr` varchar(127) DEFAULT NULL COMMENT '附加信息',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`out_trade_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付交易流水';

-- ----------------------------
-- Table structure for tb_pcw_check_count
-- ----------------------------
DROP TABLE IF EXISTS `tb_pcw_check_count`;
CREATE TABLE `tb_pcw_check_count` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `check_count_res_id` varchar(32) DEFAULT NULL COMMENT '点算结果ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `region_no` varchar(32) DEFAULT NULL COMMENT 'region_no',
  `shift_code` varchar(32) DEFAULT NULL COMMENT '班次编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `time_` varchar(8) DEFAULT NULL COMMENT '时间',
  `pcw_check_name` varchar(20) DEFAULT NULL COMMENT 'pcw点核人',
  `pcw_check_result` varchar(4) DEFAULT NULL COMMENT 'pcw点核结果',
  `out_reason` varchar(50) DEFAULT NULL COMMENT '出院原因',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='pcw核查人数';

-- ----------------------------
-- Table structure for tb_pcw_check_count_res
-- ----------------------------
DROP TABLE IF EXISTS `tb_pcw_check_count_res`;
CREATE TABLE `tb_pcw_check_count_res` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `check_count_res_id` varchar(32) DEFAULT NULL COMMENT '点算结果ID',
  `bed_count` int(11) DEFAULT NULL COMMENT '床位数',
  `in_bed_count` int(11) DEFAULT NULL COMMENT '入住人数',
  `in_org_count` int(11) DEFAULT NULL COMMENT '入院人数',
  `gohome_count` int(11) DEFAULT NULL COMMENT '回家人数',
  `goout_count` int(11) DEFAULT NULL COMMENT '外出人数',
  `emptybed_count` int(11) DEFAULT NULL COMMENT '空床数',
  `existelder_count` int(11) DEFAULT NULL COMMENT '现有人数',
  `check_dt` varchar(10) DEFAULT NULL COMMENT '点算日期',
  `check_tm` varchar(8) DEFAULT NULL COMMENT '点算时间',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `check_number` int(11) DEFAULT NULL COMMENT '点算次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='点算人数结果';

-- ----------------------------
-- Table structure for tb_pcw_dress_care
-- ----------------------------
DROP TABLE IF EXISTS `tb_pcw_dress_care`;
CREATE TABLE `tb_pcw_dress_care` (
  `dress_code` varchar(32) NOT NULL COMMENT '行标识',
  `dress_clothes` varchar(4) DEFAULT NULL COMMENT '穿衣',
  `dress_clothes_tm` varchar(6) DEFAULT NULL COMMENT '穿衣时间',
  `chg_clothes` varchar(4) DEFAULT NULL COMMENT '更换衣物',
  `chg_clothes_tm` varchar(6) DEFAULT NULL COMMENT '更换衣物时间',
  `tidy_clothes` varchar(4) DEFAULT NULL COMMENT '整理衣物',
  `tidy_clothes_tm` varchar(6) DEFAULT NULL COMMENT '整理衣物时间',
  `institution_id` varchar(32) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='穿衣服务';

-- ----------------------------
-- Table structure for tb_personal_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_personal_info`;
CREATE TABLE `tb_personal_info` (
  `personal_info_id` varchar(32) NOT NULL COMMENT 'personal_info_id',
  `sex` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `idcard_no` varchar(32) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL COMMENT '身高',
  `weight` varchar(10) DEFAULT NULL COMMENT '体重',
  `photo` varchar(255) DEFAULT NULL COMMENT '员工照片',
  `residence` varchar(32) DEFAULT NULL,
  `nation` varchar(32) DEFAULT NULL,
  `marital_status` varchar(32) DEFAULT NULL COMMENT '婚姻状况',
  `politics_status` varchar(32) DEFAULT NULL COMMENT '政治面貌',
  `degree_educate` varchar(32) DEFAULT NULL COMMENT '文化程度',
  `faith` varchar(32) DEFAULT NULL COMMENT '宗教信仰',
  `contact_address` varchar(200) DEFAULT NULL,
  `contact_tel` varchar(32) DEFAULT NULL,
  `contact_no` varchar(30) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员基本信息';

-- ----------------------------
-- Table structure for tb_personal_life_environment
-- ----------------------------
DROP TABLE IF EXISTS `tb_personal_life_environment`;
CREATE TABLE `tb_personal_life_environment` (
  `pl_environment_id` varchar(32) NOT NULL COMMENT '生活环境ID',
  `pl_environment_aspect` varchar(30) DEFAULT NULL COMMENT '生活环境分类',
  `pl_environment_situation` varchar(30) DEFAULT NULL COMMENT '生活环境状况',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pl_environment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人生活环境';

-- ----------------------------
-- Table structure for tb_person_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_person_history`;
CREATE TABLE `tb_person_history` (
  `person_history_id` varchar(32) NOT NULL COMMENT '个人史ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `person_history_type` varchar(30) DEFAULT NULL COMMENT '个人史类型',
  `person_history_code` varchar(30) DEFAULT NULL COMMENT '个人史代码',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `expose_level` varchar(32) DEFAULT NULL COMMENT '暴露程度',
  PRIMARY KEY (`person_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人史';

-- ----------------------------
-- Table structure for tb_position_alert_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_position_alert_info`;
CREATE TABLE `tb_position_alert_info` (
  `alert_info_id` varchar(32) NOT NULL COMMENT '行ID',
  `fence_code` varchar(32) NOT NULL COMMENT '围栏编码',
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `alert_tm` datetime DEFAULT NULL COMMENT '报警时间',
  `longitude` varchar(10) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(10) DEFAULT NULL COMMENT '纬度',
  `ordinate` varchar(10) DEFAULT NULL COMMENT '纵坐标',
  `abscissa` varchar(10) DEFAULT NULL COMMENT '横坐标',
  `location_desc` varchar(50) DEFAULT NULL COMMENT '报警位置',
  `deal_status` varchar(8) DEFAULT NULL COMMENT '处理状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`alert_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报警信息';

-- ----------------------------
-- Table structure for tb_position_elder_device
-- ----------------------------
DROP TABLE IF EXISTS `tb_position_elder_device`;
CREATE TABLE `tb_position_elder_device` (
  `locator_device_id` varchar(32) DEFAULT NULL COMMENT '行ID',
  `elder_device_id` char(32) NOT NULL COMMENT '行编码',
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `device_code` varchar(32) NOT NULL COMMENT '定位设备编码',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_tm` datetime DEFAULT NULL COMMENT '更新时间',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老人设备信息';

-- ----------------------------
-- Table structure for tb_position_fence_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_position_fence_info`;
CREATE TABLE `tb_position_fence_info` (
  `fence_code` varchar(32) NOT NULL COMMENT '围栏编码',
  `fence_name` varchar(50) DEFAULT NULL COMMENT '围栏名称',
  `elder_code` varchar(32) NOT NULL COMMENT '老人编码',
  `longitude` varchar(10) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(10) DEFAULT NULL COMMENT '纬度',
  `ordinate` varchar(10) DEFAULT NULL COMMENT '纵坐标',
  `abscissa` varchar(10) DEFAULT NULL COMMENT '横坐标',
  `radius` decimal(10,4) DEFAULT NULL COMMENT '半径',
  `set_up_time` datetime DEFAULT NULL COMMENT '设定时间',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='围栏设置信息';

-- ----------------------------
-- Table structure for tb_position_locator_device
-- ----------------------------
DROP TABLE IF EXISTS `tb_position_locator_device`;
CREATE TABLE `tb_position_locator_device` (
  `locator_device_id` varchar(32) NOT NULL COMMENT '行ID',
  `device_code` varchar(32) NOT NULL COMMENT '定位设备编码',
  `device_name` varchar(20) DEFAULT NULL COMMENT '设备名称',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂家',
  `device_no` varchar(30) DEFAULT NULL COMMENT '设备序列号',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `comment` varchar(32) DEFAULT NULL COMMENT '备注',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`locator_device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定位设备信息表';

-- ----------------------------
-- Table structure for tb_position_past_location
-- ----------------------------
DROP TABLE IF EXISTS `tb_position_past_location`;
CREATE TABLE `tb_position_past_location` (
  `past_location_id` varchar(32) NOT NULL COMMENT '行ID',
  `device_code` varchar(32) NOT NULL COMMENT '定位设备编码',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `location_date` date NOT NULL COMMENT '位置日期',
  `location_time` time NOT NULL COMMENT '位置时间',
  `get_way` varchar(2) DEFAULT NULL COMMENT '获取方式',
  `longitude` varchar(10) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(10) DEFAULT NULL COMMENT '纬度',
  `ordinate` varchar(10) DEFAULT NULL COMMENT '纵坐标',
  `abscissa` varchar(10) DEFAULT NULL COMMENT '横坐标',
  `location_des` varchar(50) DEFAULT NULL COMMENT '位置描述',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`past_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史位置信息';

-- ----------------------------
-- Table structure for tb_position_real_location
-- ----------------------------
DROP TABLE IF EXISTS `tb_position_real_location`;
CREATE TABLE `tb_position_real_location` (
  `real_location_id` varchar(32) NOT NULL COMMENT '行ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `location_tm` datetime NOT NULL COMMENT '位置时间',
  `get_way` varchar(2) DEFAULT NULL COMMENT '获取方式',
  `longitude` varchar(10) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(10) DEFAULT NULL COMMENT '纬度',
  `ordinate` varchar(10) DEFAULT NULL COMMENT '纵坐标',
  `abscissa` varchar(10) DEFAULT NULL COMMENT '横坐标',
  `location_des` varchar(50) DEFAULT NULL COMMENT '位置描述',
  `memo` varchar(200) DEFAULT NULL,
  `device_code` varchar(32) NOT NULL COMMENT '定位设备编码',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实时位置信息';

-- ----------------------------
-- Table structure for tb_process_instance
-- ----------------------------
DROP TABLE IF EXISTS `tb_process_instance`;
CREATE TABLE `tb_process_instance` (
  `process_id` varchar(32) NOT NULL,
  `process_model_id` varchar(32) DEFAULT NULL,
  `process_obj_id` varchar(32) DEFAULT NULL,
  `process_name` varchar(64) DEFAULT NULL COMMENT '流程名字',
  `process_type` varchar(10) NOT NULL COMMENT '流程类型, 1:入住，2：退住',
  `process_start_time` datetime DEFAULT NULL COMMENT '流程发起时间',
  `process_over_time` datetime DEFAULT NULL COMMENT '流程完成时间',
  `status` varchar(30) NOT NULL COMMENT '状态',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) NOT NULL COMMENT '机构id',
  PRIMARY KEY (`process_id`),
  KEY `FK_Relationship_141` (`process_model_id`),
  CONSTRAINT `FK_Relationship_141` FOREIGN KEY (`process_model_id`) REFERENCES `tb_process_model` (`process_model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务流程实例';

-- ----------------------------
-- Table structure for tb_process_instance_node
-- ----------------------------
DROP TABLE IF EXISTS `tb_process_instance_node`;
CREATE TABLE `tb_process_instance_node` (
  `process_node_id` varchar(32) NOT NULL COMMENT '流程节点ID',
  `process_model_node_id` varchar(32) DEFAULT NULL COMMENT '流程节点ID',
  `process_id` varchar(32) DEFAULT NULL,
  `process_obj_id` varchar(32) DEFAULT NULL,
  `process_node_code` varchar(128) DEFAULT NULL COMMENT '流程节点编码',
  `process_node_name` varchar(64) DEFAULT NULL COMMENT '流程节点名称',
  `process_over_time` datetime DEFAULT NULL COMMENT '流程完成时间',
  `process_node_result` varchar(100) DEFAULT NULL,
  `process_node_business_id` varchar(32) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`process_node_id`),
  KEY `FK_Relationship_139` (`process_id`),
  KEY `FK_Relationship_142` (`process_model_node_id`),
  CONSTRAINT `FK_Relationship_139` FOREIGN KEY (`process_id`) REFERENCES `tb_process_instance` (`process_id`),
  CONSTRAINT `FK_Relationship_142` FOREIGN KEY (`process_model_node_id`) REFERENCES `tb_process_model_node` (`process_model_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务流程节点实例';

-- ----------------------------
-- Table structure for tb_process_model
-- ----------------------------
DROP TABLE IF EXISTS `tb_process_model`;
CREATE TABLE `tb_process_model` (
  `process_model_id` varchar(32) NOT NULL,
  `process_name` varchar(64) DEFAULT NULL COMMENT '流程名字',
  `process_type` varchar(10) NOT NULL COMMENT '流程类型, 1:入住，2：退住',
  `status` varchar(30) NOT NULL COMMENT '状态',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) NOT NULL COMMENT '机构id',
  PRIMARY KEY (`process_model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务流程模板';

-- ----------------------------
-- Table structure for tb_process_model_node
-- ----------------------------
DROP TABLE IF EXISTS `tb_process_model_node`;
CREATE TABLE `tb_process_model_node` (
  `process_model_node_id` varchar(32) NOT NULL COMMENT '流程节点ID',
  `process_model_id` varchar(32) DEFAULT NULL,
  `process_node_code` varchar(128) DEFAULT NULL COMMENT '流程节点编码',
  `process_node_name` varchar(64) DEFAULT NULL COMMENT '流程节点名称',
  `process_node_uri` varchar(256) DEFAULT NULL COMMENT 'process_node_url',
  `process_node_img_uri` varchar(128) DEFAULT NULL COMMENT '流程节点图片URI',
  `next_process_node_code` varchar(32) DEFAULT NULL COMMENT '下个流程节点',
  `prev_process_node_code` varchar(32) DEFAULT NULL,
  `process_node_type` char(1) DEFAULT NULL COMMENT '节点类型,0:根节点，1：主节点，2：分支节点',
  `process_node_no` smallint(6) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`process_model_node_id`),
  KEY `FK_Relationship_140` (`process_model_id`),
  CONSTRAINT `FK_Relationship_140` FOREIGN KEY (`process_model_id`) REFERENCES `tb_process_model` (`process_model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务流程模板节点';

-- ----------------------------
-- Table structure for tb_provider_agreement
-- ----------------------------
DROP TABLE IF EXISTS `tb_provider_agreement`;
CREATE TABLE `tb_provider_agreement` (
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `sign_date` date DEFAULT NULL COMMENT '签订日期',
  `enable_date` date DEFAULT NULL COMMENT '生效日期',
  `terminal_date` date DEFAULT NULL COMMENT '终止日期',
  `provider_id` varchar(32) DEFAULT NULL COMMENT '第三方服务商id',
  `carrier_id` varchar(32) DEFAULT NULL COMMENT '运营商id',
  `carrier_signer` varchar(32) DEFAULT NULL COMMENT '运营商签订人',
  `provider_signer` varchar(32) DEFAULT NULL COMMENT '服务商签订人',
  `balance_period_code` varchar(30) DEFAULT NULL COMMENT '结算周期编码',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `provider_agreement_id` varchar(32) NOT NULL COMMENT 'provider_agreement_id',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家合作协议';

-- ----------------------------
-- Table structure for tb_provider_agreement_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_provider_agreement_detail`;
CREATE TABLE `tb_provider_agreement_detail` (
  `provider_agreement_detail_id` varchar(32) NOT NULL COMMENT 'provider_agreement_detail_id',
  `service_item_id` varchar(32) DEFAULT NULL COMMENT 'service_item_id',
  `provider_agreement_id` varchar(32) DEFAULT NULL COMMENT 'provider_agreement_id',
  `institution_id` varchar(32) DEFAULT NULL,
  `s_service_item_id` varchar(32) DEFAULT NULL COMMENT '服务商服务项目id',
  `s_price_unit_code` varchar(30) DEFAULT NULL COMMENT '服务商价格单位编码',
  `agreement_price` decimal(10,2) DEFAULT NULL COMMENT '协议价格',
  `price_unit_code` varchar(30) DEFAULT NULL COMMENT '价格单位编码',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`provider_agreement_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合作协议明细';

-- ----------------------------
-- Table structure for tb_receivable
-- ----------------------------
DROP TABLE IF EXISTS `tb_receivable`;
CREATE TABLE `tb_receivable` (
  `receivable_id` varchar(32) NOT NULL COMMENT '应收单id',
  `receivable_code` varchar(32) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `busi_bill_id` varchar(32) DEFAULT NULL COMMENT '业务单据id',
  `busi_bill_type` varchar(20) DEFAULT NULL COMMENT '业务单据类型',
  `busi_bill_content` varchar(500) DEFAULT NULL COMMENT 'json串存储业务单据的相关内容',
  `occurrence_time` datetime DEFAULT NULL COMMENT '业务发生时间',
  `money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `display_money` varchar(50) DEFAULT NULL COMMENT '表示金额',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `account_period` varchar(10) DEFAULT NULL COMMENT '账期',
  PRIMARY KEY (`receivable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应收单';

-- ----------------------------
-- Table structure for tb_receivable_deatil
-- ----------------------------
DROP TABLE IF EXISTS `tb_receivable_deatil`;
CREATE TABLE `tb_receivable_deatil` (
  `receivable_detail_id` varchar(32) NOT NULL,
  `receivable_id` varchar(32) DEFAULT NULL COMMENT '应收单id',
  `expense_type_id` varchar(32) DEFAULT NULL COMMENT '费用类型',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT 'expense_item_id',
  `expense_item_name` varchar(50) DEFAULT NULL COMMENT '费用项目表示名称',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `expense_standard_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  `standard_sale_price` decimal(10,2) DEFAULT NULL COMMENT '费用标准价格',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `amount` decimal(2,0) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `payment_interval` varchar(50) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `slv` varchar(10) DEFAULT NULL COMMENT '税率',
  `spbm` varchar(50) DEFAULT NULL COMMENT '商品编码',
  PRIMARY KEY (`receivable_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应收单明细';

-- ----------------------------
-- Table structure for tb_recharge_num
-- ----------------------------
DROP TABLE IF EXISTS `tb_recharge_num`;
CREATE TABLE `tb_recharge_num` (
  `recharge_num_id` varchar(32) NOT NULL COMMENT 'recharge_num_id',
  `recharge_record_id` varchar(32) DEFAULT NULL COMMENT 'recharge_record_id',
  `service_item_id` varchar(32) DEFAULT NULL COMMENT 'service_item_id',
  `single_count` int(11) DEFAULT NULL COMMENT '冲次次数',
  `unit_price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `remain_count` int(11) DEFAULT NULL COMMENT '剩余次数',
  `institution_id` varchar(32) DEFAULT NULL,
  `recharger` varchar(32) DEFAULT NULL COMMENT '充值人',
  `recharge_time` datetime DEFAULT NULL COMMENT '充值时间',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`recharge_num_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充次记录';

-- ----------------------------
-- Table structure for tb_recharge_payment
-- ----------------------------
DROP TABLE IF EXISTS `tb_recharge_payment`;
CREATE TABLE `tb_recharge_payment` (
  `recharge_payment_id` varchar(32) NOT NULL COMMENT '明细id',
  `payment_type` varchar(32) DEFAULT NULL COMMENT '付款方式',
  `money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `recharge_record_id` varchar(32) NOT NULL COMMENT '充值记录id',
  PRIMARY KEY (`recharge_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_recharge_record`;
CREATE TABLE `tb_recharge_record` (
  `recharge_record_id` varchar(32) NOT NULL COMMENT 'recharge_record_id',
  `recharge_record_code` varchar(20) DEFAULT NULL COMMENT '流水号code',
  `recharge_type` char(1) DEFAULT NULL COMMENT '充支类型 0充值   1支出',
  `account_id` varchar(32) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `recharger` varchar(32) DEFAULT NULL COMMENT '充值人',
  `recharge_money` decimal(10,2) DEFAULT NULL COMMENT '充值金额',
  `recharge_time` datetime DEFAULT NULL COMMENT '充值时间',
  `payee` varchar(20) DEFAULT NULL COMMENT '收款人',
  `busi_bill_type` varchar(20) DEFAULT NULL COMMENT '业务类型',
  `busi_bill_id` varchar(32) DEFAULT NULL,
  `STATUS` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `receipt_status` varchar(2) DEFAULT NULL,
  `account_period` varchar(10) DEFAULT NULL COMMENT '账期',
  `tran_status` varchar(2) DEFAULT NULL COMMENT '交账状态',
  `check_status` varchar(2) DEFAULT NULL COMMENT '核对状态',
  `payee_id` varchar(32) DEFAULT NULL COMMENT '收款人id',
  PRIMARY KEY (`recharge_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户充支记录';

-- ----------------------------
-- Table structure for tb_recure_assess_rpt
-- ----------------------------
DROP TABLE IF EXISTS `tb_recure_assess_rpt`;
CREATE TABLE `tb_recure_assess_rpt` (
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `report_name` varchar(30) DEFAULT NULL COMMENT '报告名称',
  `report_dt` date DEFAULT NULL COMMENT '报告日期',
  `report_addr` varchar(1000) DEFAULT NULL,
  `report_format` varchar(10) DEFAULT NULL COMMENT '报告文件格式',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='康复护理评估报告';

-- ----------------------------
-- Table structure for tb_recure_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_recure_detail`;
CREATE TABLE `tb_recure_detail` (
  `recure_detail_id` varchar(32) DEFAULT NULL COMMENT '计划详情行标识',
  `recure_pro_id` varchar(32) DEFAULT NULL COMMENT '康复计划ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT 'expense_item_id',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `expense_type_id` varchar(32) DEFAULT NULL COMMENT '费用类型id',
  `attentions` varchar(80) DEFAULT NULL COMMENT '注意事项',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='康复计划详情';

-- ----------------------------
-- Table structure for tb_recure_excute
-- ----------------------------
DROP TABLE IF EXISTS `tb_recure_excute`;
CREATE TABLE `tb_recure_excute` (
  `recure_excute_id` varchar(32) DEFAULT NULL COMMENT '康复计划执行ID',
  `recure_pro_id` varchar(32) DEFAULT NULL COMMENT '康复计划ID',
  `expense_standard_id` varchar(32) NOT NULL COMMENT '费用标准id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `recure_dt` date DEFAULT NULL COMMENT '护理日期',
  `recure_tm` varchar(4) DEFAULT NULL COMMENT '记录时间',
  `recure_man` varchar(20) DEFAULT NULL COMMENT '护理执行人',
  `recure_beg_tm` time DEFAULT NULL COMMENT '护理开始时间',
  `recure_end_tm` time DEFAULT NULL COMMENT '护理结束时间',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='康复计划执行';

-- ----------------------------
-- Table structure for tb_recure_program
-- ----------------------------
DROP TABLE IF EXISTS `tb_recure_program`;
CREATE TABLE `tb_recure_program` (
  `recure_pro_id` varchar(32) DEFAULT NULL COMMENT '康复计划ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `recure_pro_name` varchar(30) DEFAULT NULL COMMENT '康复计划名称',
  `drawup_man` varchar(20) DEFAULT NULL COMMENT '计划制定人',
  `drwup_dt` date DEFAULT NULL COMMENT '计划制定日期',
  `pro_end_dt` date DEFAULT NULL COMMENT '计划停止日期',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='康复计划';

-- ----------------------------
-- Table structure for tb_region_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_region_info`;
CREATE TABLE `tb_region_info` (
  `region_no` varchar(32) NOT NULL COMMENT 'region_no',
  `region_rank` varchar(20) DEFAULT NULL COMMENT '区域序号',
  `region_name` varchar(20) DEFAULT NULL COMMENT '区域名称',
  `region_desc` varchar(50) DEFAULT NULL COMMENT '区域描述',
  `nurse_station_tel` varchar(20) DEFAULT NULL COMMENT '护士站电话',
  `region_incharge` varchar(32) DEFAULT NULL COMMENT '员工',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域';

-- ----------------------------
-- Table structure for tb_region_room
-- ----------------------------
DROP TABLE IF EXISTS `tb_region_room`;
CREATE TABLE `tb_region_room` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `room_no` varchar(32) NOT NULL COMMENT '房间编号',
  `region_no` varchar(32) NOT NULL COMMENT 'region_no',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域房间信息表';

-- ----------------------------
-- Table structure for tb_registration
-- ----------------------------
DROP TABLE IF EXISTS `tb_registration`;
CREATE TABLE `tb_registration` (
  `registration_id` varchar(32) NOT NULL COMMENT 'registration_id',
  `institution_id` varchar(32) DEFAULT NULL,
  `contractor_name` varchar(30) DEFAULT NULL COMMENT '来访人',
  `contract_date` datetime DEFAULT NULL COMMENT '来访日期',
  `contract_sex` varchar(10) DEFAULT NULL COMMENT '来访人性别',
  `elder_relation` varchar(30) DEFAULT NULL COMMENT '与老人关系',
  `receptor_id` varchar(32) DEFAULT NULL COMMENT '接待人',
  `receptor_name` varchar(20) DEFAULT NULL COMMENT '接待人名称',
  `consult_content` varchar(255) DEFAULT NULL COMMENT '咨询内容',
  `contact_tel` varchar(32) DEFAULT NULL,
  `contact_address` varchar(200) DEFAULT NULL,
  `contact_type` varchar(32) DEFAULT NULL COMMENT '来访形式',
  `email` varchar(30) DEFAULT NULL COMMENT '电子邮箱',
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  `sex` varchar(10) DEFAULT NULL,
  `elder_birthday` date DEFAULT NULL COMMENT '出生日期',
  `idcard_no` varchar(32) DEFAULT NULL,
  `residence` varchar(32) DEFAULT NULL,
  `nation` varchar(32) DEFAULT NULL,
  `medical_type` varchar(32) DEFAULT NULL COMMENT '医疗方式（医保、新农合、自费）',
  `contact_no` varchar(30) DEFAULT NULL,
  `monthly_income` decimal(10,2) DEFAULT NULL COMMENT '月收入',
  `family_desc` varchar(200) DEFAULT NULL COMMENT '家庭情况描述',
  `service_request` varchar(32) DEFAULT NULL COMMENT '服务需求',
  `follower` varchar(32) DEFAULT NULL COMMENT '跟进人',
  `follow_dept` varchar(32) DEFAULT NULL COMMENT '对接部门',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `reception_way` varchar(10) DEFAULT NULL COMMENT '接待形式',
  `medium_channel` varchar(20) DEFAULT NULL COMMENT '媒介渠道',
  `medium_channel_other` varchar(100) DEFAULT NULL COMMENT '其他信息来源',
  `postalcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `elder_tel` varchar(20) DEFAULT NULL COMMENT '老人联系电话',
  `health_condition` varchar(50) DEFAULT NULL COMMENT '老人健康状况',
  `estimate_care_level` varchar(20) DEFAULT NULL COMMENT '预估护理级别',
  `intention` varchar(200) DEFAULT NULL COMMENT '意向',
  `is_accept_visit` varchar(10) DEFAULT NULL COMMENT '是否接受回访',
  `accommodation` varchar(50) DEFAULT NULL COMMENT '房间床位要求',
  `fee_budget` varchar(20) DEFAULT NULL COMMENT '费用需求',
  `memo` varchar(200) DEFAULT NULL,
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `self_care` varchar(50) DEFAULT NULL COMMENT '自理能力',
  `plan_visit_date` date DEFAULT NULL COMMENT '计划回访日期',
  `follower_id` varchar(32) DEFAULT NULL COMMENT '跟进人',
  `end_cause` char(2) DEFAULT NULL COMMENT '结束原因”（客户已入住、客户丢失）',
  `lost_cause` varchar(200) DEFAULT NULL COMMENT '丢失原因'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='咨询登记表';

-- ----------------------------
-- Table structure for tb_registration_visit
-- ----------------------------
DROP TABLE IF EXISTS `tb_registration_visit`;
CREATE TABLE `tb_registration_visit` (
  `registration_visit_id` varchar(32) NOT NULL COMMENT '登记回访ID',
  `registration_id` varchar(32) DEFAULT NULL COMMENT 'registration_id',
  `institution_id` varchar(32) DEFAULT NULL,
  `visitor` varchar(32) DEFAULT NULL COMMENT '回访人',
  `visit_time` datetime DEFAULT NULL COMMENT '回访时间',
  `visit_type` varchar(32) DEFAULT NULL COMMENT '回访方式',
  `feedback` varchar(255) DEFAULT NULL COMMENT '客户反馈意见',
  `visit_content` varchar(255) DEFAULT NULL COMMENT '回访内容',
  `cus_requirement` varchar(255) DEFAULT NULL COMMENT '客户需求',
  `visit_result` varchar(30) DEFAULT NULL COMMENT '回访结果',
  `party_name` varchar(32) DEFAULT NULL COMMENT '关系人姓名',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `intention` varchar(200) DEFAULT NULL COMMENT '意向',
  `elder_name` varchar(20) DEFAULT NULL COMMENT '老人姓名',
  PRIMARY KEY (`registration_visit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='咨询登记回访';

-- ----------------------------
-- Table structure for tb_rel_elder_party_elder
-- ----------------------------
DROP TABLE IF EXISTS `tb_rel_elder_party_elder`;
CREATE TABLE `tb_rel_elder_party_elder` (
  `party_code` varchar(32) NOT NULL COMMENT '老人家属编码',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `party_type` varchar(20) DEFAULT NULL COMMENT '关系类型',
  `is_guarantor` varchar(20) DEFAULT NULL COMMENT '是否保证人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家属-老人';

-- ----------------------------
-- Table structure for tb_renew
-- ----------------------------
DROP TABLE IF EXISTS `tb_renew`;
CREATE TABLE `tb_renew` (
  `renew_id` varchar(32) NOT NULL COMMENT '续费记录id',
  `renew_code` varchar(32) DEFAULT NULL COMMENT '续费单号',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `renew_date` date DEFAULT NULL COMMENT '续费日期',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`renew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_renew_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_renew_detail`;
CREATE TABLE `tb_renew_detail` (
  `renew_detail_id` varchar(32) NOT NULL COMMENT '续费单明细id',
  `renew_id` varchar(32) DEFAULT NULL COMMENT '续费记录id',
  `single_discount_id` varchar(32) DEFAULT NULL COMMENT '趸交优惠id',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT '费用项id',
  `expense_item_name` varchar(50) DEFAULT NULL COMMENT '费用项目表示名称',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `expense_standard_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  `standard_sale_price` decimal(10,2) DEFAULT NULL COMMENT '费用标准价格',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `renew_period_start` date DEFAULT NULL COMMENT '续费日期-开始',
  `renew_period_end` date DEFAULT NULL COMMENT '续费日期-截止',
  `amount` decimal(2,0) DEFAULT NULL COMMENT '数量',
  `money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `single_discount_name` varchar(32) DEFAULT NULL COMMENT '趸交优惠活动名称',
  `money_discount` decimal(10,2) DEFAULT NULL COMMENT '金额-优惠后',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`renew_detail_id`),
  KEY `FK_Relationship_61` (`renew_id`),
  CONSTRAINT `FK_Relationship_61` FOREIGN KEY (`renew_id`) REFERENCES `tb_renew` (`renew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='续费记录明细';

-- ----------------------------
-- Table structure for tb_renew_status
-- ----------------------------
DROP TABLE IF EXISTS `tb_renew_status`;
CREATE TABLE `tb_renew_status` (
  `renew_status_id` varchar(32) NOT NULL COMMENT '续费状态ID',
  `in_out_id` varchar(32) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT '费用项id',
  `expense_item_name` varchar(50) DEFAULT NULL COMMENT '费用项目表示名称',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `expense_standard_name` varchar(50) DEFAULT NULL COMMENT '费用标准名称',
  `renew_period_end` date DEFAULT NULL COMMENT '续费日期-截止',
  `prepaid_date_end` date DEFAULT NULL COMMENT '预缴至日期',
  `arrears` decimal(10,2) DEFAULT NULL COMMENT '欠费金额',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  `valid_flag` varchar(32) DEFAULT NULL,
  `balance_period_end` date DEFAULT NULL COMMENT '结算日期',
  PRIMARY KEY (`renew_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_restriction_observe
-- ----------------------------
DROP TABLE IF EXISTS `tb_restriction_observe`;
CREATE TABLE `tb_restriction_observe` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `evaluate_code` varchar(32) DEFAULT NULL COMMENT '评估代码',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `observe_result` varchar(4) DEFAULT NULL COMMENT '观察结果',
  `absent_reason` varchar(50) DEFAULT NULL COMMENT '外出原因',
  `complexion_status` varchar(20) DEFAULT NULL COMMENT '面色',
  `breathing_status` varchar(20) DEFAULT NULL COMMENT '呼吸状况',
  `shin_status` varchar(20) DEFAULT NULL COMMENT '皮肤状况',
  `blood_circul_status` varchar(20) DEFAULT NULL COMMENT '血液循环',
  `spirit_status` varchar(20) DEFAULT NULL COMMENT '精神状况',
  `other_status` varchar(50) DEFAULT NULL COMMENT '其它情况',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='约束观察';

-- ----------------------------
-- Table structure for tb_re_entry
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_entry`;
CREATE TABLE `tb_re_entry` (
  `ID_` varchar(32) DEFAULT NULL COMMENT '行标识',
  `entry_code` varchar(32) NOT NULL COMMENT '入库编码',
  `goods_code` varchar(32) DEFAULT NULL COMMENT '物品代码',
  `goods_count` varchar(20) DEFAULT NULL COMMENT '物品数量',
  `source_house_code` varchar(20) DEFAULT NULL COMMENT '源库代码',
  `entry_batch` varchar(20) DEFAULT NULL COMMENT '批次',
  `product_dt` varchar(10) DEFAULT NULL COMMENT '生产日期',
  `expiration_dt` varchar(10) DEFAULT NULL COMMENT '保质期日期',
  `purchase_price` varchar(20) DEFAULT NULL COMMENT '进价2',
  `whole_price` decimal(16,2) DEFAULT NULL COMMENT '批发价2',
  `retail_price` decimal(16,2) DEFAULT NULL COMMENT '零售价2',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂家',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品入库信息';

-- ----------------------------
-- Table structure for tb_re_entry_sheet
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_entry_sheet`;
CREATE TABLE `tb_re_entry_sheet` (
  `entry_code` varchar(32) NOT NULL COMMENT '入库编码',
  `warehouse_code` varchar(32) DEFAULT NULL COMMENT '仓库代码fk',
  `entry_type` varchar(20) DEFAULT NULL COMMENT '入库类型',
  `entry_time` varchar(20) DEFAULT NULL COMMENT '入库时间',
  `corr_order_code` varchar(32) DEFAULT NULL COMMENT '对应订单代码',
  `corr_shiporder` varchar(20) DEFAULT NULL COMMENT '供应商发货单号',
  `entry_handler` varchar(20) DEFAULT NULL COMMENT '入库经手人',
  `purchase_agent` varchar(20) DEFAULT NULL COMMENT '采购人',
  `supplier_code` varchar(32) DEFAULT NULL COMMENT '供应商代码fk',
  `entry_sheet_state` varchar(8) DEFAULT NULL COMMENT '单据状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品入库单据表';

-- ----------------------------
-- Table structure for tb_re_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_goods`;
CREATE TABLE `tb_re_goods` (
  `goods_code` varchar(32) NOT NULL COMMENT '物品代码',
  `goods_class` varchar(20) NOT NULL COMMENT '物品分类',
  `goods_general_name` varchar(30) DEFAULT NULL COMMENT '物品通用名',
  `goods_name` varchar(20) NOT NULL COMMENT '物品名称',
  `goods_brand` varchar(20) DEFAULT NULL COMMENT '物品品牌',
  `goods_specific` varchar(20) NOT NULL COMMENT '物品规格',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂家',
  `bar_code` varchar(30) DEFAULT NULL COMMENT '条形码',
  `goods_unit` varchar(20) DEFAULT NULL COMMENT '物品单位',
  `max_inventory` decimal(20,0) DEFAULT NULL COMMENT '最大库存',
  `min_inventory` decimal(20,0) DEFAULT NULL COMMENT '最小库存',
  `goods_price` decimal(16,2) DEFAULT NULL COMMENT '物品单价',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `slv` varchar(10) DEFAULT NULL COMMENT '税率',
  `spbm` varchar(50) DEFAULT NULL COMMENT '商品编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品信息表';

-- ----------------------------
-- Table structure for tb_re_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_goods_class`;
CREATE TABLE `tb_re_goods_class` (
  `goods_class_code` varchar(30) NOT NULL COMMENT '类别编码',
  `goods_class_name` varchar(100) DEFAULT NULL COMMENT '类别名称',
  `goods_class_parentcode` varchar(30) DEFAULT NULL COMMENT '物品父类别编码',
  `isleaf` varchar(4) DEFAULT NULL COMMENT '是否叶子结点',
  `memo` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) NOT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`goods_class_code`,`institution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品类别表';

-- ----------------------------
-- Table structure for tb_re_inventory
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_inventory`;
CREATE TABLE `tb_re_inventory` (
  `inventory_code` varchar(32) NOT NULL COMMENT '物品库存编码',
  `goods_code` varchar(32) DEFAULT NULL COMMENT '物品代码',
  `goods_count` varchar(20) DEFAULT NULL COMMENT '物品数量',
  `warehouse_code` varchar(32) DEFAULT NULL COMMENT '仓库代码fk',
  `expiration_dt` varchar(10) DEFAULT NULL COMMENT '保质期日期',
  `entry_batch` varchar(20) DEFAULT NULL COMMENT '批次',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂家',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存信息表';

-- ----------------------------
-- Table structure for tb_re_inventory_alert
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_inventory_alert`;
CREATE TABLE `tb_re_inventory_alert` (
  `inventory_alert_code` varchar(32) NOT NULL COMMENT '物品库存预警编码',
  `goods_code` varchar(32) DEFAULT NULL COMMENT '物品代码',
  `alert_dt` varchar(10) DEFAULT NULL COMMENT '预警日期',
  `alert_amount` decimal(16,0) DEFAULT NULL COMMENT '物品预警值',
  `alert_status` varchar(20) DEFAULT NULL COMMENT '预警状态',
  `goods_count` varchar(20) DEFAULT NULL COMMENT '物品数量',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`inventory_alert_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存预警';

-- ----------------------------
-- Table structure for tb_re_inventory_plan
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_inventory_plan`;
CREATE TABLE `tb_re_inventory_plan` (
  `stocktacking_code` varchar(32) NOT NULL COMMENT '盘库编码2',
  `warehouse_code` varchar(32) DEFAULT NULL COMMENT '仓库代码fk',
  `chenck_handler` varchar(32) DEFAULT NULL COMMENT '盘库人',
  `stocktack_sheet_state` varchar(8) DEFAULT NULL COMMENT '盘库单状态',
  `stocktack_time` varchar(16) DEFAULT NULL COMMENT '盘库时间',
  `goods_general_name` varchar(30) DEFAULT NULL COMMENT '物品通用名',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='盘库单据表';

-- ----------------------------
-- Table structure for tb_re_outhouse
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_outhouse`;
CREATE TABLE `tb_re_outhouse` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `Column_2` char(10) DEFAULT NULL,
  `dest_house` varchar(32) DEFAULT NULL COMMENT '目的库代码',
  `out_code` varchar(32) DEFAULT NULL COMMENT '出库编码2',
  `out_price` decimal(16,2) DEFAULT NULL COMMENT '出库价格',
  `goods_code` varchar(32) DEFAULT NULL COMMENT '物品代码',
  `goods_count` varchar(20) DEFAULT NULL COMMENT '物品数量',
  `expiration_dt` varchar(10) DEFAULT NULL COMMENT '保质期日期',
  `entry_batch` varchar(20) DEFAULT NULL COMMENT '批次',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂家',
  `product_dt` varchar(10) DEFAULT NULL COMMENT '生产日期',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品出库信息明细';

-- ----------------------------
-- Table structure for tb_re_outhouse_sheet
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_outhouse_sheet`;
CREATE TABLE `tb_re_outhouse_sheet` (
  `out_type` varchar(20) DEFAULT NULL COMMENT '出库类型',
  `out_time` blob COMMENT '出库时间',
  `recieve_depart` varchar(20) DEFAULT NULL COMMENT '领用部门',
  `recieve_man` varchar(20) DEFAULT NULL COMMENT '领用人',
  `out_handler` varchar(20) DEFAULT NULL COMMENT '出库经手人',
  `out_sheet_state` varchar(8) DEFAULT NULL COMMENT '出库单状态',
  `out_code` varchar(32) NOT NULL COMMENT '出库编码2',
  `warehouse_code` varchar(32) DEFAULT NULL COMMENT '仓库代码fk',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品出库单据号';

-- ----------------------------
-- Table structure for tb_re_stocktacking
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_stocktacking`;
CREATE TABLE `tb_re_stocktacking` (
  `stocktacking_code` varchar(32) DEFAULT NULL COMMENT '盘库编码2',
  `goods_class` varchar(20) DEFAULT NULL COMMENT '物品分类',
  `goods_code` varchar(32) DEFAULT NULL COMMENT '物品代码',
  `warehouse_code` varchar(32) DEFAULT NULL COMMENT '仓库代码fk',
  `expiration_dt` varchar(10) DEFAULT NULL COMMENT '保质期日期',
  `entry_batch` varchar(20) DEFAULT NULL COMMENT '批次',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂家',
  `goods_count` varchar(20) DEFAULT NULL COMMENT '物品数量',
  `goods_act_amount` decimal(16,0) DEFAULT NULL COMMENT '物品实际数量',
  `check_short_count` decimal(16,0) DEFAULT NULL COMMENT '盘亏数量',
  `check_surplus_count` decimal(16,0) DEFAULT NULL COMMENT '盘赢数量',
  `diff_reason` varchar(50) DEFAULT NULL COMMENT '差异原因',
  `deal_way` varchar(20) DEFAULT NULL COMMENT '是否平仓',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='盘库信息';

-- ----------------------------
-- Table structure for tb_re_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_supplier`;
CREATE TABLE `tb_re_supplier` (
  `supplier_code` varchar(32) NOT NULL COMMENT '供应商代码fk',
  `supplier_name` varchar(50) DEFAULT NULL COMMENT '供应商名称',
  `supplier_address` varchar(50) DEFAULT NULL COMMENT '供应商地址',
  `supplier_phone` varchar(30) DEFAULT NULL COMMENT '供应商电话',
  `supplier_contact` varchar(20) DEFAULT NULL COMMENT '供应商联系人',
  `supplier_contactphone` varchar(15) DEFAULT NULL COMMENT '供应商联系人电话',
  `supplier_bank` varchar(50) DEFAULT NULL COMMENT '开户行',
  `supplier_bankaccount` varchar(25) DEFAULT NULL COMMENT '账号',
  `supplier_tsxno` varchar(25) DEFAULT NULL COMMENT '税号',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商信息表';

-- ----------------------------
-- Table structure for tb_re_transfer
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_transfer`;
CREATE TABLE `tb_re_transfer` (
  `transfer_id` varchar(32) NOT NULL COMMENT 'transfer_id',
  `init_warehouse_code` varchar(32) DEFAULT NULL COMMENT '原仓库外键',
  `init_warehouse_keeper` varchar(32) DEFAULT NULL COMMENT '原仓库负责人',
  `target_institution_id` varchar(32) DEFAULT NULL COMMENT '目标机构',
  `target_warehouse_code` varchar(32) DEFAULT NULL COMMENT '目标仓库外键',
  `target_warehouse_keeper` varchar(32) DEFAULT NULL COMMENT '目标仓库负责人',
  `transfer_time` datetime DEFAULT NULL COMMENT '移库时间',
  `verifier` varchar(32) DEFAULT NULL COMMENT '审核人',
  `verify_time` datetime DEFAULT NULL COMMENT '审核时间',
  `transfer` varchar(32) DEFAULT NULL COMMENT '负责人',
  `transfer_date` date DEFAULT NULL COMMENT '移库日期',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='移库单';

-- ----------------------------
-- Table structure for tb_re_transfer_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_transfer_detail`;
CREATE TABLE `tb_re_transfer_detail` (
  `transfer_detail_id` varchar(32) NOT NULL COMMENT 'transfer_detail_id',
  `transfer_id` varchar(32) DEFAULT NULL COMMENT 'transfer_id',
  `inventory_code` varchar(32) DEFAULT NULL COMMENT '物品库存编码',
  `goods_name` varchar(20) DEFAULT NULL COMMENT '物品名称',
  `goods_num` int(11) DEFAULT NULL COMMENT '商品数量',
  `goods_specific` varchar(20) DEFAULT NULL COMMENT '物品规格',
  `goods_unit` varchar(20) DEFAULT NULL COMMENT '物品单位',
  `institution_id` varchar(32) DEFAULT NULL,
  `goods_code` varchar(32) DEFAULT NULL COMMENT '物品代码',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`transfer_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='移库单明细';

-- ----------------------------
-- Table structure for tb_re_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_warehouse`;
CREATE TABLE `tb_re_warehouse` (
  `warehouse_code` varchar(32) NOT NULL COMMENT '仓库代码fk',
  `warehouse_type` varchar(10) DEFAULT NULL COMMENT '仓库类型',
  `warehouse_name` varchar(25) DEFAULT NULL COMMENT '仓库名称',
  `warehouse_position` varchar(25) DEFAULT NULL COMMENT '仓库位置',
  `warehouse_charger` varchar(25) DEFAULT NULL COMMENT '仓库负责人',
  `warehouse_phone` varchar(20) DEFAULT NULL COMMENT '仓库电话',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库信息表';

-- ----------------------------
-- Table structure for tb_room_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_room_info`;
CREATE TABLE `tb_room_info` (
  `room_no` varchar(32) NOT NULL COMMENT '房间编号',
  `floor_no` varchar(32) NOT NULL COMMENT '楼层代码',
  `room_name` varchar(20) DEFAULT NULL COMMENT '房间名',
  `in_charge_ns` varchar(20) DEFAULT NULL COMMENT '护士责任人',
  `in_charge_pcw` varchar(20) DEFAULT NULL COMMENT 'PCW责任人',
  `room_tel` varchar(20) DEFAULT NULL COMMENT '房间电话',
  `room_type` varchar(1) DEFAULT NULL COMMENT '房间类型',
  `room_towards` varchar(1) DEFAULT NULL COMMENT '房间朝向',
  `room_status` varchar(1) DEFAULT NULL COMMENT '房间状态',
  `expense_standard_id` varchar(32) DEFAULT NULL COMMENT '费用标准id',
  `is_single` varchar(4) DEFAULT NULL COMMENT '是否包间',
  `single_expense_standard_id` varchar(32) DEFAULT NULL COMMENT '包间费用标准',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房间信息';

-- ----------------------------
-- Table structure for tb_self_inspection
-- ----------------------------
DROP TABLE IF EXISTS `tb_self_inspection`;
CREATE TABLE `tb_self_inspection` (
  `self_inspect_id` varchar(32) NOT NULL COMMENT '自检ID',
  `inspect_type` varchar(10) DEFAULT NULL COMMENT '安全检查类型',
  `inspect_dt` varchar(8) DEFAULT NULL COMMENT '安全检查日期',
  `inspect_area` varchar(20) DEFAULT NULL COMMENT '安全检查区域',
  `inspect_man` varchar(20) DEFAULT NULL COMMENT '安全检查人员',
  `inspect_explain` varchar(100) DEFAULT NULL COMMENT '安全检查说明',
  `inspect_result` varchar(100) DEFAULT NULL COMMENT '安全检查结果',
  `reform_status` varchar(4) DEFAULT NULL COMMENT '整改状态',
  `meno` varchar(200) DEFAULT NULL,
  `reform_result` varchar(100) DEFAULT NULL COMMENT '整改结果',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`self_inspect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='安全自查记录';

-- ----------------------------
-- Table structure for tb_serve_fee_rec
-- ----------------------------
DROP TABLE IF EXISTS `tb_serve_fee_rec`;
CREATE TABLE `tb_serve_fee_rec` (
  `Column_1` char(10) DEFAULT NULL,
  `serve_fee_code` varchar(32) NOT NULL COMMENT '服务项目计费明细ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `serve_code` varchar(32) NOT NULL COMMENT '服务项目编码',
  `consume_dt` varchar(10) DEFAULT NULL COMMENT '消费日期',
  `consume_tm` varchar(6) DEFAULT NULL COMMENT '消费时间',
  `serve_count` int(11) DEFAULT NULL COMMENT '服务数量',
  `serve_price` decimal(16,2) DEFAULT NULL COMMENT '服务收费标准',
  `consume_amount` decimal(16,2) DEFAULT NULL COMMENT '消费金额',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务计费明细表';

-- ----------------------------
-- Table structure for tb_serve_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_serve_item`;
CREATE TABLE `tb_serve_item` (
  `serve_code` varchar(32) NOT NULL COMMENT '服务项目编码',
  `serve_name` varchar(20) DEFAULT NULL COMMENT '服务项目名称',
  `serve_type` varchar(8) DEFAULT NULL COMMENT '服务项目类型',
  `serve_price` decimal(16,2) DEFAULT NULL COMMENT '服务收费标准',
  `serve_unit` varchar(15) DEFAULT NULL COMMENT '服务单位',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `begin_dt` date DEFAULT NULL COMMENT '开始日期',
  `end_dt` date DEFAULT NULL COMMENT '截止日期',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务项目科目表';

-- ----------------------------
-- Table structure for tb_serviceplan
-- ----------------------------
DROP TABLE IF EXISTS `tb_serviceplan`;
CREATE TABLE `tb_serviceplan` (
  `serviceplan_id` varchar(32) NOT NULL COMMENT 'serviceplan_id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT 'è€äººç¼–ç ',
  `customer_name` varchar(20) DEFAULT NULL COMMENT 'å®¢æˆ·å§“å',
  `serviceplan_code` varchar(100) DEFAULT NULL,
  `serviceplan_name` varchar(100) DEFAULT NULL COMMENT 'æœåŠ¡è®¡åˆ’åç§°',
  `business_type` char(1) DEFAULT NULL COMMENT '0  æŠ¤ç†   1 ä¸Šé—¨',
  `plan_type` char(1) DEFAULT NULL COMMENT '0  å›ºå®šå¥—é¤è®¡åˆ’  1 é€‰åž‹æœåŠ¡è®¡åˆ’',
  `begin_date` datetime DEFAULT NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `end_date` datetime DEFAULT NULL COMMENT 'ç»“æŸæ—¶é—´',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT 'æ€»é‡‘é¢',
  `last_task_date` date DEFAULT NULL,
  `service_package_id` varchar(32) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`serviceplan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æœåŠ¡è®¡åˆ’';

-- ----------------------------
-- Table structure for tb_serviceplan_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_serviceplan_detail`;
CREATE TABLE `tb_serviceplan_detail` (
  `serviceplan_id` varchar(32) DEFAULT NULL COMMENT 'serviceplan_id',
  `serviceplan_detail_id` varchar(32) NOT NULL COMMENT 'serviceplan_detail_id',
  `service_item_id` varchar(32) DEFAULT NULL COMMENT 'service_item_id',
  `exec_cycle` varchar(20) DEFAULT NULL COMMENT 'monthæœˆ weekå‘¨  dayå¤©',
  `exec_day` varchar(100) DEFAULT NULL,
  `is_fixed_time` char(1) DEFAULT NULL COMMENT '0  ä¸å®šæ—¶  1 å®šæ—¶',
  `exec_time` varchar(100) DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `end_date` datetime DEFAULT NULL COMMENT 'ç»“æŸæ—¶é—´',
  `memo` varchar(200) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  KEY `FK_Relationship_63` (`serviceplan_id`),
  CONSTRAINT `FK_Relationship_63` FOREIGN KEY (`serviceplan_id`) REFERENCES `tb_serviceplan` (`serviceplan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æœåŠ¡è®¡åˆ’æ˜Žç»†';

-- ----------------------------
-- Table structure for tb_service_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_category`;
CREATE TABLE `tb_service_category` (
  `service_category_code` int(20) NOT NULL AUTO_INCREMENT COMMENT '服务类别编码',
  `service_category_name` varchar(50) DEFAULT NULL COMMENT '服务类别',
  `business_type` char(1) DEFAULT NULL COMMENT '业务类型',
  `maintenance_type` char(1) DEFAULT NULL COMMENT '维护类型',
  `valid_flag` varchar(4) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`service_category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='服务项的类别,从字典移植过来';

-- ----------------------------
-- Table structure for tb_service_change
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_change`;
CREATE TABLE `tb_service_change` (
  `service_change_id` varchar(32) NOT NULL COMMENT 'service_change_id',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `customer_name` varchar(20) DEFAULT NULL COMMENT '客户姓名',
  `institution_id` varchar(32) DEFAULT NULL,
  `serviceplan_id` varchar(32) DEFAULT NULL COMMENT 'serviceplan_id',
  `serviceplan_name` varchar(100) DEFAULT NULL COMMENT '服务计划名称',
  `new_serviceplan_id` varchar(32) DEFAULT NULL COMMENT '新服务计划ID',
  `new_serviceplan_name` varchar(100) DEFAULT NULL COMMENT '新服务计划名称',
  `changer` varchar(32) DEFAULT NULL COMMENT '变更人',
  `changer_name` varchar(20) DEFAULT NULL COMMENT '变更人名称',
  `change_time` datetime DEFAULT NULL COMMENT '变更时间',
  `change_reason` varchar(200) DEFAULT NULL COMMENT '变更原因',
  `enable_date` date DEFAULT NULL COMMENT '生效日期',
  `change_content` varchar(1024) DEFAULT NULL COMMENT '变更内容',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`service_change_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务计划变更单';

-- ----------------------------
-- Table structure for tb_service_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_item`;
CREATE TABLE `tb_service_item` (
  `service_item_id` varchar(32) NOT NULL COMMENT 'service_item_id',
  `business_type` char(1) DEFAULT NULL COMMENT '0  æŠ¤ç†   1 ä¸Šé—¨',
  `serviceitem_category_code` varchar(30) DEFAULT NULL COMMENT 'æ¥è‡ªå­—å…¸',
  `service_item_name` varchar(30) DEFAULT NULL COMMENT 'æœåŠ¡é¡¹ç›®åç§°',
  `service_item_code` varchar(30) DEFAULT NULL COMMENT 'æœåŠ¡é¡¹ç›®ç¼–ç ',
  `working_hours` decimal(10,2) DEFAULT NULL,
  `service_price` decimal(10,2) DEFAULT NULL COMMENT 'æœåŠ¡ä»·æ ¼',
  `monthly_price` decimal(10,2) DEFAULT NULL,
  `subsidy_type` varchar(10) DEFAULT NULL COMMENT '0è‡ªè¥  1é•¿ç…§é¡¹ç›®  2è€é¾„è¡¥è´´',
  `maintenance_type` char(1) DEFAULT NULL COMMENT '0å†…ç½®  1è‡ªå®šä¹‰',
  `service_content` varchar(100) DEFAULT NULL COMMENT 'æœåŠ¡å†…å®¹',
  `status` int(2) DEFAULT NULL,
  `service_standards` varchar(1500) DEFAULT NULL COMMENT '服务要求与标准',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `slv` varchar(10) DEFAULT NULL COMMENT '税率',
  `spbm` varchar(50) DEFAULT NULL COMMENT '商品编码',
  `depart_code` varchar(200) DEFAULT NULL COMMENT '部门code',
  `service_item_image` VARCHAR(255) NULL COMMENT "服务图片",
  PRIMARY KEY (`service_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æœåŠ¡é¡¹';

-- ----------------------------
-- Table structure for tb_service_package
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_package`;
CREATE TABLE `tb_service_package` (
  `service_package_id` varchar(32) NOT NULL,
  `service_package_code` varchar(50) DEFAULT NULL,
  `service_package_name` varchar(100) DEFAULT NULL,
  `business_type` char(1) DEFAULT NULL COMMENT '0  æŠ¤ç†   1 ä¸Šé—¨',
  `monthly_price` decimal(10,2) DEFAULT NULL,
  `value_date` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `spbm` varchar(50) DEFAULT NULL COMMENT '商品编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_service_package_items
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_package_items`;
CREATE TABLE `tb_service_package_items` (
  `service_package_id` varchar(32) DEFAULT NULL,
  `service_item_id` varchar(32) DEFAULT NULL COMMENT 'service_item_id',
  `exec_cycle` varchar(20) DEFAULT NULL COMMENT 'monthæœˆ weekå‘¨  dayå¤©',
  `exec_day` varchar(100) DEFAULT NULL,
  `is_fixed_time` char(1) DEFAULT NULL COMMENT '0  ä¸å®šæ—¶  1 å®šæ—¶',
  `exec_time` varchar(100) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_service_profileinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_profileinfo`;
CREATE TABLE `tb_service_profileinfo` (
  `service_profileinfo_id` varchar(32) NOT NULL COMMENT '概要信息ID',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `institution_id` varchar(32) DEFAULT NULL,
  `institution_name` varchar(30) DEFAULT NULL COMMENT '机构名称',
  `service_pattern` varchar(30) DEFAULT NULL COMMENT '服务形态',
  `service_desc` varchar(255) DEFAULT NULL COMMENT '服务描述',
  `start_date` date DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `busi_bill_id` varchar(32) DEFAULT NULL COMMENT '业务单据id',
  `busi_bill_type` varchar(20) DEFAULT NULL COMMENT '业务单据类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务档案概要信息表';

-- ----------------------------
-- Table structure for tb_service_summary
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_summary`;
CREATE TABLE `tb_service_summary` (
  `service_summary_id` varchar(32) NOT NULL COMMENT '重要事件id',
  `service_profileinfo_id` varchar(32) DEFAULT NULL COMMENT '概要信息ID',
  `service_summary_code` varchar(30) DEFAULT NULL COMMENT '重要事件编码',
  `service_summary_desc` varchar(255) DEFAULT NULL COMMENT '重要事件信息描述',
  `occurrence_time` datetime DEFAULT NULL COMMENT '业务发生时间',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`service_summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='重要事件信息摘要';

-- ----------------------------
-- Table structure for tb_service_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_task`;
CREATE TABLE `tb_service_task` (
  `service_task_id` varchar(32) NOT NULL,
  `serviceplan_id` varchar(32) DEFAULT NULL COMMENT 'serviceplan_id',
  `serviceplan_name` varchar(100) DEFAULT NULL COMMENT 'æœåŠ¡è®¡åˆ’åç§°',
  `business_type` char(1) DEFAULT NULL COMMENT '0  æŠ¤ç†   1 ä¸Šé—¨',
  `task_type` char(1) DEFAULT NULL COMMENT '0 è®¡åˆ’ä»»åŠ¡  1ä¸´æ—¶ä»»åŠ¡',
  `task_code` varchar(30) DEFAULT NULL,
  `elder_code` varchar(32) DEFAULT NULL COMMENT 'è€äººç¼–ç ',
  `elder_name` varchar(20) DEFAULT NULL COMMENT 'è€äººå§“å',
  `sex` varchar(10) DEFAULT NULL,
  `contact_tel` varchar(32) DEFAULT NULL,
  `contact_address` varchar(200) DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `bed_no` varchar(20) DEFAULT NULL,
  `receiving_deadline` datetime DEFAULT NULL COMMENT 'æŽ¥æ”¶æˆªæ­¢æ—¶é—´',
  `service_item_id` varchar(32) DEFAULT NULL COMMENT 'service_item_id',
  `service_item_code` varchar(30) DEFAULT NULL COMMENT 'æœåŠ¡é¡¹ç›®ç¼–ç ',
  `service_item_name` varchar(30) DEFAULT NULL COMMENT 'æœåŠ¡é¡¹ç›®åç§°',
  `service_price` decimal(10,2) DEFAULT NULL,
  `subsidy_type` varchar(10) DEFAULT NULL COMMENT '0è‡ªè¥  1é•¿ç…§é¡¹ç›®  2è€é¾„è¡¥è´´',
  `plan_exec_date` date DEFAULT NULL,
  `is_fixed_time` char(1) DEFAULT NULL COMMENT '0  ä¸å®šæ—¶  1 å®šæ—¶',
  `plan_exec_time` varchar(20) DEFAULT NULL,
  `payment_type` varchar(32) DEFAULT NULL COMMENT 'ä»˜æ¬¾æ–¹å¼',
  `payment_status` char(1) DEFAULT '0' COMMENT '0æœªæ”¯ä»˜ 1å·²æ”¯ä»˜',
  `dispatch_type` char(1) DEFAULT NULL COMMENT '0æœ¬æœºæž„  1ä¾›åº”å•†  2å¿—æ„¿è€…',
  `receiver_id` varchar(32) DEFAULT NULL,
  `receiver_name` varchar(50) DEFAULT NULL,
  `receiver_departid` varchar(32) DEFAULT NULL COMMENT '部门id',
  `receiver_departname` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `fact_exec_date` date DEFAULT NULL,
  `fact_exec_time` varchar(20) DEFAULT NULL,
  `task_status` char(1) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `single_date` date DEFAULT NULL COMMENT '派单日期',
  `single_time` varchar(20) DEFAULT NULL COMMENT '派单时间',
  `receiver_tel` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`service_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_service_task_chg
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_task_chg`;
CREATE TABLE `tb_service_task_chg` (
  `service_task_chg_id` varchar(32) NOT NULL,
  `service_task_id` varchar(32) DEFAULT NULL,
  `plan_exec_date` date DEFAULT NULL,
  `is_fixed_time` char(1) DEFAULT NULL COMMENT '0  不定时  1 定时',
  `plan_exec_time` varchar(20) DEFAULT NULL,
  `dispatch_type` char(1) DEFAULT NULL COMMENT '0本机构  1供应商  2志愿者',
  `receiver_id` varchar(32) DEFAULT NULL,
  `receiver_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`service_task_chg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录服务任务每次变更前的信息';

-- ----------------------------
-- Table structure for tb_service_task_exec
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_task_exec`;
CREATE TABLE `tb_service_task_exec` (
  `task_exec_id` varchar(32) NOT NULL COMMENT 'dispatch_execution_id',
  `service_task_id` varchar(32) DEFAULT NULL,
  `is_out` varchar(200) DEFAULT NULL COMMENT 'å¤–å‡º',
  `major_concern` varchar(200) DEFAULT NULL COMMENT 'å…³æ³¨äº‹é¡¹',
  `executor_id` varchar(32) DEFAULT NULL COMMENT 'æ‰§è¡Œè€…idå¤–é”®',
  `executor_name` varchar(30) DEFAULT NULL COMMENT 'æ‰§è¡Œè€…åç§°',
  `before_execution_confirm` decimal(1,0) DEFAULT NULL COMMENT 'æ‰§è¡Œå‰ç¡®è®¤',
  `before_execution_time` datetime DEFAULT NULL COMMENT 'æ‰§è¡Œå‰ç¡®è®¤æ—¶é—´',
  `before_execution_photo` varchar(1024) DEFAULT NULL COMMENT 'æ‰§è¡Œå‰ç…§ç‰‡',
  `after_execution_confirm` decimal(1,0) DEFAULT NULL COMMENT 'æ‰§è¡ŒåŽç¡®è®¤æ—¶é—´',
  `after_execution_time` datetime DEFAULT NULL COMMENT 'æ‰§è¡ŒåŽç¡®è®¤æ—¶é—´',
  `after_execution_photo` varchar(1024) DEFAULT NULL COMMENT 'æ‰§è¡ŒåŽç…§ç‰‡',
  `custom_confirm` decimal(1,0) DEFAULT NULL COMMENT 'å®¢æˆ·ç¡®è®¤',
  `custom_confirm_time` datetime DEFAULT NULL COMMENT 'å®¢æˆ·ç¡®è®¤æ—¶é—´',
  `problem_log` varchar(1024) DEFAULT NULL COMMENT 'æ‰§è¡Œé—®é¢˜è®°å½•',
  `feedback` varchar(255) DEFAULT NULL COMMENT 'å®¢æˆ·åé¦ˆæ„è§',
  `emergency_note` varchar(200) DEFAULT NULL COMMENT 'åº”æ€¥æƒ…å†µè¯´æ˜Ž',
  `totao_score` decimal(8,2) DEFAULT NULL COMMENT 'æ€»åˆ†',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL COMMENT 'çŠ¶æ€',
  `institution_id` varchar(32) DEFAULT NULL,
  `record_id` varchar(32) DEFAULT NULL,
  `record_name` varchar(20) DEFAULT NULL,
  `record_time` datetime DEFAULT NULL,
  `is_evaluate` VARCHAR(1) DEFAULT '0' COMMENT '是否已评价',
  PRIMARY KEY (`task_exec_id`),
  KEY `Relationship_81_FK` (`service_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æœåŠ¡ä»»åŠ¡æ‰§è¡Œ';

-- ----------------------------
-- Table structure for tb_service_task_exec_eva
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_task_exec_eva`;
CREATE TABLE `tb_service_task_exec_eva` (
  `task_exec_eva_id` varchar(32) NOT NULL COMMENT 'dispatch_execution_evaluate_id',
  `task_exec_id` varchar(32) DEFAULT NULL COMMENT 'dispatch_execution_id',
  `evaluate_item` varchar(50) DEFAULT NULL COMMENT 'è¯„ä»·é¡¹',
  `evaluate_prive` int(11) DEFAULT NULL COMMENT 'åˆ†æ•°',
  `evaluate_time` datetime DEFAULT NULL COMMENT 'è¯„ä»·æ—¶é—´',
  `evaluater` varchar(32) DEFAULT NULL COMMENT 'è¯„ä»·äºº',
  `evaluater_name` varchar(50) DEFAULT NULL COMMENT 'è¯„ä»·äººåç§°',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL COMMENT 'çŠ¶æ€',
  PRIMARY KEY (`task_exec_eva_id`),
  KEY `Relationship_67_FK` (`task_exec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æœåŠ¡ä»»åŠ¡æ‰§è¡Œè¯„ä»·';

-- ----------------------------
-- Table structure for tb_service_task_process
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_task_process`;
CREATE TABLE `tb_service_task_process` (
  `task_process_id` varchar(32) NOT NULL,
  `dispatch_id` varchar(32) DEFAULT NULL COMMENT 'dispatch_id',
  `service_task_id` varchar(32) DEFAULT NULL,
  `executor_id` varchar(32) DEFAULT NULL COMMENT 'æ‰§è¡Œè€…idå¤–é”®',
  `executor_name` varchar(30) DEFAULT NULL COMMENT 'æ‰§è¡Œè€…åç§°',
  `executor_type` varchar(20) DEFAULT NULL COMMENT '0  æœ¬éƒ¨æœåŠ¡å‘˜ 1ä¾›åº”å•†æœåŠ¡å‘˜  2å¿—æ„¿è€…',
  `execute_time` datetime DEFAULT NULL,
  `execute_action` varchar(30) DEFAULT NULL,
  `execute_explain` varchar(200) DEFAULT NULL COMMENT '执行说明',
  `institution_name` varchar(30) DEFAULT NULL COMMENT 'æœºæž„åç§°',
  `executor_tel` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`task_process_id`),
  KEY `FK_Relationship_21` (`dispatch_id`),
  KEY `FK_Relationship_79` (`service_task_id`),
  CONSTRAINT `FK_Relationship_21` FOREIGN KEY (`dispatch_id`) REFERENCES `tb_dispatch` (`dispatch_id`),
  CONSTRAINT `FK_Relationship_79` FOREIGN KEY (`service_task_id`) REFERENCES `tb_service_task` (`service_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_service_task_temp
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_task_temp`;
CREATE TABLE `tb_service_task_temp` (
  `service_task_id` varchar(32) NOT NULL COMMENT '服务任务ID',
  `applicant` varchar(50) DEFAULT NULL COMMENT '申请人姓名',
  `applicant_id` varchar(32) DEFAULT NULL COMMENT '申请人id',
  `contact_tel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `task_source` char(1) DEFAULT NULL COMMENT '工单来源',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `service_amount` decimal(2,0) DEFAULT NULL COMMENT '服务数量',
  `service_hours` decimal(2,0) DEFAULT NULL COMMENT '服务工时',
  `service_cost` decimal(10,2) DEFAULT NULL COMMENT '服务费用',
  PRIMARY KEY (`service_task_id`),
  CONSTRAINT `FK_Relationship_15` FOREIGN KEY (`service_task_id`) REFERENCES `tb_service_task` (`service_task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='临时工单';

-- ----------------------------
-- Table structure for tb_shiftchg_brief
-- ----------------------------
DROP TABLE IF EXISTS `tb_shiftchg_brief`;
CREATE TABLE `tb_shiftchg_brief` (
  `shiftchg_code` varchar(32) NOT NULL COMMENT '交更编码',
  `shiftchg_dt` varchar(10) DEFAULT NULL COMMENT '交更日期',
  `shiftchg_tm` varchar(6) DEFAULT NULL COMMENT '交更时间',
  `shiftchg_type` varchar(8) DEFAULT NULL COMMENT '交更类型',
  `shiftchg_give` varchar(32) DEFAULT NULL COMMENT '交更人',
  `shiftchg_receive` varchar(32) DEFAULT NULL COMMENT '接更人',
  `shiftchg_remark` varchar(200) DEFAULT NULL COMMENT '交更备注',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`shiftchg_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交更摘要表';

-- ----------------------------
-- Table structure for tb_shift_arrange
-- ----------------------------
DROP TABLE IF EXISTS `tb_shift_arrange`;
CREATE TABLE `tb_shift_arrange` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `arrange_code` varchar(100) NOT NULL COMMENT '排班编码',
  `shift_type` varchar(10) DEFAULT NULL COMMENT '排班类型',
  `week` varchar(8) DEFAULT NULL COMMENT 'week',
  `shift_arr_dt` date DEFAULT NULL COMMENT '日期',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `shift_code` varchar(32) DEFAULT NULL COMMENT '班次编码',
  `post_name` varchar(20) DEFAULT NULL COMMENT '岗位名称',
  `post_code_upd` varchar(100) DEFAULT NULL COMMENT '修改后岗位',
  `is_overtime` varchar(10) DEFAULT NULL COMMENT '是否加班岗位',
  `is_newman` varchar(4) DEFAULT NULL COMMENT '是否新人岗',
  `is_apply` varchar(4) DEFAULT NULL COMMENT '是否申请岗',
  `public_holiday_id` varchar(32) DEFAULT NULL COMMENT '公共假期行ID',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `arrange_man` varchar(20) DEFAULT NULL COMMENT '排班人',
  `arrange_dt` date DEFAULT NULL COMMENT '排班日期',
  `arrange_state` varchar(20) DEFAULT NULL COMMENT '排班状态',
  `color_code` varchar(20) DEFAULT NULL COMMENT 'color_code',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_`,`arrange_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排工作';

-- ----------------------------
-- Table structure for tb_shift_arrange_main
-- ----------------------------
DROP TABLE IF EXISTS `tb_shift_arrange_main`;
CREATE TABLE `tb_shift_arrange_main` (
  `shift_begin_dt` varchar(10) DEFAULT NULL COMMENT '排班开始日期',
  `shift_end_dt` date DEFAULT NULL COMMENT '排班对应的截止日期',
  `publish_dt` varchar(10) DEFAULT NULL COMMENT '发布日期',
  `over_time` varchar(3) DEFAULT NULL COMMENT '加班天数',
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `arrange_code` varchar(100) DEFAULT NULL COMMENT '排班编码',
  `shift_type` varchar(10) DEFAULT NULL COMMENT '排班类型',
  `arrange_man` varchar(32) DEFAULT NULL COMMENT '排班人',
  `arrange_dt` date DEFAULT NULL COMMENT '排班日期',
  `arrange_state` varchar(20) DEFAULT NULL COMMENT '排班状态',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排班主表';

-- ----------------------------
-- Table structure for tb_shift_arrange_rule
-- ----------------------------
DROP TABLE IF EXISTS `tb_shift_arrange_rule`;
CREATE TABLE `tb_shift_arrange_rule` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `role` varchar(20) DEFAULT NULL COMMENT '角色',
  `cycle` varchar(8) DEFAULT NULL COMMENT '周期',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `shift_code` varchar(32) NOT NULL COMMENT '班次编码',
  `shift_begin_dt` varchar(10) DEFAULT NULL COMMENT '排班开始日期',
  `shift_end_dt` date DEFAULT NULL COMMENT '排班对应的截止日期',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排班规则表';

-- ----------------------------
-- Table structure for tb_shift_arrange_rule_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_shift_arrange_rule_detail`;
CREATE TABLE `tb_shift_arrange_rule_detail` (
  `_id` varchar(32) NOT NULL COMMENT '排班规则明细信息id',
  `rule_id` varchar(32) NOT NULL COMMENT '规则ID',
  `shift_order` int(11) DEFAULT NULL COMMENT '班次顺序',
  `shift_cycle` int(11) DEFAULT NULL COMMENT '周期（天）',
  `shift_code` varchar(32) NOT NULL COMMENT '班次编码',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排班规则明细信息';

-- ----------------------------
-- Table structure for tb_shift_arrange_rule_main
-- ----------------------------
DROP TABLE IF EXISTS `tb_shift_arrange_rule_main`;
CREATE TABLE `tb_shift_arrange_rule_main` (
  `rule_id` varchar(32) NOT NULL COMMENT '规则ID',
  `rule_name` varchar(20) NOT NULL COMMENT '规则名称',
  `rule_des` varchar(100) DEFAULT NULL COMMENT '规则描述',
  `rule_cycle` int(11) DEFAULT NULL COMMENT '规则周期',
  `depart_id` varchar(32) DEFAULT NULL COMMENT '所在部门',
  `depart_name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排班规则信息';

-- ----------------------------
-- Table structure for tb_shift_emp_arrange_rule
-- ----------------------------
DROP TABLE IF EXISTS `tb_shift_emp_arrange_rule`;
CREATE TABLE `tb_shift_emp_arrange_rule` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `employee_code` varchar(32) DEFAULT NULL COMMENT '员工编码',
  `rule_id` varchar(32) NOT NULL COMMENT '规则ID',
  `shift_begin_dt` varchar(10) DEFAULT NULL COMMENT '排班开始日期',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员排班规则表';

-- ----------------------------
-- Table structure for tb_single_discount
-- ----------------------------
DROP TABLE IF EXISTS `tb_single_discount`;
CREATE TABLE `tb_single_discount` (
  `single_discount_id` varchar(32) NOT NULL COMMENT '趸交优惠id',
  `single_discount_name` varchar(32) DEFAULT NULL COMMENT '趸交优惠活动名称',
  `single_discount_months` int(11) DEFAULT NULL COMMENT '趸交月数（最小月数）',
  `discount_rate` decimal(10,2) DEFAULT NULL COMMENT '折扣率',
  `single_discount_desc` varchar(200) DEFAULT NULL COMMENT '趸交优惠活动说明',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `institution_id` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='趸交优惠活动';

-- ----------------------------
-- Table structure for tb_single_discount_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_single_discount_item`;
CREATE TABLE `tb_single_discount_item` (
  `single_discount_id` varchar(32) NOT NULL COMMENT '趸交优惠id',
  `institution_id` varchar(32) DEFAULT NULL,
  `expense_item_id` varchar(32) DEFAULT NULL COMMENT 'expense_item_id',
  `single_discount_item_id` varchar(32) NOT NULL COMMENT '趸交优惠项目id',
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_flag` char(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`single_discount_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='趸交优惠项目';

-- ----------------------------
-- Table structure for tb_slides
-- ----------------------------
DROP TABLE IF EXISTS `tb_slides`;
CREATE TABLE `tb_slides` (
  `slide_id` varchar(32) NOT NULL,
  `slide_img` varchar(256) DEFAULT NULL COMMENT '幻灯片图片地址',
  `slide_url` varchar(256) DEFAULT NULL COMMENT '幻灯片跳转地址',
  `institution_id` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='幻灯片,照护app首页图片';

-- ----------------------------
-- Table structure for tb_standard_price
-- ----------------------------
DROP TABLE IF EXISTS `tb_standard_price`;
CREATE TABLE `tb_standard_price` (
  `standard_price_id` varchar(32) NOT NULL COMMENT 'standard_price_id',
  `service_item_id` varchar(32) DEFAULT NULL COMMENT 'service_item_id',
  `price_unit_code` varchar(30) DEFAULT NULL COMMENT '价格单位编码',
  `price` decimal(10,2) DEFAULT NULL COMMENT '服务价格',
  `institution_id` varchar(32) DEFAULT NULL,
  `enable_date` date DEFAULT NULL COMMENT '生效日期',
  `disable_date` date DEFAULT NULL COMMENT '失效日期',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`standard_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务项标准价格';

-- ----------------------------
-- Table structure for tb_sys_elder_event
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_elder_event`;
CREATE TABLE `tb_sys_elder_event` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `event_id` varchar(32) DEFAULT NULL COMMENT '事件ID',
  `column_code` varchar(32) DEFAULT NULL COMMENT '列编码',
  `descrip` varchar(200) DEFAULT NULL COMMENT '事件描述',
  `bond_resource` varchar(100) DEFAULT NULL COMMENT '绑定来源',
  `updater` varchar(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='院友与事件关系表';

-- ----------------------------
-- Table structure for tb_sys_enquipment
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_enquipment`;
CREATE TABLE `tb_sys_enquipment` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `ENQUIP_no` varchar(32) DEFAULT NULL COMMENT '设备唯一编码',
  `ENQUIP_CODE` varchar(32) DEFAULT NULL COMMENT '设备编码',
  `enquip_name` varchar(30) DEFAULT NULL COMMENT '设备名称',
  `enquip_type` varchar(32) DEFAULT NULL COMMENT '设备类型',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `enquip_position` varchar(299) DEFAULT NULL COMMENT '设备位置',
  `enquip_jsbh` varchar(100) DEFAULT NULL COMMENT '设备机身编号',
  `in_floor_no` varchar(32) DEFAULT NULL COMMENT '所在楼层',
  `region_no` varchar(32) DEFAULT NULL COMMENT 'region_no',
  `incharge_com` varchar(50) DEFAULT NULL COMMENT '负责公司',
  `incharge_contactor` varchar(25) DEFAULT NULL COMMENT '负责公司联系人',
  `incharge_phone` varchar(20) DEFAULT NULL COMMENT '负责公司联系电话',
  `incharge_fax` varchar(20) DEFAULT NULL COMMENT '负责公司传真',
  `next_check_dt` date DEFAULT NULL COMMENT '下次年检日期',
  `is_private` varchar(4) DEFAULT '0' COMMENT '是否私有',
  `custom_code` varchar(40) DEFAULT NULL COMMENT '客户编码',
  `enquip_size` varchar(30) DEFAULT NULL COMMENT '设备尺码',
  `BED_NO` varchar(32) DEFAULT NULL COMMENT '床位代码',
  `search_cycle` int(11) DEFAULT NULL COMMENT '检查周期',
  `departCode` varchar(20) DEFAULT NULL COMMENT '部门编码',
  `enquip_brand` varchar(50) DEFAULT NULL COMMENT '设备品牌',
  `nameplate` varchar(200) DEFAULT NULL COMMENT '铭牌内容',
  `enquip_desc` varchar(200) DEFAULT NULL COMMENT '设备描述',
  `purchase_dt` date DEFAULT NULL COMMENT '购买日期',
  `guarantee_period` date DEFAULT NULL COMMENT '保修期限',
  `enquip_price` decimal(16,2) DEFAULT NULL COMMENT '设备价格',
  `registration_dt` varchar(10) DEFAULT NULL COMMENT '登记日期',
  `handler` varchar(32) DEFAULT NULL COMMENT '处理人姓名',
  `maintenance_state` varchar(4) DEFAULT NULL COMMENT '是否维修0是1否',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='院内设备信息表';

-- ----------------------------
-- Table structure for tb_sys_event_dic
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_event_dic`;
CREATE TABLE `tb_sys_event_dic` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `attention_code` varchar(32) NOT NULL COMMENT '关注编码',
  `attention_type` varchar(10) DEFAULT NULL COMMENT '关注类型',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `ENQUIP_no` varchar(32) DEFAULT NULL COMMENT '设备唯一编码',
  `ENQUIP_CODE` varchar(32) DEFAULT NULL COMMENT '设备编码',
  `EVENT_NAME` varchar(25) DEFAULT NULL COMMENT '事件名称',
  `event_code` varchar(32) DEFAULT NULL COMMENT '事件编码',
  `event_dt` date DEFAULT NULL COMMENT '时间日期',
  `event_time` time DEFAULT NULL COMMENT '事件时间',
  `item_name` varchar(20) DEFAULT NULL COMMENT '科目名称',
  `dic_code` varchar(20) DEFAULT NULL COMMENT '字典编码',
  `dic_name` varchar(20) DEFAULT NULL COMMENT '字典名称',
  `dic_item_code` varchar(20) DEFAULT NULL COMMENT '字典科目编码',
  `dic_item_name` varchar(20) DEFAULT NULL COMMENT '字典科目名称',
  `attention_content` varchar(200) DEFAULT NULL COMMENT '关注内容',
  `deal_method_des` varchar(200) DEFAULT NULL COMMENT '跟进措施描述',
  `post_name` varchar(20) DEFAULT NULL COMMENT '岗位名称',
  `EMPLOYEE_ID` varchar(32) DEFAULT NULL COMMENT '员工ID',
  `employee_name` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `attention_state` varchar(4) DEFAULT NULL COMMENT '关注状态',
  `resource_id` varchar(32) DEFAULT NULL COMMENT '源表ID',
  `resource_tab_name` varchar(40) DEFAULT NULL COMMENT '源表名称',
  `finish_flag` varchar(4) DEFAULT NULL COMMENT '完成标志',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) DEFAULT NULL,
  `service_task_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`attention_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注事件字典选项对应表';

-- ----------------------------
-- Table structure for tb_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_module`;
CREATE TABLE `tb_sys_module` (
  `module_code` varchar(32) NOT NULL COMMENT '模块编码',
  `module_name` varchar(20) DEFAULT NULL COMMENT '模块名称',
  `corr_EVENT_ID` varchar(32) DEFAULT NULL COMMENT '对应的时间ID',
  `corr_menu_id` varchar(20) DEFAULT NULL COMMENT '对应的菜单ID',
  `left_column` varchar(100) DEFAULT NULL COMMENT '左边表格的数据',
  `right_column` varchar(100) DEFAULT NULL COMMENT '右边表格的数据',
  `history_column` varchar(100) DEFAULT NULL COMMENT '历史记录的列',
  `entity_list` varchar(100) DEFAULT NULL COMMENT '主属性列表',
  `saveInface` varchar(100) DEFAULT NULL COMMENT '保存的接口字段名',
  `title_name_type` varchar(15) DEFAULT NULL COMMENT '显示模块名称类型',
  `rowHight` decimal(4,0) DEFAULT NULL COMMENT '行数',
  `abs_type` varchar(15) DEFAULT NULL COMMENT '调用的抽象方法类',
  `abs_type_history` varchar(15) DEFAULT NULL COMMENT '显示历史记录调用的抽象方法类',
  `save_url_str` varchar(50) DEFAULT NULL COMMENT '保存数据用到的接口名',
  `entity_list_str` varchar(100) DEFAULT NULL COMMENT '解析数据用到的list键',
  `howtocheck` varchar(1) DEFAULT NULL COMMENT '是否勾选',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能模块字典表';

-- ----------------------------
-- Table structure for tb_sys_module_column
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_module_column`;
CREATE TABLE `tb_sys_module_column` (
  `column_code` varchar(32) NOT NULL COMMENT '列编码',
  `module_code` varchar(32) DEFAULT NULL COMMENT '模块编码',
  `column_name` varchar(20) DEFAULT NULL COMMENT '列显示名称',
  `interface_name` varchar(20) DEFAULT NULL COMMENT '对应的接口名称',
  `is_on_click` varchar(2) DEFAULT NULL COMMENT '是否点击事件',
  `on_click_type` varchar(4) DEFAULT NULL COMMENT '点击事件类型',
  `on_click_type_right` varchar(4) DEFAULT NULL COMMENT '点击事件外选类型',
  `on_click_key` varchar(30) DEFAULT NULL COMMENT '点击事件字典键',
  `is_initialize` varchar(2) DEFAULT NULL COMMENT '是否需要初始化数据',
  `column_type` varchar(8) DEFAULT NULL COMMENT '控件类型',
  `type_danwei` varchar(20) DEFAULT NULL COMMENT '编辑框跟的单位',
  `is_scope` varchar(4) DEFAULT NULL COMMENT '是否被要求有输入范围',
  `is_scope_other` varchar(4) DEFAULT NULL COMMENT '是否自带范围',
  `scope_value` varchar(20) DEFAULT NULL COMMENT '范围的值',
  `column_wide` decimal(4,0) DEFAULT NULL COMMENT '列宽度',
  `column_height` decimal(4,0) DEFAULT NULL COMMENT '列高度',
  `is_next` varchar(2) DEFAULT NULL COMMENT '是否有下一级',
  `next_height` decimal(4,0) DEFAULT NULL COMMENT '有下一级的总体高度',
  `is_gl` varchar(20) DEFAULT NULL COMMENT '是否有关联项',
  `is_gl_view` varchar(2) DEFAULT NULL COMMENT '关联的控件',
  `is_all_slect` varchar(2) DEFAULT NULL COMMENT '是否有全选功能',
  `gl_key` varchar(30) DEFAULT NULL COMMENT '关联的字典数据',
  `value_type` varchar(15) DEFAULT NULL COMMENT '回显内容的数据类型',
  `is_show` varchar(2) DEFAULT NULL COMMENT '是否显示列',
  `next_list` varchar(80) DEFAULT NULL COMMENT '下一级数据集合',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `update_time` datetime DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能模块包含的列字典表';

-- ----------------------------
-- Table structure for tb_sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_organization`;
CREATE TABLE `tb_sys_organization` (
  `organization_id` varchar(32) NOT NULL DEFAULT '',
  `organization_address` varchar(200) DEFAULT NULL COMMENT '机构地址',
  `organization_telephone` varchar(32) DEFAULT NULL COMMENT '机构电话',
  `organization_website` varchar(100) DEFAULT NULL COMMENT '机构网址',
  `organization_image` mediumblob COMMENT '机构图标',
  `organization_wechat` varchar(32) DEFAULT NULL COMMENT '机构微信号',
  `organization_blog` varchar(32) DEFAULT NULL COMMENT '机构微博',
  `organization_qq` varchar(32) DEFAULT NULL COMMENT '机构QQ号',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '������',
  `operate_reason` varchar(100) DEFAULT NULL COMMENT '操作原因',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '����id',
  `organization_image_url` varchar(200) DEFAULT NULL COMMENT '����ͼ���ַ',
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tb_sys_org_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_org_menu`;
CREATE TABLE `tb_sys_org_menu` (
  `menuCode` varchar(40) NOT NULL COMMENT '菜单代码',
  `menuName` varchar(50) NOT NULL COMMENT '菜单名称',
  `funcEntry` varchar(500) NOT NULL COMMENT '功能入口',
  `menuLevel` int(11) DEFAULT NULL COMMENT '菜单层次',
  `parentMenuCode` varchar(40) NOT NULL COMMENT '上级菜单代码',
  `menuFullCode` varchar(400) DEFAULT NULL COMMENT '菜单全路径代码',
  `menuFullName` varchar(400) DEFAULT NULL COMMENT '全路径名称',
  `nodeOrder` int(11) DEFAULT NULL COMMENT '节点顺序',
  `isleaf` varchar(4) DEFAULT NULL COMMENT '是否叶子结点',
  `menuTypeName` varchar(20) DEFAULT NULL COMMENT '菜单类别名称',
  `menuTypeCode` varchar(10) DEFAULT NULL COMMENT '菜单类别代码',
  `MenuSpelling` varchar(250) DEFAULT NULL COMMENT '菜单全拼',
  `MenuSIMPLEPIN` varchar(100) DEFAULT NULL COMMENT '菜单简拼',
  `ORGID` decimal(9,0) NOT NULL COMMENT '组织机构编码',
  PRIMARY KEY (`menuCode`,`ORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Table structure for tb_sys_shift
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_shift`;
CREATE TABLE `tb_sys_shift` (
  `shift_code` varchar(32) NOT NULL COMMENT '班次编码',
  `shift_name` varchar(20) DEFAULT NULL COMMENT '班次名称',
  `shift_name_short` varchar(20) DEFAULT NULL COMMENT '班次简称',
  `shift_role` varchar(20) DEFAULT NULL COMMENT '班次角色',
  `shift_desc` varchar(100) DEFAULT NULL COMMENT '班次描述',
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班次';

-- ----------------------------
-- Table structure for tb_sys_shift_depart
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_shift_depart`;
CREATE TABLE `tb_sys_shift_depart` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `shift_code` varchar(32) DEFAULT NULL COMMENT '班次编码',
  `depart_id` varchar(32) DEFAULT NULL COMMENT '所在部门',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班次对应的部门';

-- ----------------------------
-- Table structure for tb_sys_shift_room
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_shift_room`;
CREATE TABLE `tb_sys_shift_room` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `tb_shift_code` varchar(32) NOT NULL COMMENT '班次编码',
  `room_no` varchar(32) DEFAULT NULL COMMENT '房间编号',
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_`,`tb_shift_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班次对应的房间';

-- ----------------------------
-- Table structure for tb_trim_nails
-- ----------------------------
DROP TABLE IF EXISTS `tb_trim_nails`;
CREATE TABLE `tb_trim_nails` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `trim_nails` varchar(4) DEFAULT NULL COMMENT '剪指趾甲',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='剪指趾甲';

-- ----------------------------
-- Table structure for tb_tubefeed_in
-- ----------------------------
DROP TABLE IF EXISTS `tb_tubefeed_in`;
CREATE TABLE `tb_tubefeed_in` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `recorde_time` varchar(4) DEFAULT NULL COMMENT '记录时间',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `stomach_content` varchar(20) DEFAULT NULL COMMENT '胃容物',
  `stomach_content_amount` varchar(20) DEFAULT NULL COMMENT '胃容物量',
  `stomach_content_ph` varchar(20) DEFAULT NULL COMMENT '胃容物PH值',
  `stomach_content_tm` varchar(6) DEFAULT NULL COMMENT '胃容物测试时间',
  `liqued_amount` varchar(20) DEFAULT NULL COMMENT '流质量',
  `liqued_tm` varchar(6) DEFAULT NULL COMMENT '流体进食时间',
  `mouthwash_flag` varchar(4) DEFAULT NULL COMMENT '洗口标志',
  `mouthwasht_tm` varchar(6) DEFAULT NULL COMMENT '洗口时间',
  `milk_amount` varchar(20) DEFAULT NULL COMMENT '奶量',
  `water_amount` varchar(20) DEFAULT NULL COMMENT '水量',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管饲院友入量记录';

-- ----------------------------
-- Table structure for tb_venue_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_venue_info`;
CREATE TABLE `tb_venue_info` (
  `venue_id` varchar(32) NOT NULL COMMENT '场馆主键',
  `venue_code` varchar(32) DEFAULT NULL COMMENT '场馆编号',
  `venue_name` varchar(128) NOT NULL COMMENT '场馆名称',
  `responsible_dept` varchar(32) DEFAULT NULL COMMENT '责任部门',
  `responsible_dept_name` varchar(128) DEFAULT NULL COMMENT '责任部门名称',
  `venue_beg_time` varchar(8) DEFAULT NULL COMMENT '场馆开放时间',
  `venue_end_time` varchar(8) DEFAULT NULL COMMENT '场馆结束时间',
  `venue_position` varchar(256) DEFAULT NULL COMMENT '活动室位置',
  `venue_max_num` int(11) DEFAULT NULL COMMENT '最大可用设施',
  `venue_subscribe_descr` varchar(1024) DEFAULT NULL COMMENT '预约说明',
  `venue_subscribe_rule` varchar(1024) DEFAULT NULL COMMENT '预约规则',
  `venue_type` varchar(20) DEFAULT NULL COMMENT '活动室类型',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `depart_code` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场馆信息';

-- ----------------------------
-- Table structure for tb_venue_open_period
-- ----------------------------
DROP TABLE IF EXISTS `tb_venue_open_period`;
CREATE TABLE `tb_venue_open_period` (
  `venue_period_id` varchar(32) NOT NULL COMMENT '场馆开放时段id',
  `venue_id` varchar(32) NOT NULL COMMENT '场馆主键',
  `venue_period_sn` smallint(6) DEFAULT NULL COMMENT '开放时段序号',
  `period_descr` varchar(256) DEFAULT NULL COMMENT '场馆预约时段描述',
  `venue_beg_time` varchar(8) DEFAULT NULL COMMENT '场馆开放时间',
  `venue_end_time` varchar(8) DEFAULT NULL COMMENT '场馆结束时间',
  `venue_subscribe_num` int(11) DEFAULT NULL COMMENT '可预约数',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`venue_period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场馆开放时段';

-- ----------------------------
-- Table structure for tb_venue_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `tb_venue_subscribe`;
CREATE TABLE `tb_venue_subscribe` (
  `venue_subscribe_id` varchar(32) NOT NULL COMMENT '场馆预约ID',
  `venue_period_id` varchar(32) NOT NULL COMMENT '场馆开放时段id',
  `subscribe_time` datetime NOT NULL COMMENT '预约时间',
  `subscribe_user_id` varchar(32) DEFAULT NULL COMMENT '场馆预约用户ID',
  `subscribe_user_code` varchar(32) DEFAULT NULL COMMENT '用户编码',
  `subscribe_user_name` varchar(64) DEFAULT NULL COMMENT '场馆预约用户名称',
  `activity_user_type` varchar(2) DEFAULT NULL COMMENT '活动对象类型:1：客户，2：员工，3：志愿者',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`venue_subscribe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场馆预约';

-- ----------------------------
-- Table structure for tb_venue_subscribe_sum
-- ----------------------------
DROP TABLE IF EXISTS `tb_venue_subscribe_sum`;
CREATE TABLE `tb_venue_subscribe_sum` (
  `subscribe_info_id` varchar(32) NOT NULL COMMENT '预约情况id',
  `venue_period_id` varchar(32) NOT NULL COMMENT '场馆开放时段id',
  `venue_code` varchar(32) DEFAULT NULL COMMENT '场馆编号',
  `status` varchar(30) DEFAULT NULL COMMENT '状态',
  `subscribe_num` int(11) NOT NULL COMMENT '已预约人数',
  `subscribe_date` date NOT NULL COMMENT '预约日期',
  `valid_flag` varchar(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`subscribe_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场馆阶段预约统计';

-- ----------------------------
-- Table structure for tb_vital_sign
-- ----------------------------
DROP TABLE IF EXISTS `tb_vital_sign`;
CREATE TABLE `tb_vital_sign` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(20) DEFAULT NULL COMMENT '日期',
  `commit_tm` varchar(6) DEFAULT NULL COMMENT '提交时间',
  `measure_time` varchar(6) DEFAULT NULL COMMENT '测量时间',
  `vital_sign_itme` varchar(50) DEFAULT NULL COMMENT '生命体征科目',
  `measure_result` varchar(20) DEFAULT NULL COMMENT '测量结果',
  `measure_result_two` varchar(20) DEFAULT NULL COMMENT '测量结果',
  `measure_way` varchar(20) DEFAULT NULL COMMENT '测量方式',
  `measure_reason` varchar(20) DEFAULT NULL COMMENT '测量原因',
  `result_source` varchar(20) DEFAULT NULL COMMENT '来源',
  `measure_man` varchar(20) DEFAULT NULL COMMENT '测量人',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `recorder` varchar(20) DEFAULT NULL COMMENT '记录人',
  `recorde_time` varchar(4) DEFAULT NULL COMMENT '记录时间',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `sphygmus` varchar(10) DEFAULT NULL COMMENT '脉搏',
  `task_exec_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生命体征';

-- ----------------------------
-- Table structure for tb_vital_sign_threshold_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_vital_sign_threshold_config`;
CREATE TABLE `tb_vital_sign_threshold_config` (
  `sign_threshold_id` varchar(32) NOT NULL COMMENT '体征配置标识',
  `vital_sign_itme` varchar(50) NOT NULL COMMENT '生命体征科目',
  `sign_low_value` varchar(20) NOT NULL COMMENT '体征下限值',
  `sign_up_value` varchar(20) NOT NULL COMMENT '体征上限值',
  `sign_level` int(11) NOT NULL COMMENT '阶段级别>=1 and <=10,5 默认为正常阶段',
  `up_level_ID` varchar(32) DEFAULT NULL COMMENT '上级体征id,根默认为空',
  `sign_area_name` varchar(64) DEFAULT NULL COMMENT '区间名称',
  `sign_area_color` varchar(128) DEFAULT NULL COMMENT '区间颜色,使用16进制:#00FF00',
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sign_threshold_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生命体征阈值配置';

-- ----------------------------
-- Table structure for tb_volunteer_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_volunteer_info`;
CREATE TABLE `tb_volunteer_info` (
  `volunteer_id` varchar(32) NOT NULL COMMENT 'volunteer_id',
  `volunteer_name` varchar(20) DEFAULT NULL COMMENT '志愿者姓名',
  `idcard_no` varchar(32) DEFAULT NULL COMMENT '身份证',
  `sex` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `picture` longblob COMMENT '员工照片',
  `photo` varchar(100) DEFAULT NULL COMMENT '照片',
  `contact_tel` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `area_code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `area_name` varchar(150) DEFAULT NULL COMMENT '区域名称',
  `contact_address` varchar(200) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL COMMENT '电子邮箱',
  `degree` varchar(8) DEFAULT NULL COMMENT '学历',
  `volunteer_type` varchar(10) DEFAULT NULL COMMENT '社工类别,志愿者类别',
  `marital_status` varchar(32) DEFAULT NULL COMMENT '婚姻状况',
  `native_place` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `posotion` varchar(32) DEFAULT NULL COMMENT '职位',
  `occupation` varchar(20) DEFAULT NULL COMMENT '职业',
  `join_dt` varchar(10) DEFAULT NULL COMMENT '参加社工活动日期,加入日期',
  `integration` decimal(10,2) DEFAULT NULL COMMENT '志愿者积分',
  `meno` varchar(200) DEFAULT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '用户登录id',
  `useraccount` varchar(30) DEFAULT NULL COMMENT '用户登录账号',
  `valid_flag` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `depart_code` varchar(200) DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿者信息';

-- ----------------------------
-- Table structure for tb_volunt_haircut
-- ----------------------------
DROP TABLE IF EXISTS `tb_volunt_haircut`;
CREATE TABLE `tb_volunt_haircut` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `haircut` varchar(4) DEFAULT NULL COMMENT '剪发',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='义工剪发';

-- ----------------------------
-- Table structure for tb_wash_dress
-- ----------------------------
DROP TABLE IF EXISTS `tb_wash_dress`;
CREATE TABLE `tb_wash_dress` (
  `ID_` varchar(32) NOT NULL COMMENT '行标识',
  `elder_code` varchar(32) DEFAULT NULL COMMENT '老人编码',
  `date_` varchar(10) DEFAULT NULL COMMENT '日期',
  `commit_tm` varchar(6) DEFAULT NULL COMMENT '提交时间',
  `finish_time` varchar(6) DEFAULT NULL COMMENT '完成时间',
  `service_item` varchar(20) DEFAULT NULL COMMENT '服务项目',
  `work_result` varchar(10) DEFAULT NULL COMMENT '工作结果',
  `is_out` varchar(200) DEFAULT NULL COMMENT '外出',
  `completer` varchar(25) DEFAULT NULL COMMENT '完成人',
  `major_concern` varchar(200) DEFAULT NULL COMMENT '关注事项',
  `update_time` datetime DEFAULT NULL,
  `institution_id` varchar(32) DEFAULT NULL,
  `valid_flag` varchar(32) DEFAULT NULL,
  `operate_man` varchar(120) DEFAULT NULL,
  `operate_reason` varchar(200) DEFAULT NULL,
  `task_exec_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='起床梳洗';

-- 订单
drop table if exists tb_pay_order;
create table tb_pay_order
(
   order_id             varchar(32) not null comment '订单id',
   order_code           varchar(32) comment '订单编号',
   order_name           varchar(20) comment '订单人',
   order_phone          varchar(15) comment '订单人手机号',
   order_time           datetime comment '下单时间',
   order_amount         decimal(10,2) comment '订单金额',
   fact_pay_amount      decimal(10,2) comment '实付金额',
   discount_amount      decimal(10,2) comment '优惠金额',
   order_status         varchar(20) comment '订单状态',
   order_type           varchar(20) comment '订单类型',
   order_type_name      varchar(50) comment '订单类型名称',
   seller_code          varchar(20) comment '商家编号',
   seller_name          varchar(128) comment '商家名称',
   order_desc           varchar(100) comment '订单描述',
   memo                 varchar(200),
   pay_trade_id         varchar(32) comment '支付交易号',
   bill_no              varchar(32) comment '单据编号',
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构id',
   primary key (order_id)
);
alter table tb_pay_order comment '订单';


-- 订单明细
drop table if exists tb_pay_order_detail;
create table tb_pay_order_detail
(
   order_detail_id      varchar(32) not null comment '订单条目id',
   order_id             varchar(32) comment '订单id',
   goods_type           varchar(20) comment '订单类型',
   goods_code           national varchar(32) comment '物品代码',
   goods_name           national varchar(200) comment '物品名称',
   goods_number         int comment '订单物品数量',
   goods_price          numeric(16,2) comment '物品单价',
   goods_spec           varchar(128) comment '商品规格',
   goods_amount         decimal(10,2) comment '商品合计金额',
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构id',
   primary key (order_detail_id)
);
alter table tb_pay_order_detail comment '订单明细';

-- 支付交易流水
DROP TABLE IF EXISTS `tb_pay_trading_flow`;
CREATE TABLE `tb_pay_trading_flow` (
  `out_trade_no` varchar(32) NOT NULL COMMENT '商户订单号',
  `order_id` varchar(32) NOT NULL COMMENT '订单主键',
  `body` varchar(127) DEFAULT NULL COMMENT '商品描述',
  `pay_desc` varchar(127) DEFAULT NULL COMMENT '附加信息',
  `pay_amount` decimal(10,2) DEFAULT NULL COMMENT '交费金额',
  `pay_platform` varchar(64) DEFAULT NULL COMMENT '支付平台',
  `pay_type` varchar(32) DEFAULT NULL COMMENT '支付方式,扫卡支付、扫码支付',
  `app_code` varchar(50) DEFAULT NULL COMMENT '应用编码',
  `mch_id` varchar(32) DEFAULT NULL COMMENT '商户号',
  `app_id` varchar(32) DEFAULT NULL COMMENT '应用ID',
  `secret_key` varchar(2048) DEFAULT NULL COMMENT '秘钥',
  `mch_create_ip` varchar(16) DEFAULT NULL COMMENT '终端ip',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '平台订单号',
  `pay_time_start` varchar(14) DEFAULT NULL COMMENT '支付起始时间',
  `pay_time_over` varchar(14) DEFAULT NULL COMMENT '支付结束时间',
  `pay_result` varchar(8) DEFAULT NULL COMMENT '支付结果，0：支付成功，1:支付失败,2：退款失败，3：退款成功',
  `pay_result_desc` varchar(127) DEFAULT NULL COMMENT '支付结果说明',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`out_trade_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付交易流水';

drop table if exists tb_sys_feedback;
CREATE TABLE `tb_sys_feedback` (
  `feedback_id` varchar(32) NOT NULL COMMENT '反馈记录id',
  `userId` varchar(32) DEFAULT NULL COMMENT '用户登录id',
  `user_name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `feedback_time` datetime DEFAULT NULL COMMENT '反馈时间',
  `feedback_content` varchar(600) DEFAULT NULL COMMENT '反馈内容',
  `app_type` varchar(20) DEFAULT NULL COMMENT '应用类型',
  `terminal_type` varchar(20) DEFAULT NULL COMMENT '评价终端类型, iOS,android,ipad',
  `contact_tel` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `feedback_images` varchar(1000) DEFAULT NULL COMMENT '反馈图片,多张逗号分隔',
  `memo` varchar(200) DEFAULT NULL,
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) NOT NULL COMMENT '入职机构id',
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='意见反馈';

-- ----------------------------
-- View structure for view_discharge_customer
-- ----------------------------
DROP VIEW IF EXISTS `view_discharge_customer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`zhyl`@`%` SQL SECURITY DEFINER VIEW `view_discharge_customer` AS select `a`.`elder_code` AS `elder_code`,`a`.`institution_id` AS `institution_id` from `tb_elder_discharge_info` `a` where ((ifnull(`a`.`valid_flag`,'0') <> 1) and isnull(`a`.`out_dt`)) ;

-- ----------------------------
-- View structure for view_serviceplan_customer
-- ----------------------------
DROP VIEW IF EXISTS `view_serviceplan_customer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`zhyl`@`%` SQL SECURITY DEFINER VIEW `view_serviceplan_customer` AS select `a`.`elder_code` AS `elder_code`,`a`.`institution_id` AS `institution_id` from `tb_serviceplan` `a` where ((ifnull(`a`.`valid_flag`,'0') <> 1) and (`a`.`business_type` = '1') and (`a`.`status` = '1')) group by `a`.`elder_code` ;

-- ----------------------------
-- View structure for view_valid_customer
-- ----------------------------
DROP VIEW IF EXISTS `view_valid_customer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`zhyl`@`%` SQL SECURITY DEFINER VIEW `view_valid_customer` AS select `a`.`elder_code` AS `elder_code`,`a`.`institution_id` AS `institution_id` from `view_discharge_customer` `a` union select `a`.`elder_code` AS `elder_code`,`a`.`institution_id` AS `institution_id` from `view_serviceplan_customer` `a` ;

SET FOREIGN_KEY_CHECKS=1;