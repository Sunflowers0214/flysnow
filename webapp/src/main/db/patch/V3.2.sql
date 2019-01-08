-- 新增菜单 服务类别设置
insert into wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('fwlbsz','服务类别设置','set/serviceitem/jsp/servicecategoryMan.jsp','3','yhxtsz','system/yhxtsz/fwlbsz','系统管理/系统设置/服务类别设置','8','N','PC','PC','fu wu lei bie she zhi','FWLBSZ');

-- 表 服务类别
CREATE TABLE ec_business_v3_test.`tb_service_category` (
  `service_category_code` INT(20) NOT NULL AUTO_INCREMENT COMMENT '服务类别编码',
  `service_category_name` VARCHAR(50) DEFAULT NULL COMMENT '服务类别',
  `business_type` CHAR(1) DEFAULT NULL COMMENT '业务类型',
  `maintenance_type` CHAR(1) DEFAULT NULL COMMENT '维护类型',
  `valid_flag` VARCHAR(4) DEFAULT NULL,
  `institution_id` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY (`service_category_code`)
) ENGINE=INNODB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='服务项的类别,从字典移植过来';

-- 服务类别 默认值
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('1','医疗护理','0','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('2','个人卫生','0','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('3','常规照顾','0','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('4','康复护理','0','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('5','日常清洁','0','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('6','生活状况','0','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('11','生活照料','1','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('12','非治疗性照护','1','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('13','风险防范','1','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('14','功能维护','1','0','0','0');
insert into ec_business_v3_test.`tb_service_category` (`service_category_code`, `service_category_name`, `business_type`, `maintenance_type`, `valid_flag`, `institution_id`) values('21','送餐','2','0','0','0');

-- 删除表
-- DROP TABLE ec_business_v3_test.tb_care_record_info;

-- 接口
insert into ec_business_v3_test.`tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) values('b5bf523d54a34cbd98d3a0e57083b2cb','OrderDinner','订餐','phone','query','queryShoppingItems','查询总数','customer','elderOrderDinnerService','queryShoppingItems',NULL,NULL,NULL,'0','1001');
insert into ec_business_v3_test.`tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) values('45ef523d54a34cbd98d3a0e57083b2cf','OrderDinner','订餐','iPhone','query','queryFoodInfo','查询餐品详细信息','customer','elderOrderDinnerService','queryFoodInfo','查询餐品详细信息','查询餐品详细信息',NULL,'0','1011');
insert into ec_business_v3_test.`tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) values('1dc06d7a7941457da71affe86a25c641','OrderDinner','订餐模块','phone','query','deliveryCompletion','查询完成订单','waiter','orderService','queryDeliveryCompletion',NULL,NULL,NULL,'0','100301');
insert into ec_business_v3_test.`tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) values('de5b12450af24c598ab4dbd298208e08','OrderDinner','订餐模块','iPhone','query','deliveryCompletion','查询完成订单','waiter','orderService','queryDeliveryCompletion',NULL,NULL,NULL,'0','100311');

-- 修改护理表 增加执行id
ALTER TABLE ec_business_v3_test.tb_chg_urinethroat ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_change_urinbag ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_chg_stomackthroat ADD task_exec_id VARCHAR(32) DEFAULT NULL ;
ALTER TABLE ec_business_v3_test.tb_volunt_haircut ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_trim_nails ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_pac_mouth_care ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_bath_care ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_denture_care ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_pcw_dress_care ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_wash_dress ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_chg_prone_position ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_general_in ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_general_out ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_change_diapers ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_vital_sign ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_tubefeed_in ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_life_satus ADD task_exec_id VARCHAR(32) DEFAULT NULL;
ALTER TABLE ec_business_v3_test.tb_bedclothes ADD task_exec_id VARCHAR(32) DEFAULT NULL;

-- pad端菜单改变
UPDATE wooh_basic_v3_test.t_sys_menu SET MENUNAME = '协助就餐' WHERE MENUCODE = 'ptyy';
UPDATE wooh_basic_v3_test.t_sys_menu SET MENUNAME = '鼻饲' WHERE MENUCODE = 'gsyy';
UPDATE wooh_basic_v3_test.t_sys_menu SET MENUNAME = '日常清洁' WHERE MENUCODE = 'wcjj';
UPDATE wooh_basic_v3_test.t_sys_menu SET MENUNAME = '日常清洁' WHERE MENUCODE = 'wcjjs';
UPDATE wooh_basic_v3_test.t_sys_menu SET MENUNAME = '日常清洁' WHERE MENUCODE = 'wcjj_ns';

-- 结算表 结算时间类型
ALTER TABLE ec_business_v3_test.tb_balance MODIFY COLUMN prov_balance_date DATETIME;
-- 结算表 收款人
ALTER TABLE ec_business_v3_test.tb_balance ADD COLUMN payee VARCHAR(20) COMMENT '收款人';

-- 充值记录
DROP TABLE IF EXISTS ec_business_v3_test.tb_recharge_record;
CREATE TABLE ec_business_v3_test.tb_recharge_record
(
   recharge_record_id   NATIONAL VARCHAR(32) NOT NULL COMMENT 'recharge_record_id',
   recharge_record_code VARCHAR(20) COMMENT '流水号code',
   recharge_type        CHAR(1) COMMENT '充支类型 0充值   1支出',
   elder_code           NATIONAL VARCHAR(32) COMMENT '老人编码',
   recharger            NATIONAL VARCHAR(32) COMMENT '充值人',
   cash_money           DECIMAL(10,2) COMMENT '现金账户-金额',
   deposit_money        DECIMAL(10,2) COMMENT '押金账户-金额',
   recharge_money       DECIMAL(10,2) COMMENT '充值金额',
   recharge_time        DATETIME COMMENT '充值时间',
   payee                VARCHAR(20) COMMENT '收款人',
   card_number          NATIONAL VARCHAR(16) COMMENT '卡号',
   STATUS               NATIONAL VARCHAR(30) COMMENT '状态',
   valid_flag           VARCHAR(4) COMMENT '是否有效',
   create_time          DATETIME COMMENT '创建时间',
   update_time          DATETIME COMMENT '更新时间',
   operate_man          VARCHAR(120) COMMENT '操作人',
   operate_reason       VARCHAR(200) COMMENT '操作原因',
   memo                 VARCHAR(200) COMMENT '备注',
   institution_id       VARCHAR(32) COMMENT '机构id',
   PRIMARY KEY (recharge_record_id)
);

ALTER TABLE ec_business_v3_test.tb_recharge_record COMMENT '账户充支记录';

-- 充值支付明细
DROP TABLE IF EXISTS ec_business_v3_test.tb_recharge_payment;
CREATE TABLE ec_business_v3_test.`tb_recharge_payment` (
  `recharge_payment_id` VARCHAR(32) NOT NULL COMMENT '明细id',
  `payment_type` VARCHAR(32) DEFAULT NULL COMMENT '付款方式',
  `money` DECIMAL(10,2) DEFAULT NULL COMMENT '金额',
  `institution_id` VARCHAR(32) DEFAULT NULL COMMENT '机构id',
  `recharge_record_id` VARCHAR(32) NOT NULL COMMENT '充值记录id',
  PRIMARY KEY (`recharge_payment_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8

-- 交账查询菜单
insert into wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('jzcx','交账查询','fm/statistic/jsp/handoverAccountMan.jsp','3','fycx','fm/fycx/jzcx','收退费管理/费用查询/交账查询','7','N','PC','PC','jiao zhang cha xun','JZCX');

-- 预约状态调整
update ec_business_v3_test.tb_applicant_info set status = '2' where status = '1';
update wooh_basic_v3_test.t_dict_item t set t.display_name = '待缴费' where t.DICT_ID = 'b4e1f9c6fd25437ca0be235f9486bf24' and t.fact_value = '1';
update wooh_basic_v3_test.t_dict_item t set t.display_name = '已预约' where t.DICT_ID = 'b4e1f9c6fd25437ca0be235f9486bf24' and t.fact_value = '2';

-- 预约
ALTER TABLE ec_business_v3_test.`tb_applicant_info` ADD COLUMN `applicant_amount_return`  decimal NULL COMMENT '退费金额' AFTER `applicant_operator`;
ALTER TABLE ec_business_v3_test.`tb_applicant_info` ADD COLUMN `room_bed`  varchar(200) NULL COMMENT '预订房间' AFTER `applicant_operator`;
update ec_business_v3_test.tb_applicant_info set room_bed = memo;

-- 人员职务
DELETE FROM wooh_basic_v3_test.t_dict where DICT_ID = '10460';
DELETE FROM wooh_basic_v3_test.t_dict_item where DICT_ID = '10460';

-- 套餐状态
INSERT INTO wooh_basic_v3_test.`t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('d38b8def96ab49c2bca0da3979175eb4', 'tczt', '套餐状态', NULL, '4', 'Y', '0', '0', 'TCZT', 'tao can zhuang tai', 'tb_dailycare_package', '1', NULL, '0', '0', 'Y');
INSERT INTO wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('c7f6d3933e4e4221ac43f970918d80d0', 'd38b8def96ab49c2bca0da3979175eb4', '保存', '1', '', NULL, '1', 'N', '0', '0', 'BC', 'bao cun', NULL, '1', '', '1');
INSERT INTO wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('b27e7686c1e843fe8ad11dab5ee7207b', 'd38b8def96ab49c2bca0da3979175eb4', '生效', '2', '', NULL, '2', 'N', '0', '0', 'SX', 'sheng xiao', NULL, '1', '', '1');
INSERT INTO wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('130ec440b0154c43954515daf46a7ff5', 'd38b8def96ab49c2bca0da3979175eb4', '作废', '3', '', NULL, '3', 'N', '0', '0', 'ZF', 'zuo fei', NULL, '1', '', '1');

-- 日间照料状态
INSERT INTO wooh_basic_v3_test.`t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('4f8692ea42f7433eacf56fb5f76bf509', 'dailycare_status', '日间照料状态', NULL, '3', 'Y', '0', '0', 'RJZLZT', 'ri jian zhao liao zhuang tai', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('d727d24b452a4d15a1b40991bc1f94f0', '4f8692ea42f7433eacf56fb5f76bf509', '保存', '1', '', NULL, '1', 'N', '0', '0', 'BC', 'bao cun', NULL, '1', '', '1');
INSERT INTO wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('01b269d7a1774eb78b3d7a35609ee8ba', '4f8692ea42f7433eacf56fb5f76bf509', '已登记', '2', '', '', '2', 'N', '0', '0', 'YDJ', 'yi deng ji', '2017-03-09', '1', '', '1');
INSERT INTO wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('07d028c1baab487a91642538ef06b7da', '4f8692ea42f7433eacf56fb5f76bf509', '已退托', '3', '', NULL, '3', 'N', '0', '0', 'YTT', 'yi tui tuo', NULL, '1', '', '1');

-- 客户状态
ALTER TABLE ec_business_v3_test.`tb_elder`
ADD COLUMN `care_level`  varchar(20) NULL AFTER `useraccount`,
ADD COLUMN `check_status`  varchar(4) NULL AFTER `care_level`;

-- 处理状态数据
update ec_business_v3_test.tb_elder set nurse_type = 0 where nurse_type is null;
update ec_business_v3_test.tb_elder set check_status = '7' where nurse_type='2';
update ec_business_v3_test.tb_elder s
set s.check_status = (select checkstatus from (SELECT t.elder_code,t.care_level,t.checkstatus FROM (SELECT * FROM ec_business_v3_test.tb_elder_discharge_info tt where IFNULL(tt.valid_flag, '0') != '1' ORDER BY tt.in_dt DESC) t GROUP BY t.elder_code ORDER BY t.in_dt DESC) tt where tt.elder_code = s.elder_code),
s.care_level = (select care_level from (SELECT t.elder_code, t.care_level, t.checkstatus FROM (SELECT * FROM ec_business_v3_test.tb_elder_discharge_info tt where IFNULL(tt.valid_flag, '0') != '1' ORDER BY tt.in_dt DESC) t GROUP BY t.elder_code ORDER BY t.in_dt DESC) tt where tt.elder_code = s.elder_code)
where s.nurse_type != '2';
update ec_business_v3_test.tb_elder set check_status = '1' where check_status is null;

-- 任务类型新增 特殊护理服务 (取消)
--insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('657bbdaad1b0481c801890ad55bc9542','fde2b048531948e6876f138c13b2945f','特殊护理服务','2','',NULL,'3','N','0','0','TSHLFW','te shu hu li fu wu',NULL,'1','','1');
-- 菜单 服务执行管理
insert into wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('glfwgl','护理任务管理','cs/servicemanage/jsp/careServiceManageMan.jsp','3','jgywgl','care/jgywgl/glfwgl','照护服务管理/机构业务管理/护理任务管理','1','N','PC','PC','hu li ren wu guan li','HLRWGL');
insert into wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('ygfwgl','服务执行管理','cs/servicemanage/jsp/employeeServiceManageMan.jsp','3','fwgl','care/fwgl/ygfwgl','照护服务管理/服务管理/服务执行管理','5','N','PC','PC','fu wu zhi hang guan li','FWZHGL');
-- 服务项
INSERT INTO ec_business_v3_test.`tb_service_item` (`service_item_id`, `business_type`, `serviceitem_category_code`, `service_item_name`, `service_item_code`, `working_hours`, `service_price`, `monthly_price`, `subsidy_type`, `maintenance_type`, `service_content`, `status`, `service_standards`, `valid_flag`, `create_time`, `update_time`, `operate_man`, `operate_reason`, `institution_id`) VALUES('cdf34fcaeaef11e7a0f90242ac111114','0','1','伤口换药','skhy_ns','0.45','10.00','50.00','0','0','伤口换药','1','','0','2017-12-26 18:56:07','2017-12-27 14:18:56','zhyl_admin','update','2');
INSERT INTO ec_business_v3_test.`tb_service_item` (`service_item_id`, `business_type`, `serviceitem_category_code`, `service_item_name`, `service_item_code`, `working_hours`, `service_price`, `monthly_price`, `subsidy_type`, `maintenance_type`, `service_content`, `status`, `service_standards`, `valid_flag`, `create_time`, `update_time`, `operate_man`, `operate_reason`, `institution_id`) VALUES('cdf34fcaeaef11e7a0f90242ac112224','0','1','用药记录','lryyjl_ns','0.45','10.00','50.00','0','0','用药记录','1','','0','2017-12-26 18:56:07','2017-12-27 14:18:56','zhyl_admin','update','2');
INSERT INTO ec_business_v3_test.`tb_service_item` (`service_item_id`, `business_type`, `serviceitem_category_code`, `service_item_name`, `service_item_code`, `working_hours`, `service_price`, `monthly_price`, `subsidy_type`, `maintenance_type`, `service_content`, `status`, `service_standards`, `valid_flag`, `create_time`, `update_time`, `operate_man`, `operate_reason`, `institution_id`) VALUES('cdf34fcaeaef11e7a0f90242ac113334','0','3','约束观察','ysgc','0.45','10.00','50.00','0','0','约束观察','1','','0','2017-12-26 18:56:07','2017-12-27 14:18:56','zhyl_admin','update','2');
DELETE FROM ec_business_v3_test.tb_service_item WHERE  service_item_name = '登记外诊'

-- 执行id
ALTER TABLE ec_business_v3_test.tb_restriction_observe ADD task_exec_id VARCHAR(32);
ALTER TABLE ec_business_v3_test.tb_en_woud_assessment ADD task_exec_id VARCHAR(32);
ALTER TABLE ec_business_v3_test.tb_en_wound_wash ADD task_exec_id VARCHAR(32);
ALTER TABLE ec_business_v3_test.tb_en_feed_medicine ADD task_exec_id VARCHAR(32);
ALTER TABLE ec_business_v3_test.tb_sys_event_dic ADD task_exec_id VARCHAR(32);
ALTER TABLE ec_business_v3_test.tb_sys_event_dic ADD service_task_id VARCHAR(32);

-- 修改菜单 关注信息 --> 异常处理
UPDATE wooh_basic_v3_test.t_sys_menu SET MENUNAME  = '异常处理' WHERE MENUCODE = 'gzsx';

ALTER TABLE ec_business_v3_test.`tb_fd_meal_diction` ADD COLUMN `is_recommend`  varchar(4) NULL COMMENT '是否推荐' AFTER `meno`;
update ec_business_v3_test.`tb_fd_meal_diction` set `is_recommend` = 'N';

-- 医嘱表
CREATE TABLE ec_business_v3_test.`tb_en_doctoradvice` (
  `advice_code` VARCHAR(32) NOT NULL,
  `medical_code` VARCHAR(32) NOT NULL,
  `drug_name` VARCHAR(32) DEFAULT NULL,
  `unit_dose` VARCHAR(10) DEFAULT NULL,
  `dose` FLOAT DEFAULT NULL,
  `frequency` INT(11) DEFAULT NULL,
  `drug_role` VARCHAR(50) DEFAULT NULL,
  `medicine_way` VARCHAR(10) DEFAULT NULL,
  `duration_medication` INT(11) DEFAULT NULL,
  `prescripiton_date` DATE DEFAULT NULL,
  `start_date` DATE DEFAULT NULL,
  `endDrug_date` DATE DEFAULT NULL,
  `note` VARCHAR(100) DEFAULT NULL,
  `update_time` DATETIME DEFAULT NULL COMMENT '更新时间',
  `institution_id` VARCHAR(32) DEFAULT NULL COMMENT '机构编码外键',
  `valid_flag` VARCHAR(32) DEFAULT NULL COMMENT '是否有效',
  `operate_reason` VARCHAR(32) DEFAULT NULL COMMENT '操作原因',
  `operate_man` VARCHAR(20) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`advice_code`,`medical_code`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='就诊医嘱记录'

-- 生命体征阈值配置
create table ec_business_v3_test.tb_vital_sign_threshold_config
(
   sign_threshold_id    varchar(32) not null comment '体征配置标识',
   vital_sign_itme      national varchar(50) not null comment '生命体征科目',
   sign_low_value       varchar(20) not null comment '体征下限值',
   sign_up_value        varchar(20) not null comment '体征上限值',
   sign_level           int not null comment '阶段级别>=1 and <=10,5 默认为正常阶段',
   up_level_ID          varchar(32) comment '上级体征id,根默认为空',
   sign_area_name       varchar(64) comment '区间名称',
   sign_area_color      varchar(128) comment '区间颜色,使用16进制:#00FF00',
   memo                 varchar(200),
   primary key (sign_threshold_id)
);

alter table ec_business_v3_test.tb_vital_sign_threshold_config comment '生命体征阈值配置';

TRUNCATE ec_business_v3_test.tb_vital_sign_threshold_config;
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('01f885366ac511e8a0f90242ac110004', 'up_blood', '60', '110', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('020983666ac511e8a0f90242ac110004', 'up_blood', '110', '140', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('021bc0d16ac511e8a0f90242ac110004', 'up_blood', '140', '300', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('023b0bc06ac511e8a0f90242ac110004', 'down_blood', '30', '70', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('025b4c126ac511e8a0f90242ac110004', 'down_blood', '70', '90', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('026d3d5e6ac511e8a0f90242ac110004', 'down_blood', '90', '160', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0280340a6ac511e8a0f90242ac110004', 'kfxt_ns', '1.1', '2.9', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('02919a166ac511e8a0f90242ac110004', 'kfxt_ns', '2.9', '3.9', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('02a376e76ac511e8a0f90242ac110004', 'kfxt_ns', '3.9', '6.1', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('02b63f516ac511e8a0f90242ac110004', 'kfxt_ns', '6.1', '11', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('02c80fd36ac511e8a0f90242ac110004', 'kfxt_ns', '11', '35', '7', 'vital_sign', '最高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('02db50446ac511e8a0f90242ac110004', 'chxt_ns', '3.9', '6.7', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('02ee57566ac511e8a0f90242ac110004', 'chxt_ns', '6.7', '9.4', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0305456a6ac511e8a0f90242ac110004', 'chxt_ns', '9.4', '11', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0316f3986ac511e8a0f90242ac110004', 'chxt_ns', '11', '55', '7', 'vital_sign', '最高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0328cce96ac511e8a0f90242ac110004', 'xycl_ns', '90', '95', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('033aa7456ac511e8a0f90242ac110004', 'xycl_ns', '95', '97', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('033aa7456ac511e8a0f90242ac110011', 'pulse', '60', '100', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('033aa7456ac511e8a0f90242ac110022', 'hxld_ns', '16', '20', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('034dbaa86ac511e8a0f90242ac110004', 'xycl_ns', '97', '100', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0360f5276ac511e8a0f90242ac110004', 'xtld_ns', '20', '50', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('03729fd96ac511e8a0f90242ac110004', 'xtld_ns', '50', '60', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('038964056ac511e8a0f90242ac110004', 'xtld_ns', '60', '100', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('039b4d436ac511e8a0f90242ac110004', 'xtld_ns', '100', '110', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('03ae74646ac511e8a0f90242ac110004', 'xtld_ns', '110', '270', '7', 'vital_sign', '最高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('03cacce96ac511e8a0f90242ac110004', 'hcr_khgl_tzgl_zf', '4', '15', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('03e078b86ac511e8a0f90242ac110004', 'hcr_khgl_tzgl_zf', '15', '25', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('03f372136ac511e8a0f90242ac110004', 'hcr_khgl_tzgl_zf', '25', '80', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0408cfb96ac511e8a0f90242ac110004', 'cltw', '35', '36', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('041bd5a26ac511e8a0f90242ac110004', 'cltw', '36', '37', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('042ed0256ac511e8a0f90242ac110004', 'cltw', '37', '38', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0441d8b66ac511e8a0f90242ac110004', 'cltw', '38', '42', '7', 'vital_sign', '最高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0453c4916ac511e8a0f90242ac110004', 'cltz', '10', '18.5', '1', 'vital_sign', '最低', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('04739afc6ac511e8a0f90242ac110004', 'cltz', '18.5', '23', '5', 'vital_sign', '正常', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('0487d3a66ac511e8a0f90242ac110004', 'cltz', '23', '25', '6', 'vital_sign', '偏高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('049afa996ac511e8a0f90242ac110004', 'cltz', '25', '28', '7', 'vital_sign', '最高', '#ff4500', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('fecc92be6add11e8a0f90242ac110004', '1', '35', '37', '5', 'twld_measure_way', '额探', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('fedf5ed16add11e8a0f90242ac110004', '2', '35.5', '37.4', '5', 'twld_measure_way', '口探', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('fef1a5d56add11e8a0f90242ac110004', '3', '35.7', '37.9', '5', 'twld_measure_way', '耳探', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('ff0397df6add11e8a0f90242ac110004', '4', '35', '37', '5', 'twld_measure_way', '腋探', '#008000', NULL);
INSERT INTO `ec_business_v3_test`.`tb_vital_sign_threshold_config` (`sign_threshold_id`, `vital_sign_itme`, `sign_low_value`, `sign_up_value`, `sign_level`, `up_level_ID`, `sign_area_name`, `sign_area_color`, `memo`) VALUES ('ff1a86de6add11e8a0f90242ac110004', '5', '36.2', '37.9', '5', 'twld_measure_way', '肛探', '#008000', NULL);

-- 运营统计菜单
DELETE FROM wooh_basic_v3_test.t_sys_menu WHERE MENUCODE = 'fwtjfx';
DELETE FROM wooh_basic_v3_test.t_sys_menu WHERE MENUCODE = 'fytj';
DELETE FROM wooh_basic_v3_test.t_sys_menu WHERE MENUCODE = 'khfx';
DELETE FROM wooh_basic_v3_test.t_sys_menu WHERE MENUCODE = 'ysbb';

INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES('fwtjfx','服务统计分析(fwtjfx)','crm/statisticsQuery/jsp/elderCareStatistics.jsp','3','yytjfx','statistics/yytjfx/fwtjfx','运营统计分析/统计分析/服务统计分析','4','N','PC','PC','fu wu yun ying fen xi','FWYYFX');
INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES('fytj','费用统计(fytj)','fm/statistic/jsp/costStatisticMan.jsp','3','yytjfx','statistics/yytjfx/fytj','运营统计分析/统计分析/费用统计','2','N','PC','PC','fei yong tong ji','FYTJ');
INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES('khfx','客户统计分析(khfx)','crm/statisticsQuery/jsp/ElderInformationStatistics.jsp','3','yytjfx','statistics/yytjfx/khfx','运营统计分析/统计分析/客户统计分析','3','N','PC','PC','lao ren tong ji','LRTJ');
INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES('ysbb','营收报表(ysbb)','fm/statistic/jsp/incomestatistic.jsp','3','yytjfx','statistics/yytjfx/ysbb','运营统计分析/统计分析/营收报表','1','N','PC','PC','ying shou bao biao','YSBB');
INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES('yytjfx','统计分析','#','2','statistics','statistics/yytjfx','运营统计分析/统计分析','1','Y','PC','PC','yun ying tong ji fen xi','YYTJFX');


-- 字典 充支
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('7fca22de7dd34aed8f436905f3d30dcf','fm_recharge_type','充支类型',NULL,'1','Y','0','0','CZLX','chong zhi lei xing','tb_recharge_record','1',NULL,'0','0','Y');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('c36cc20c0ee4472f9c99e5f5f1fc732a','7fca22de7dd34aed8f436905f3d30dcf','支出','1','',NULL,'2','N','0','0','ZC','zhi chu',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('ffcd0383f07e4586b8cbaac8e197dfba','7fca22de7dd34aed8f436905f3d30dcf','充值','0','',NULL,'1','N','0','0','CZ','chong zhi',NULL,'1','','1');

-- 体征排序
DELETE FROM t_dict_item WHERE dict_id = 'c5badec1fb9c4e478fe0453524b7d360';
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('136b77e4f083435cb7cb6cc7f51e4d10','c5badec1fb9c4e478fe0453524b7d360','空腹血糖(mmol/L)','kfxt_ns','http://192.168.7.252:7000/jpg/serviceSign/service_sign_view_icon_blood_sugar.png','','5','N','0','0','KFXT(MMOL/L)','kong fu xue tang (mmol/l)','2018-06-13','1','','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('6d861f63f49141abb88ed1b1ad53353d','c5badec1fb9c4e478fe0453524b7d360','血氧(%)','xycl_ns','http://192.168.7.252:7000/jpg/serviceSign/service_sign_view_icon_boold_oxygen.png','','4','N','0','0','XY(%)','xue yang (%)','2018-06-13','1','','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('80c07b295dc34a9ca0d2523607361d2f','c5badec1fb9c4e478fe0453524b7d360','血压(mmHg)','xymb_ns','http://192.168.7.252:7000/jpg/serviceSign/service_sign_view_icon_blood_pressure.png','','1','N','0','0','SSYG(MMHG)','shou suo ya gao (mmhg)','2018-03-13','1','','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('8951b4288a0f4fbf8d7812f7f38caff7','c5badec1fb9c4e478fe0453524b7d360','心率(bpm)','xtld_ns','http://192.168.7.252:7000/jpg/serviceSign/service_sign_view_icon_heart_rate.png','','2','N','0','0','XL(BPM)','xin lv (bpm)','2018-06-13','1','','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('981835ba8d4e41569ba0980c38178578','c5badec1fb9c4e478fe0453524b7d360','脂肪(%)','hcr_khgl_tzgl_zf','http://192.168.7.252:7000/jpg/serviceSign/service_sign_view_icon_fat.png','','8','N','0','0','ZF(%)','zhi fang (%)','2018-06-13','1','','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('98c38993ecab480598c973885c008efe','c5badec1fb9c4e478fe0453524b7d360','体温(℃)','cltw','http://192.168.7.252:7000/jpg/serviceSign/service_sign_view_icon_temperature.png','','3','N','0','0','TW()','ti wen ()','2018-06-13','1','','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('af52740eb06c460ab8946d38b77fab7a','c5badec1fb9c4e478fe0453524b7d360','体重(Kg)','cltz','http://192.168.7.252:7000/jpg/serviceSign/service_sign_view_icon_weight.png','','7','N','0','0','TC(KG)','ti chong (kg)','2018-06-13','1','','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('fac51112554c4feaab964e479a2eec0f','c5badec1fb9c4e478fe0453524b7d360','餐后血糖(mmol/L)','chxt_ns','http://192.168.7.252:7000/jpg/serviceSign/service_sign_view_icon_blood_sugar.png','','6','N','0','0','CHXT(MMOL/L)','can hou xue tang (mmol/l)','2018-06-13','1','','1');

UPDATE t_sys_menu SET FUNCENTRY = 'hcr/elder/jsp/enprescriptionDetail.jsp' WHERE MENUCODE ='yyjlcx';

-- 当日服务概况
insert into `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('drfwgk','当日服务概况','cs/servicemanage/jsp/serviceSurveyforDay.jsp','3','fwgl','care/fwgl/drfwgk','照护服务管理/服务管理/当日服务概况','1','N','PC','PC','dang ri fu wu gai kuang','DRFWGK');
-- 外诊记录
insert into wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('wzjl','外诊管理','hcr/elder/jsp/workinspection/ElderArchivesEnDiagnosisregistrationManage.jsp','3','jgywgl','care/jgywgl/wzjl','照护服务管理/机构业务管理/外诊管理','8','N','PC','PC','wai zhen guan li','WZGL');
-- 结算单查询
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES('jsdcx','结算单查询','fm/finance/jsp/balanceMan.jsp','3','sfgl','fm/sfgl/jsdcx','收退费管理/收费管理/结算单查询','5','N','PC','PC','jie suan dan cha xun','JSDCX');
--------------------------------------------------------------------------------------
-------------------------------------以上测试库已执行---------------------------------------
--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
UPDATE wooh_basic_v3_test.`t_dict_item` SET `item_id`='2b0293b5cd7f471abe5da571220e754e', `DICT_ID`='01673bd7261349cea0fce32e20f093fe', `display_name`='护理服务停止', `fact_value`='JJFW_TZ', `append_value`='', `super_item_id`=NULL, `sib_order`='11', `isleaf`='N', `display_flag`='0', `valid_flag`='0', `ITEM_SIMPLEPIN`='JJFWTZ', `ITEM_Spelling`='ju jia fu wu ting zhi', `updateTime`=NULL, `itemlevel`='1', `dictitemFullCode`='', `ORGID`='1' WHERE (`item_id`='2b0293b5cd7f471abe5da571220e754e');
---------------------------------------------------------------------------------------------------------------------------------------------
-- 活动 活动室

drop table if exists ec_business_v3_test.tb_activity_action;

drop table if exists ec_business_v3_test.tb_activity_evaluation;

drop table if exists ec_business_v3_test.tb_activity_evaluation_praise;

drop table if exists ec_business_v3_test.tb_activity_evaluation_reply;

drop table if exists ec_business_v3_test.tb_activity_info;

drop table if exists ec_business_v3_test.tb_activity_participator;

drop table if exists ec_business_v3_test.tb_activity_photo;

drop table if exists ec_business_v3_test.tb_activity_range_define;

drop table if exists ec_business_v3_test.tb_activity_range_obj;

drop table if exists ec_business_v3_test.tb_venue_info;

drop table if exists ec_business_v3_test.tb_venue_open_period;

drop table if exists ec_business_v3_test.tb_venue_subscribe;

drop table if exists ec_business_v3_test.tb_venue_subscribe_sum;

/*==============================================================*/
/* Table: tb_activity_action                                    */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_action
(
   activity_id          varchar(32) comment '活动id',
   activity_action_id   varchar(32) comment '活动操作id',
   action_user_id       varchar(32) comment '活动操作人Id',
   action_user_name     varchar(50) comment '活动操作人姓名',
   action_type          varchar(8) comment '活动操作类型, 1:喜欢,2:分享',
   action_time          datetime comment '活动操作时间',
   memo                 varchar(200),
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   depart_code          varchar(512)
);

alter table ec_business_v3_test.tb_activity_action comment '活动喜欢动作';

/*==============================================================*/
/* Table: tb_activity_evaluation                                */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_evaluation
(
   activity_evaluation_id varchar(32) not null comment '活动评价ID',
   activity_id          varchar(32) comment '活动id',
   evaluation_user_id   varchar(32) not null comment '评价用户id',
   evaluation_user_name varchar(50) comment '评价用户姓名',
   evaluation_content   varchar(1024) comment '评价内容',
   evaluation_star_level varchar(64) comment '评价满意度',
   evaluation_star_level_name varchar(50) comment '评价满意度名称',
   evaluation_label_titles varchar(128) comment '评价标签,多个使用英文逗号分隔',
   evaluation_time      datetime comment '评价时间',
   sign_status          varchar(2) comment '是否报名',
   evaluation_period    varchar(2) comment '评价活动阶段,1:报名中,2进行中,3:结束',
   terminal_type        varchar(10) comment '评价终端类型, iphone,android,ipad',
   activity_user_type   varchar(2) comment '活动对象类型:1：客户，2：员工，3：志愿者',
   praise_num           int comment '点赞数',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (activity_evaluation_id)
);

alter table ec_business_v3_test.tb_activity_evaluation comment '活动评价';

/*==============================================================*/
/* Table: tb_activity_evaluation_praise                         */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_evaluation_praise
(
   activity_prase_id    varchar(32) not null comment '评价点赞id',
   activity_evaluation_id varchar(32) comment '活动评价ID',
   evaluation_user_id   varchar(32) comment '评价用户id',
   evaluation_user_name varchar(50) comment '评价用户姓名',
   activity_prase_content varchar(50) comment '点赞内容,1:赞',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (activity_prase_id)
);

alter table ec_business_v3_test.tb_activity_evaluation_praise comment '活动评价点赞';

/*==============================================================*/
/* Table: tb_activity_evaluation_reply                          */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_evaluation_reply
(
   activity_evaluation_id varchar(32) comment '活动评价ID',
   reply_id             varchar(32) comment '评价回复id',
   reply_content        varchar(512) comment '评价回复内容',
   reply_user_id        varchar(32) comment '评价回复者id',
   reply_user_name      varchar(50) comment '评价回复者名字',
   reply_time           datetime comment '评价回复时间',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32)
);

alter table ec_business_v3_test.tb_activity_evaluation_reply comment '活动评价回复';

/*==============================================================*/
/* Table: tb_activity_info                                      */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_info
(
   activity_id          varchar(32) not null comment '活动id',
   activity_code        national varchar(13) comment '活动编号',
   activity_name        national varchar(128) comment '活动名称',
   activity_org_dept_code varchar(32) comment '筹办部门',
   activity_org_dept_name varchar(128) comment '筹办部门名称',
   activity_master      national varchar(20) comment '活动负责人',
   activity_beg_tm      datetime not null comment '活动开始时间',
   activity_end_tm      datetime not null comment '活动结束时间',
   activity_sub_beg_tm  datetime comment '活动预约开始时间',
   activity_sub_end_tm  datetime comment '活动预约结束时间',
   activity_type        varchar(2) comment '活动类型',
   activity_address     national varchar(50) comment '活动地点',
   master_tel           national varchar(18) comment '负责人电话',
   activity_abstract    national varchar(50) comment '活动简介',
   activity_detail      national varchar(200) comment '活动详情',
   activity_summary     national varchar(200) comment '活动总结',
   h5_address           national varchar(50) comment 'h5页面地址',
   release_user_id      varchar(32) comment '活动发布人id',
   release_user_name    varchar(50) comment '活动发布人姓名',
   release_time         datetime comment '活动发布时间',
   cancel_user_id       varchar(32) comment '活动取消人id',
   cancel_user_name     varchar(50) comment '活动取消人姓名',
   cancel_time          datetime comment '活动取消时间',
   referee_status       varchar(2) comment '是否被推荐',
   referee_user_id      varchar(32) comment '活动推荐人id',
   referee_user_name    varchar(50) comment '推荐人姓名',
   referee_time         datetime comment '推荐时间',
   status               national varchar(30) comment '状态',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   depart_code          varchar(512),
   primary key (activity_id)
);

alter table ec_business_v3_test.tb_activity_info comment '活动信息';

/*==============================================================*/
/* Table: tb_activity_participator                              */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_participator
(
   participator_id      national varchar(32) not null comment '报名行ID',
   activity_id          varchar(32) comment '活动id',
   activity_user_id     varchar(32) comment '活动对象ID',
   activity_user_name   varchar(50) comment '活动对象姓名',
   participator_type    varchar(8) comment '活动参与者类型',
   telephone            national varchar(18) comment '报名者电话',
   id_card              national varchar(18) comment '报名者身份证号',
   age                  int comment '年龄',
   sex                  varchar(10),
   address              national varchar(50) comment '报名者家庭住址',
   is_intention         national varchar(2) comment '是否意向客户',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (participator_id)
);

alter table ec_business_v3_test.tb_activity_participator comment '活动报名';

/*==============================================================*/
/* Table: tb_activity_photo                                     */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_photo
(
   photo_id             varchar(32) not null,
   photo_url            national varchar(100) not null comment '照片',
   photo_num            int comment '图片编号',
   fun_type             varchar(4) not null comment '业务模块:1:活动背景图片,2:活动评价图片,3:活动总结图片',
   fun_table            varchar(128) comment '业务所属表',
   fun_id               varchar(32) not null comment '业务ID',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (photo_id)
);

alter table ec_business_v3_test.tb_activity_photo comment '活动介绍图片';

/*==============================================================*/
/* Table: tb_activity_range_define                              */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_range_define
(
   range_define_id      varchar(32) not null,
   activity_id          varchar(32) comment '活动id',
   activity_user_type   varchar(2) comment '活动对象类型:1：客户，2：员工，3：志愿者',
   activity_range_type  varchar(2) comment '发布范围类型，10：老人全部，11：老人自定义，20：员工全部，21：员工自定义,30:志愿者全部，31：志愿者自定义',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (range_define_id)
);

alter table ec_business_v3_test.tb_activity_range_define comment '活动发布范围定义';

/*==============================================================*/
/* Table: tb_activity_range_obj                                 */
/*==============================================================*/
create table ec_business_v3_test.tb_activity_range_obj
(
   range_obj_id         varchar(32) not null,
   range_define_id      varchar(32),
   activity_code        national varchar(13) comment '活动编号',
   activity_user_id     varchar(32) comment '活动对象ID',
   activity_user_name   varchar(50) comment '活动对象姓名',
   activity_user_type   varchar(2) comment '活动对象类型:1：客户，2：员工，3：志愿者',
   activity_range_type  varchar(2) comment '发布范围类型，10：老人全部，11：老人自定义，20：员工全部，21：员工自定义,30:志愿者全部，31：志愿者自定义',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (range_obj_id)
);

alter table ec_business_v3_test.tb_activity_range_obj comment '活动发布范围对象';

/*==============================================================*/
/* Table: tb_venue_info                                         */
/*==============================================================*/
create table ec_business_v3_test.tb_venue_info
(
   venue_id             varchar(32) not null comment '场馆主键',
   venue_code           varchar(32) comment '场馆编号',
   venue_name           varchar(128) not null comment '场馆名称',
   responsible_dept     varchar(32) comment '责任部门',
   responsible_dept_name varchar(128) comment '责任部门名称',
   venue_beg_time       varchar(8) comment '场馆开放时间',
   venue_end_time       varchar(8) comment '场馆结束时间',
   venue_position       varchar(256) comment '活动室位置',
   venue_max_num        int comment '最大可用设施',
   venue_subscribe_descr varchar(1024) comment '预约说明',
   venue_subscribe_rule varchar(1024) comment '预约规则',
   venue_type           varchar(20) comment '活动室类型',
   status               national varchar(30) comment '状态',
   memo                 varchar(200),
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   depart_code          varchar(512),
   primary key (venue_id)
);

alter table ec_business_v3_test.tb_venue_info comment '场馆信息';

/*==============================================================*/
/* Table: tb_venue_open_period                                  */
/*==============================================================*/
create table ec_business_v3_test.tb_venue_open_period
(
   venue_period_id      varchar(32) not null comment '场馆开放时段id',
   venue_id             varchar(32) not null comment '场馆主键',
   venue_period_sn      smallint comment '开放时段序号',
   period_descr         varchar(256) comment '场馆预约时段描述',
   venue_beg_time       varchar(8) comment '场馆开放时间',
   venue_end_time       varchar(8) comment '场馆结束时间',
   venue_subscribe_num  int comment '可预约数',
   status               national varchar(30) comment '状态',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (venue_period_id)
);

alter table ec_business_v3_test.tb_venue_open_period comment '场馆开放时段';

/*==============================================================*/
/* Table: tb_venue_subscribe                                    */
/*==============================================================*/
create table ec_business_v3_test.tb_venue_subscribe
(
   venue_subscribe_id   varchar(32) not null comment '场馆预约ID',
   venue_period_id      varchar(32) not null comment '场馆开放时段id',
   subscribe_time       datetime not null comment '预约时间',
   subscribe_user_id    varchar(32) comment '场馆预约用户ID',
   subscribe_user_name  varchar(64) comment '场馆预约用户名称',
   activity_user_type   varchar(2) comment '活动对象类型:1：客户，2：员工，3：志愿者',
   memo                 varchar(200),
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (venue_subscribe_id)
);

alter table ec_business_v3_test.tb_venue_subscribe comment '场馆预约';

/*==============================================================*/
/* Table: tb_venue_subscribe_sum                                */
/*==============================================================*/
create table ec_business_v3_test.tb_venue_subscribe_sum
(
   subscribe_info_id    varchar(32) not null comment '预约情况id',
   venue_period_id      varchar(32) not null comment '场馆开放时段id',
   venue_code           varchar(32) comment '场馆编号',
   status               national varchar(30) comment '状态',
   subscribe_num        int not null comment '已预约人数',
   subscribe_date       date not null comment '预约日期',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (subscribe_info_id)
);

alter table ec_business_v3_test.tb_venue_subscribe_sum comment '场馆阶段预约统计';

-- 活动状态
DELETE FROM `wooh_basic_v3_test`.`t_dict_item` where DICT_ID = 'df17988067154d8182ff86720e549c62';
INSERT INTO `wooh_basic_v3_test`.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('23220aceed1c4b8c9689dff24bfe1dc4', 'df17988067154d8182ff86720e549c62', '已取消', '50', '', NULL, '5', 'N', '0', '0', 'YQX', 'yi qu xiao', NULL, '1', '', '1');
INSERT INTO `wooh_basic_v3_test`.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('2dac9a9c23c2468ba1f1fcfdb5acaba7', 'df17988067154d8182ff86720e549c62', '未发布', '10', '', '', '1', 'N', '0', '0', 'WFB', 'wei fa bu', '2018-06-14', '1', '', '1');
INSERT INTO `wooh_basic_v3_test`.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('4ec34ea6c0204b85a46e02d9181eac0d', 'df17988067154d8182ff86720e549c62', '已发布', '20', '', '', '2', 'N', '0', '0', 'YFB', 'yi fa bu', '2018-06-14', '1', '', '1');
INSERT INTO `wooh_basic_v3_test`.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('90e5c75422494564b7c1ced8bc1cd58b', 'df17988067154d8182ff86720e549c62', '进行中', '30', '', '', '3', 'N', '0', '0', 'JHZ', 'jin hang zhong', '2018-06-14', '1', '', '1');
INSERT INTO `wooh_basic_v3_test`.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('968280aade0e48f49a56d75cb83f1ec2', 'df17988067154d8182ff86720e549c62', '已结束', '40', '', NULL, '4', 'N', '0', '0', 'YJS', 'yi jie shu', NULL, '1', '', '1');

-- 满意度
insert into wooh_basic_v3_test.`t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('6b4072a231014226b237f2e30abcce78','activity_dissatisfy','不满意',NULL,'1','Y','0','0','BMY','bu man yi','tb_activity_evaluation','1',NULL,'0','0','Y');
insert into wooh_basic_v3_test.`t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('7f0bb71571744412bea2e3f286d54799','activity_satisfied','满意',NULL,'3','Y','0','0','MY','man yi','tb_activity_evaluation','1',NULL,'0','0','Y');
insert into wooh_basic_v3_test.`t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('ff3d7ffc94f94c8a84cb5fd8e94fc471','activity_commonly','一般',NULL,'2','Y','0','0','YB','yi ban','tb_activity_evaluation','1',NULL,'0','0','Y');

insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('39a53ac11b7f4a3c8d04fcaa64f5669e','6b4072a231014226b237f2e30abcce78','活动无趣','3','',NULL,'3','N','0','0','HDWQ','huo dong wu qu',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('69c6d4ac72d744d1be431480ac090f56','6b4072a231014226b237f2e30abcce78','环境不好','1','',NULL,'1','N','0','0','HJBH','huan jing bu hao',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('93564eee62384767a02aea7799b1dae2','6b4072a231014226b237f2e30abcce78','活动太累','4','',NULL,'4','N','0','0','HDTL','huo dong tai lei',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('a2aa04ce2e1248b1887cb21083de3839','6b4072a231014226b237f2e30abcce78','服务差','2','',NULL,'2','N','0','0','FWC','fu wu chai',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('5a8fc8fb17cf4870b6d9388021e9fada','7f0bb71571744412bea2e3f286d54799','有益身心','4','',NULL,'4','N','0','0','YYSX','you yi shen xin',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('73165ad9b21f452fadbcdd9cd3400df0','7f0bb71571744412bea2e3f286d54799','活动精彩','3','',NULL,'3','N','0','0','HDJC','huo dong jing cai',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('c01b2d7518d243d09ff771517dc8a48a','7f0bb71571744412bea2e3f286d54799','环境舒适','1','',NULL,'1','N','0','0','HJSS','huan jing shu shi',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('ce4ef7921f6045f98d563610231e825e','7f0bb71571744412bea2e3f286d54799','活动服务好','2','',NULL,'2','N','0','0','HDFWH','huo dong fu wu hao',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('15a22ca606b741ffb465dd1fd51dcd2c','ff3d7ffc94f94c8a84cb5fd8e94fc471','待改善','3','',NULL,'3','N','0','0','DGS','dai gai shan',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('77a0903bd65f45119a83f6d2cb52dd5a','ff3d7ffc94f94c8a84cb5fd8e94fc471','还可以','1','',NULL,'1','N','0','0','HKY','huan ke yi',NULL,'1','','1');
insert into wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('8a5e64e8847b40d49b9341b46c4dabb6','ff3d7ffc94f94c8a84cb5fd8e94fc471','凑合','2','',NULL,'2','N','0','0','CH','cou he',NULL,'1','','1');

-- 活动菜单
DELETE FROM wooh_basic_v3_test.t_sys_menu WHERE PARENTMENUCODE = 'hdgl';
INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('hdcx', '活动查询', 'sw/activity/jsp/activityinfoQuery.jsp', '3', 'hdgl', 'sozialarbeit/hdgl/hdcx', '社工管理/活动管理/活动查询', '5', 'N', 'PC', 'PC', 'huo dong cha xun', 'HDCX');
INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('hdswh', '活动室维护', 'sw/activity/jsp/venueinfoMan.jsp', '3', 'hdgl', 'sozialarbeit/hdgl/hdswh', '社工管理/活动管理/活动室维护', '2', 'N', 'PC', 'PC', 'huo dong shi wei hu', 'HDSWH');
INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('hdsyy', '活动室预约', 'sw/activity/jsp/venuesubscribeMan.jsp', '3', 'hdgl', 'sozialarbeit/hdgl/hdsyy', '社工管理/活动管理/活动室预约', '3', 'N', 'PC', 'PC', 'huo dong shi yu yue', 'HDSYY');
INSERT INTO wooh_basic_v3_test.`t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('shhdgl', '活动管理', 'sw/activity/jsp/activityinfoMan.jsp', '3', 'hdgl', 'sozialarbeit/hdgl/shhdgl', '社工管理/活动管理/活动管理', '1', 'N', 'PC', 'PC', 'huo dong guan li', 'HDGL');

INSERT INTO wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('228338af676e4a108d29d44eefbfa35c', '41e658b8a2b74039988140c5e58981d6', '员工', '6', '', NULL, '6', 'N', '0', '0', 'YG', 'yuan gong', NULL, '1', '', '1');
INSERT INTO wooh_basic_v3_test.`t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('6a7fb0a3954e48659b0f43963f612bae', '41e658b8a2b74039988140c5e58981d6', '志愿者', '7', '', NULL, '7', 'N', '0', '0', 'ZYZ', 'zhi yuan zhe', NULL, '1', '', '1');

-- 合同信息加部门code
ALTER TABLE tb_contract ADD depart_code VARCHAR(200);

-- 结算单加老人code
ALTER TABLE tb_balance ADD elder_code VARCHAR(32);
-- 服务执行记录 记录人
ALTER TABLE tb_service_task_exec ADD record_id VARCHAR(32);
ALTER TABLE tb_service_task_exec ADD record_name VARCHAR(20);
ALTER TABLE tb_service_task_exec ADD record_time DATETIME;

-- 结算日期
ALTER TABLE tb_renew_status ADD balance_period_end DATE COMMENT '结算日期';

-- 处理请假数据
update tb_elder_go_back a
set a.goout_dt = DATE_FORMAT(a.goout_dt, '%Y-%m-%d'),
	a.goout_tm=CONCAT(SUBSTR(REPLACE(a.goout_tm,':',''),1,2),':',SUBSTR(REPLACE(a.goout_tm,':',''),3,4)),
	a.projected_back_dt=DATE_FORMAT(a.projected_back_dt, '%Y-%m-%d'),
	a.projected_back_tm=CONCAT(SUBSTR(REPLACE(a.projected_back_tm,':',''),1,2),':',SUBSTR(REPLACE(a.projected_back_tm,':',''),3,4)),
	a.back_dt=DATE_FORMAT(a.back_dt, '%Y-%m-%d'),
	a.back_tm=CONCAT(SUBSTR(REPLACE(a.back_tm,':',''),1,2),':',SUBSTR(REPLACE(a.back_tm,':',''),3,4));



-- 缴费续费菜单名称改为	续费开单
UPDATE t_sys_menu SET MENUNAME = '续费开单' WHERE MENUCODE = 'qfcj';

-- 计费参数
ALTER TABLE ec_business_v3_test.`tb_institution_param_info`
DROP COLUMN `end_dt`,
CHANGE COLUMN `begin_dt` `meno`  varchar(200) NULL DEFAULT NULL COMMENT '开始日期' AFTER `param_value`;
update ec_business_v3_test.tb_institution_param_info set meno = '';

INSERT INTO ec_business_v3_test.tb_institution_param_info(`param_id`, `param_code`, `param_name`, `param_value`, `meno`, `valid_flag`, `update_time`, `operate_man`, `operate_reason`, `institution_id`)
VALUES (REPLACE(UUID(),'-',''), 'goOutTimeSet', '请假离开计数时间', '12:00', '请假离开时间早于此时间，当天算请假，反之，当天不算请假', '0', SYSDATE(), 'test1', 'insert', '5');
INSERT INTO ec_business_v3_test.tb_institution_param_info(`param_id`, `param_code`, `param_name`, `param_value`, `meno`, `valid_flag`, `update_time`, `operate_man`, `operate_reason`, `institution_id`)
VALUES (REPLACE(UUID(),'-',''), 'backTimeSet', '请假返回计数时间', '12:00', '请假返回时间晚于此时间，当天算请假，反之，当天不算请假', '0', SYSDATE(), 'test1', 'insert', '5');

ALTER TABLE ec_business_v3_test.`tb_elder_service_modify` CHANGE COLUMN `tb_elder_service_modify_id` `elder_service_modify_id`  varchar(32) COMMENT '老人服务等级变更id';

ALTER TABLE ec_business_v3_test.`tb_venue_subscribe` ADD COLUMN `subscribe_user_code`  varchar(32) NULL COMMENT '用户编码' AFTER `subscribe_user_id`;

update ec_business_v3_test.tb_interface_config t set t.inferface_explain = '/restful/upload_restful.action' where t.operation_para = 'uploadFileUrl';
update wooh_basic_v3_test.t_versionfunc t set t.address = '/restful/upload_restful.action' where t.versionfunckey = 'uploadFileUrl';
DROP TABLE IF EXISTS `t_user_data_value`;

CREATE TABLE wooh_basic_v3_test.`t_user_data_value` (
  `user_data_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  `data_type_code` varchar(32) NOT NULL,
  `data_value` varchar(1024) NOT NULL,
  PRIMARY KEY (`user_data_id`),
  UNIQUE KEY `role_id_data_type_code_index` (`role_id`,`data_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS ec_business_v3_test.`tb_dailycare_shuttle`;
CREATE TABLE ec_business_v3_test.`tb_dailycare_shuttle` (
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
-- 人员管理
ALTER TABLE ec_business_v3_test.`tb_employee_info` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_hr_employ_train` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_hr_employer_chg` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_hr_leave_record` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_hr_performance` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_hr_reward_punish` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 客服中心
ALTER TABLE ec_business_v3_test.`tb_crm_complaint_info` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_crm_complaint_handle` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

ALTER TABLE ec_business_v3_test.`tb_crm_follow_up` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_crm_visit_elder` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

ALTER TABLE ec_business_v3_test.`tb_registration` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_registration_visit` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 客户管理
ALTER TABLE ec_business_v3_test.`tb_elder` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 老人家属
ALTER TABLE ec_business_v3_test.`tb_elder_party`
DROP COLUMN `open_mobile`,
DROP COLUMN `moblie_password`,
CHANGE COLUMN `moblie_name` `useraccount`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动端用户名' AFTER `userId`;

-- 预约
ALTER TABLE ec_business_v3_test.`tb_applicant_info` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 评估
ALTER TABLE ec_business_v3_test.`tb_eva_task` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 日间照料
ALTER TABLE ec_business_v3_test.`tb_dailycare_package` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
ALTER TABLE ec_business_v3_test.`tb_dailycare_register` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 服务计划
ALTER TABLE ec_business_v3_test.`tb_serviceplan` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 服务任务
ALTER TABLE ec_business_v3_test.`tb_service_task` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 服务派遣
ALTER TABLE ec_business_v3_test.`tb_dispatch` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 客户请假
ALTER TABLE ec_business_v3_test.`tb_elder_go_back` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 老人入住信息
ALTER TABLE ec_business_v3_test.`tb_elder_discharge_info` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 服务变更
ALTER TABLE ec_business_v3_test.`tb_elder_service_modify` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 物品使用
ALTER TABLE ec_business_v3_test.`tb_goods_fee_rec` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 安全自查
ALTER TABLE ec_business_v3_test.`tb_self_inspection` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 政府安检
ALTER TABLE ec_business_v3_test.`tb_external_inspection` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 监控巡更
ALTER TABLE ec_business_v3_test.`tb_patrol_monitor_info` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 活动管理
ALTER TABLE ec_business_v3_test.`tb_activity_info` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 通知公告
ALTER TABLE ec_business_v3_test.`tb_notice_bulletin` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 捐赠信息
ALTER TABLE ec_business_v3_test.`tb_donation_info` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 志愿者
ALTER TABLE `tb_volunteer_info`
CHANGE COLUMN `photo_url` `photo`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片' AFTER `picture`,
ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 设备
ALTER TABLE ec_business_v3_test.`tb_sys_enquipment` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 设备维修
ALTER TABLE ec_business_v3_test.`tb_equipment_repair` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 仓库
ALTER TABLE ec_business_v3_test.`tb_re_warehouse` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 物品信息
ALTER TABLE ec_business_v3_test.`tb_re_goods` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 入库
ALTER TABLE ec_business_v3_test.`tb_re_entry_sheet` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 出库
ALTER TABLE ec_business_v3_test.`tb_re_outhouse_sheet` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 移库
ALTER TABLE ec_business_v3_test.`tb_re_transfer` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 库存
ALTER TABLE ec_business_v3_test.`tb_re_inventory` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 库存盘库
ALTER TABLE ec_business_v3_test.`tb_re_inventory_plan` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 康复计划
ALTER TABLE ec_business_v3_test.`tb_recure_program` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 服务卡
ALTER TABLE ec_business_v3_test.`tb_card_account` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 结算
ALTER TABLE ec_business_v3_test.`tb_balance` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 应收单
ALTER TABLE ec_business_v3_test.`tb_receivable` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;

-- 班次
ALTER TABLE ec_business_v3_test.`tb_sys_shift` ADD COLUMN `depart_code`  varchar(32) NULL AFTER `operate_reason`;
-- 排班规则
ALTER TABLE ec_business_v3_test.`tb_shift_arrange_rule_main` ADD COLUMN `depart_code` VARCHAR (32) NULL AFTER `operate_reason`;
-- 排班
ALTER TABLE ec_business_v3_test.`tb_Shift_arrange_main` ADD COLUMN `depart_code` VARCHAR (32) NULL AFTER `operate_reason`;

-- 活动人数
ALTER TABLE ec_business_v3_test.`tb_activity_info` ADD COLUMN `activity_num`  int(4) NULL AFTER `referee_time`;

-- 结算单添加elder_code,刷新遗留数据
UPDATE tb_balance
SET elder_code = (SELECT
     c.elder_code
   FROM tb_receivable c
     INNER JOIN tb_balance_receivable b
       ON b.receivable_id = c.receivable_id
   WHERE b.balance_id = tb_balance.balance_id
   AND c.institution_id = tb_balance.institution_id
   GROUP BY c.elder_code,b.balance_id)

-- 调整位置
UPDATE t_sys_menu SET FUNCENTRY = 'set/expense/jsp/InstitutionParamInfoMan.jsp' WHERE MENUCODE = 'jfcsss';



