-- 是否展示PAD服务详情
INSERT INTO `t_globalpar` (`globalparCode`, `globalparName`, `globalparValue`) VALUES ('isShowPadDetail', '是否展示PAD服务详情', 'Y');

-- 呼叫业务类型
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('e444542b77ef4f4ca51aaf0a75b3c510', 'toDoBusType', '呼叫业务类型', NULL, '1', 'Y', '0', '0', 'HJYWLX', 'hu jiao ye wu lei xing ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('35452f7bdca54932a59b0e936d02c0d5', 'e444542b77ef4f4ca51aaf0a75b3c510', '服务工单', '3', NULL, NULL, '3', 'N', '0', '0', 'FWGD', 'fu wu gong dan ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('4b090701fc4b4339b42211c1422ce4cd', 'e444542b77ef4f4ca51aaf0a75b3c510', '客户投诉', '4', NULL, NULL, '4', 'N', '0', '0', 'KHTS', 'ke hu tou su ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('5c98b1c7d72f4a169ac2c4b9d5d59bcd', 'e444542b77ef4f4ca51aaf0a75b3c510', '咨询接待', '1', NULL, NULL, '1', 'N', '0', '0', 'ZXJD', 'zi xun jie dai ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('d724a162afcd4c0fa2f1062b5b343aa7', 'e444542b77ef4f4ca51aaf0a75b3c510', '客户服务登记', '2', NULL, NULL, '2', 'N', '0', '0', 'KHFWDJ', 'ke hu fu wu deng ji ', NULL, '1', NULL, '1');

-- 培训课程
ALTER TABLE `tb_train_course` ADD COLUMN `course_category`  varchar(20) NULL COMMENT '课程分类' AFTER `business_id`;
ALTER TABLE `tb_train_course` ADD COLUMN `course_level`  varchar(10) NULL COMMENT '课程级别' AFTER `course_category`;
ALTER TABLE `tb_train_course` ADD COLUMN `course_cost`  decimal(10,2) NULL COMMENT '课程费用' AFTER `course_level`;
ALTER TABLE `tb_train_course` CHANGE COLUMN `other1` `video_width`  int(11) NULL DEFAULT NULL COMMENT '视频宽度' AFTER `video_jpg`;
ALTER TABLE `tb_train_course` CHANGE COLUMN `other2` `video_height`  int(50) NULL DEFAULT NULL COMMENT '视频高度' AFTER `video_width`;

-- 课程学习
ALTER TABLE `tb_train_study_record` ADD COLUMN `pay_id`  varchar(50) NULL COMMENT '交费单id' AFTER `login_key`;
ALTER TABLE `tb_train_study_record` ADD COLUMN `pay_status`  varchar(1) NULL COMMENT '交费状态' AFTER `pay_id`;

-- 课程标签
drop table if exists tb_train_tag;
create table tb_train_tag(
   train_tag_id         varchar(32) not null comment '标签主键',
   course_id            varchar(32) comment '课程主键',
   tag_code             varchar(50) comment '标签编码',
   tag_name             varchar(100) comment '标签名称',
   valid_flag           varchar(4) comment '是否有效',
   primary key (train_tag_id)
);
alter table tb_train_tag comment '课程标签';

alter table tb_train_tag add constraint FK_Relationship_161 foreign key (course_id) references tb_train_course (course_id) on delete restrict on update restrict;

-- 课程分类
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('623383a3c0b14e19ba485e6433cbcf19', 'courseCategory', '课程分类', NULL, '9', 'Y', '0', '1', 'KCFL', 'ke cheng fen lei ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('1bf275e01a9045349e0cfc6a7d6907cd', '623383a3c0b14e19ba485e6433cbcf19', '标准化护理技能60项', '002', NULL, '0', '2', 'Y', '0', '0', 'BZHHLJN60X', 'biao zhun hua hu li ji neng 60xiang ', NULL, '1', '002', '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('37ed2069f4fa4dbf9eb34f5921e6112d', '623383a3c0b14e19ba485e6433cbcf19', '体征测量', '002003', NULL, '1bf275e01a9045349e0cfc6a7d6907cd', '3', 'N', '0', '0', 'TZCL', 'ti zheng ce liang ', NULL, '2', '002/002003', '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('4899daa5d56a4ae2baf8f9a1e1b0108c', '623383a3c0b14e19ba485e6433cbcf19', '自我提升和软技能', '001', NULL, '0', '1', 'N', '0', '0', 'ZWTSHRJN', 'zi wo ti sheng he ruan ji neng ', NULL, '1', '001', '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('86903fbca7ed4153bea97a1e81dd882b', '623383a3c0b14e19ba485e6433cbcf19', '扩展课程', '003', NULL, '0', '3', 'N', '0', '0', 'KZKC', 'kuo zhan ke cheng ', NULL, '1', '003', '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('a877de67153e485290390ac1231ee92c', '623383a3c0b14e19ba485e6433cbcf19', '清洁护理', '002001', NULL, '1bf275e01a9045349e0cfc6a7d6907cd', '1', 'N', '0', '0', 'QJHL', 'qing jie hu li ', NULL, '2', '002/002001', '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('ab04f6b1ff2f4e0e9bbf63a5f7b1fb79', '623383a3c0b14e19ba485e6433cbcf19', '刮痧拔罐 ', '002004', NULL, '1bf275e01a9045349e0cfc6a7d6907cd', '4', 'N', '0', '0', 'GSBG', 'gua sha ba guan ', NULL, '2', '002/002004', '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('c0f7960b40064fedb0e2f5e52f311f00', '623383a3c0b14e19ba485e6433cbcf19', '协助运动', '002002', NULL, '1bf275e01a9045349e0cfc6a7d6907cd', '2', 'N', '0', '0', 'XZYD', 'xie zhu yun dong ', NULL, '2', '002/002002', '1');

-- 学习视频筛选条件
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('076c8009380647e3ac9d1fa72962b27f', 'teachCourseSelect', '学习视频筛选条件', NULL, '2', 'Y', '0', '0', 'XXSPSXTJ', 'xue xi shi pin shai xuan tiao jian ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('1f43c616bfc1499ba20670767217dcdc', '076c8009380647e3ac9d1fa72962b27f', '收费方式', 'chargeMode', NULL, NULL, '2', 'N', '0', '0', 'SFFS', 'shou fei fang shi ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('b4938eadf4544414bbb9e587ba0b9a4f', '076c8009380647e3ac9d1fa72962b27f', '课程级别', 'courseLevel', NULL, NULL, '1', 'N', '0', '0', 'KCJB', 'ke cheng ji bie ', NULL, '1', NULL, '1');

-- 收费方式
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('3407724715a44947909f0451a3bb8224', 'chargeMode', '收费方式', NULL, '1', 'Y', '0', '0', 'SFFS', 'shou fei fang shi ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('2487ea77e62940bda9657d4580bcb1d9', '3407724715a44947909f0451a3bb8224', '收费', '1', NULL, NULL, '2', 'N', '0', '0', 'SF', 'shou fei ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('49e0f1880e454774bf6918b8e8a06024', '3407724715a44947909f0451a3bb8224', '免费', '0', NULL, NULL, '1', 'N', '0', '0', 'MF', 'mian fei ', NULL, '1', NULL, '1');

-- 课程级别
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('f1095c7751f54060959b56a69fa67bc5', 'courseLevel', '课程级别', NULL, '10', 'Y', '0', '0', 'KCJB', 'ke cheng ji bie ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('1da74cd42a824763af7cabe7a5e28e61', 'f1095c7751f54060959b56a69fa67bc5', '高级', '3', NULL, NULL, '3', 'N', '0', '0', 'GJ', 'gao ji ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('824d3b5d4d4047d7a5af8b67b1e76161', 'f1095c7751f54060959b56a69fa67bc5', '中级', '2', NULL, NULL, '2', 'N', '0', '0', 'ZJ', 'zhong ji ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('e1f6184389c741d4bcf6f59810ea13fe', 'f1095c7751f54060959b56a69fa67bc5', '初级', '1', NULL, NULL, '1', 'N', '0', '0', 'CJ', 'chu ji ', NULL, '1', NULL, '1');

-- 预定金 --> 预订金
UPDATE t_dict_item SET display_name = '预订金账户' WHERE item_id = 'd937de426d1b472db2ea7bf070aeca11';

-- 咨询接待添加 字典信息获取方式删除脏数据
DELETE FROM t_dict_item WHERE display_name = '狐狸王一';

-- 证书类型
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('770c43b3fa0b464684a8b94cf14bcc84', 'certificateType', '证书类型', NULL, '7', 'Y', '0', '0', 'ZSLX', 'zheng shu lei xing ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('770c43b3fa0b464684a8b94cf13efghy', '770c43b3fa0b464684a8b94cf14bcc84', '培训证书', '3', NULL, NULL, '0', 'Y', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('770c43b3fa0b464684a8b94khdfscsaa', '770c43b3fa0b464684a8b94cf14bcc84', '能力证书', '2', NULL, NULL, '0', 'Y', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL);

-- 作废无用菜单
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'hykgl'; -- 会员卡管理
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'fwzx'; -- 服务执行
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'bcgl'; -- 班次管理 
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'pbgz'; -- 排班规则
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'grwscx'; -- 个人卫生
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'ylhl'; -- 医疗护理
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'cgzg_ns'; -- 常规照顾
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'shzk_ns'; -- 生活状况
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'wcjj_ns'; -- 日常清洁
UPDATE t_sys_menu SET validflag = '1' WHERE MENUCODE = 'xtcsh'; -- 数据快速导入



-- 服务项目加部门code
ALTER TABLE tb_service_item ADD depart_code VARCHAR(200) NULL COMMENT '部门code';

-- ==========================以上的相关产品部分脚本，已在测试环境、嘉和养老云zhyl执行，项目脚本没有执行（2018-10-29）=-=========================================
-- 人员管理-员工档案加创建时间
ALTER TABLE `tb_employee_info`
ADD COLUMN `create_time`  datetime NULL DEFAULT NULL AFTER `valid_flag`;

-- 服务日期，服务时间加大
ALTER TABLE `tb_serviceplan_detail`
MODIFY COLUMN `exec_day`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `exec_cycle`,
MODIFY COLUMN `exec_time`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `is_fixed_time`;

-- 统计监管
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`, `validflag`) VALUES('tjjg','统计监管','crm/statisticsQuery/jsp/statisticalSupervision.jsp','3','yytjfx','statistics/yytjfx/tjjg','运营统计分析/统计分析/统计监管','1','N','PC','PC','tong ji jian guan','TJJG','0');

-- 费用中心
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`, `validflag`) VALUES('fwlb','费用类别','set/serviceitem/jsp/costtypeMan.jsp','3','sjcsh','system/sjcsh/fwlb','管理控制平台/基础数据初始化/费用类别','1','N','PC','PC','fei yong lei bie','FYLB','0');
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`, `validflag`) VALUES('fyzx','费用中心','set/serviceitem/jsp/costcenterMan.jsp','3','sjcsh','system/sjcsh/fyzx','管理控制平台/基础数据初始化/费用中心','2','N','PC','PC','fei yong zhong xin','FYZX','0');

CREATE TABLE `tb_cost_center` (
  `id` VARCHAR(32) NOT NULL,
  `spbm` VARCHAR(19) DEFAULT NULL COMMENT '编码',
  `spmc` VARCHAR(50) DEFAULT NULL COMMENT '名称',
  `type_id` VARCHAR(10) DEFAULT NULL COMMENT '类型',
  `slv` VARCHAR(10) DEFAULT NULL COMMENT '税率',
  `institution_id` VARCHAR(32) DEFAULT NULL,
  `valid_flag` VARCHAR(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8

CREATE TABLE `tb_cost_type` (
  `type_id` VARCHAR(32) NOT NULL,
  `type_code` VARCHAR(19) NOT NULL COMMENT '类别编码',
  `type_name` VARCHAR(50) DEFAULT NULL COMMENT '类别名称',
  `parent_code` VARCHAR(19) DEFAULT NULL COMMENT '物品父类别编码',
  `node_order` VARCHAR(5) DEFAULT NULL COMMENT '排序',
  `node_level` VARCHAR(2) DEFAULT NULL COMMENT '第几层',
  `isleaf` VARCHAR(4) DEFAULT NULL COMMENT '是否叶子结点',
  `institution_id` VARCHAR(32) NOT NULL,
  `valid_flag` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='费用类型'

--客户服务添加字段
ALTER TABLE tb_elder_service_recd ADD depart_code VARCHAR(200) NULL COMMENT '部门code';

-- 监管大屏
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`, `validflag`) VALUES('dpjg','监管大屏','sas/statistic/jsp/oldPensionDataAnalysis.jsp','3','yytjfx','statistics/yytjfx/dpjg','运营统计分析/统计分析/监管大屏','1','N','PC','PC','jian guan da ping','JGDP','0');
DELETE FROM t_sys_menu WHERE menucode = 'tjjg';
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`, `validflag`) VALUES('tjjg','统计监管','sas/statistic/jsp/statisticalSupervision.jsp','3','yytjfx','statistics/yytjfx/tjjg','运营统计分析/统计分析/统计监管','4','N','PC','PC','tong ji jian guan','TJJG','0');
-- 有效客户视图
CREATE VIEW view_discharge_customer(elder_code,institution_id)
 AS 
		SELECT a.elder_code,a.institution_id
		FROM tb_elder_discharge_info a
		WHERE IFNULL(a.valid_flag, '0') != 1
		AND a.out_dt IS NULL;
		
CREATE VIEW view_serviceplan_customer(elder_code,institution_id)
 AS 
		SELECT a.elder_code,a.institution_id
		FROM tb_serviceplan a
		WHERE IFNULL(a.valid_flag, '0') != 1
		AND a.business_type = '1'
		AND a.status = '1'
		GROUP BY a.elder_code;		
			
CREATE VIEW view_valid_customer(elder_code,institution_id)
AS 	SELECT a.elder_code,a.institution_id
	FROM view_discharge_customer a
	UNION
	SELECT a.elder_code,a.institution_id
	FROM view_serviceplan_customer a

-- 平台部门表新增字段
ALTER TABLE t_department ADD businessType VARCHAR(1) NULL COMMENT '业务类型';
ALTER TABLE t_department ADD location VARCHAR(50) NULL COMMENT '位置';
--新增字典部门业务类型
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES('0a6f1e603140436bbe0e28bfb2cf3567','business_type','组织单元',NULL,'1','Y','0','0','ZZDY','zu zhi dan yuan ','t_department','1',NULL,'0','0','Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('57dda21c12774694850ee0cba28a6cc8','0a6f1e603140436bbe0e28bfb2cf3567','职能单元','1',NULL,NULL,'1','N','0','0','ZNDY','zhi neng dan yuan ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('bee92f88f5f74e5cba65d49617851fe8','0a6f1e603140436bbe0e28bfb2cf3567','业务单元','2',NULL,NULL,'2','N','0','0','YWDY','ye wu dan yuan ',NULL,'1',NULL,'1');


-- 部门加区域
ALTER TABLE t_department ADD area_code VARCHAR(100) NULL COMMENT '区域编码';
ALTER TABLE t_department ADD area_name VARCHAR(150) NULL COMMENT '区域名称';


-- ==========================以上的相关产品部分脚本，已在测试环境、嘉和养老云zhyl执行，项目脚本没有执行（2018-10-29）=-=========================================




