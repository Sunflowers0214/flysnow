--初步评估新增活动能力
ALTER TABLE `tb_eva_task`
ADD COLUMN `self_care_ability`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动能力' AFTER `institution_id`;

--增加系统运营管理--客户意见反馈
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`, `validflag`) VALUES ('xtyygl', '运营管理', '#', '2', 'system', 'system/xtyygl', '系统管理/运营管理', '6', 'Y', 'PC', 'PC', 'yun ying guan li', 'YYGL', '0');
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`, `validflag`) VALUES ('khyjfk', '客户意见反馈', 'set/system/jsp/sysfeedbackMan.jsp', '3', 'xtyygl', 'system/xtyygl/khyjfk', '系统管理/运营管理/客户意见反馈', '1', 'N', 'PC', 'PC', 'ke hu yi jian fan kui', 'KHYJFK', '0');

-- 订单
DROP TABLE IF EXISTS `tb_pay_order`;
CREATE TABLE `tb_pay_order` (
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `order_type` varchar(20) DEFAULT NULL COMMENT '订单类型',
  `order_type_name` varchar(50) DEFAULT NULL COMMENT '订单名称',
  `bill_no` varchar(32) DEFAULT NULL COMMENT '单据编号',
  `order_code` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `order_desc` varchar(100) DEFAULT NULL COMMENT '订单描述',
  `order_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `fact_pay_amount` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  `order_name` varchar(20) DEFAULT NULL COMMENT '订单人',
  `order_phone` varchar(15) DEFAULT NULL COMMENT '订单人手机号',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `seller_code` varchar(20) DEFAULT NULL,
  `seller_name` varchar(128) DEFAULT NULL COMMENT '商家名称',
  `memo` varchar(200) DEFAULT NULL,
  `pay_trade_id` varchar(32) DEFAULT NULL COMMENT '支付交易号',
  `order_status` varchar(20) DEFAULT NULL COMMENT '订单状态',
  `valid_flag` varchar(4) DEFAULT NULL COMMENT '是否有效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `operate_man` varchar(120) DEFAULT NULL COMMENT '操作人',
  `operate_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `institution_id` varchar(32) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

-- 订单明细
drop table if exists tb_pay_order_detail;
create table tb_pay_order_detail
(
   order_detail_id      varchar(32) not null comment '订单条目id',
   order_id             varchar(32),
   goods_type           varchar(20) comment '订单类型',
   goods_code           national varchar(32) comment '物品代码',
   goods_name           national varchar(200) comment '物品名称',
   goods_number         int comment '订单物品数量',
   goods_price          numeric(16,2) comment '物品单价',
   goods_spec           varchar(128),
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

-- 版本修改
ALTER TABLE t_version ADD COLUMN versioncontent VARCHAR(1000) NULL COMMENT "版本更新内容";
ALTER TABLE t_version ADD COLUMN filename VARCHAR(50) NULL COMMENT "文件名称";
ALTER TABLE t_version ADD COLUMN isusing  VARCHAR(2) DEFAULT 'N' COMMENT "是否启用";
ALTER TABLE t_version MODIFY COLUMN createdate  DATETIME NULL COMMENT "创建时间";

-- app信息字典
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('fb73e9f96dab45719d38c1da69c9f6fe','app_info','移动端下载列表',NULL,'1','Y','0','0','YDDXZLB','yi dong duan xia zai lie biao ','无','1',NULL,'0','0','Y');
insert into `t_dict_item`(`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('139a1ba1b8084ac98264b64610c5cc9b','fb73e9f96dab45719d38c1da69c9f6fe','评估端','00130701','android,0',NULL,'8','N','0','0','PGD','ping gu duan ','2018-11-27','1',NULL,'1');
insert into `t_dict_item`(`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('4036b61f851341569fe19179e9694f11','fb73e9f96dab45719d38c1da69c9f6fe','客户端','00130801','android,0',NULL,'5','N','0','0','KHD','ke hu duan ','2018-11-27','1',NULL,'1');
insert into `t_dict_item`(`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('65dd5110510f436ca020afd80221465a','fb73e9f96dab45719d38c1da69c9f6fe','评估端','00130711','iphone,0',NULL,'4','N','0','0','PGD','ping gu duan ','2018-11-27','1',NULL,'1');
insert into `t_dict_item`(`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('6f9a91973ecd4c62a05704302d052d5b','fb73e9f96dab45719d38c1da69c9f6fe','家属端','00110211','iphone,0',NULL,'2','N','0','0','JSD','jia shu duan ','2018-11-27','1',NULL,'1');
insert into `t_dict_item`(`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('8a39c177288941dcb65c8bdb0f0a8407','fb73e9f96dab45719d38c1da69c9f6fe','家属端','00110201','android,0',NULL,'6','N','0','0','JSD','jia shu duan ','2018-11-27','1',NULL,'1');
insert into `t_dict_item`(`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('9fbe12cad2fb46bcb51b8982c6ea661a','fb73e9f96dab45719d38c1da69c9f6fe','服务员端','00110301','android,0',NULL,'7','N','0','0','FWYD','fu wu yuan duan ','2018-11-27','1',NULL,'1');
insert into `t_dict_item`(`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('aa9a7b280b254784a36d059fcfb87025','fb73e9f96dab45719d38c1da69c9f6fe','客户端','00130811','iphone,0',NULL,'1','N','0','0','KHD','ke hu duan ','2018-11-27','1',NULL,'1');
insert into `t_dict_item`(`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('f4586e6580f54ae686edb94a255aea85','fb73e9f96dab45719d38c1da69c9f6fe','服务员端','00110311','iphone,0',NULL,'3','N','0','0','FWYD','fu wu yuan duan ','2018-11-27','1',NULL,'1');

-- 订单收费统计菜单
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`, `validflag`) VALUES('ddsftj','订单收费统计','sas/statistic/jsp/orderFeeStatistics.jsp','3','yytjfx','statistics/yytjfx/ddsftj','运营统计分析/统计分析/订单收费统计','1','N','PC','PC','ding dan shou fei tong ji','DDSFTJ','0');

--增大服务时间日期
ALTER TABLE `tb_service_package_items`
MODIFY COLUMN `exec_day`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `exec_cycle`,
MODIFY COLUMN `exec_time`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `is_fixed_time`;

-- 全局参数
INSERT INTO `t_globalpar` (`globalparCode`, `globalparName`, `globalparValue`) VALUES('version_file_share_path_apk','apk移动安装包存放位置','smb://zsl:123456789@192.168.7.252/hecsp/');
INSERT INTO `t_globalpar` (`globalparCode`, `globalparName`, `globalparValue`) VALUES('version_file_share_path_ios','ios移动安装包存放位置','smb://zsl:123456789@192.168.7.252/hecsp/');
INSERT INTO `t_globalpar` (`globalparCode`, `globalparName`, `globalparValue`) VALUES('version_file_view_path_apk','安卓下载地址','/cecm/android/');
INSERT INTO `t_globalpar` (`globalparCode`, `globalparName`, `globalparValue`) VALUES('version_file_view_path_ios','ios-ipa下载地址','/cecm/iOS/');
INSERT INTO `t_globalpar` (`globalparCode`, `globalparName`, `globalparValue`) VALUES('version_file_view_path_ios_plist','ios-plist下载地址','https://www.hscpro.com/download/cecm/iOS/');

--意见反馈表
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

--接口类型字典项增加
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('8443d3c4207d4553bc02efa7b88c8d4f', 'e9de2081efa348a087823b2776f7ac0b', '评估端', '001307', NULL, NULL, '8', 'N', '0', '0', 'PGD', 'ping gu duan ', '2018-11-26', '1', NULL, '1');

-- 服务项目图片
ALTER TABLE tb_service_item ADD COLUMN service_item_image VARCHAR(255) NULL COMMENT "服务图片";


-- 订单类型
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES('6f5b20dc60274386ab33ae5292f2fd36','order_type','订单类型',NULL,'1','Y','0','0','DDLX','ding dan lei xing ','tb_pay_order','1',NULL,'0','0','Y');
DELETE from t_dict_item where DICT_ID = '6f5b20dc60274386ab33ae5292f2fd36';
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('4966f2db7d98463ba3eff6e31f1c52be','6f5b20dc60274386ab33ae5292f2fd36','预订费用','apply',NULL,NULL,'6','N','0','0','YDJL','yu ding jin lei ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('dfc71cd3gfsdfv4a8bd5cf33d6b14ae8','6f5b20dc60274386ab33ae5292f2fd36','押金费用','deposit',NULL,NULL,'2','N','0','0','PXFL','pei xun fei lei ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('a3896c8857024233a06f63a44aec0955','6f5b20dc60274386ab33ae5292f2fd36','账户充值','recharge',NULL,NULL,'8','N','0','0','XJZHCZL','xian jin zhang hu chong zhi lei ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('ac55a3335b84462c89cf4b4c1d5e852c','6f5b20dc60274386ab33ae5292f2fd36','预缴费用','renew',NULL,NULL,'7','N','0','0','YJKL','yu jiao kuan lei ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('ce0b1560b29e4ec5936954f452e6bcdd','6f5b20dc60274386ab33ae5292f2fd36','活动费用','activity',NULL,NULL,'1','N','0','0','HDFL','huo dong fei lei ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('d76bf0001f8042ed8fa30068a128c637','6f5b20dc60274386ab33ae5292f2fd36','商品费用','9',NULL,NULL,'9','N','0','0','SPFL','shang pin fei lei ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('dda2aa47544342a4897f1f6a10cd37c2','6f5b20dc60274386ab33ae5292f2fd36','应收费用','balance',NULL,NULL,'5','N','0','0','ZHFL','zhao hu fei lei ',NULL,'1',NULL,'1');

--用户意见反馈
UPDATE `t_sys_menu` SET `MENUCODE`='khyjfk', `MENUNAME`='用户意见反馈', `FUNCENTRY`='set/system/jsp/sysfeedbackMan.jsp', `MENULEVEL`='3', `PARENTMENUCODE`='xtyygl', `MENUFULLCODE`='system/xtyygl/khyjfk', `MENUFULLNAME`='系统管理/运营管理/用户意见反馈', `NODEORDER`='1', `ISLEAF`='N', `MENUTYPENAME`='PC', `MENUTYPECODE`='PC', `MENUSPELLING`='yong hu yi jian fan kui', `MENUSIMPLEPIN`='YHYJFK', `validflag`='0' WHERE (`MENUCODE`='khyjfk');

-- 服务执行记录是否已评价
ALTER TABLE tb_service_task_exec ADD COLUMN is_evaluate VARCHAR(1) DEFAULT '0' COMMENT '是否已评价';
-- 通话记录时长修改
ALTER TABLE tb_cs_record MODIFY talk_time DECIMAL(6,0) COMMENT '通话时长(秒）';


ALTER TABLE `t_sys_menu` ADD COLUMN `validflag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否有效' AFTER `MENUSIMPLEPIN`;

-- 删除活动多余字段
ALTER TABLE `tb_activity_info` DROP COLUMN `cost_type`;
ALTER TABLE `tb_activity_info` DROP COLUMN `is_examine`;
ALTER TABLE `tb_activity_info` DROP COLUMN `activity_category`;

-- 删除员工健康信息表
drop table if exists tb_hr_healthy_info;

