-- ==============================================================
-- 培训课
-- ==============================================================
drop table if exists tb_train_course;
create table tb_train_course
(
   course_id            varchar(32) not null comment '视频主键',
   course_type          varchar(2) comment '课程类型,1:培训视频,2:学习视频',
   is_public            varchar(2) comment '是否公开，0不公开，1公开',
   course_name          varchar(50) comment '视频标题',
   course_content       varchar(100) not null comment '视频内容',
   resource_url         varchar(200) not null comment '附件地址',
   resource_size        varchar(50) comment '附件大小(KB)',
   video_jpg            varchar(200) comment '视频缩略图',
   video_time           varchar(50) comment '视频时长(秒)',
   read_count           int comment '浏览次数',
   business_id          varchar(32) comment '业务id',
   other1               varchar(50) comment '其他1',
   other2               varchar(50) comment '其他2',
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构id',
   primary key (course_id)
);

alter table tb_train_course comment '培训课程';
-- ==============================================================
-- 课程学习记录
-- ==============================================================
drop table if exists tb_course_study_record;
create table tb_course_study_record
(
   study_record_id      varchar(32) not null comment '学习记录主键',
   course_id            varchar(32) comment '视频主键',
   study_user_id        varchar(32) comment '学习用户id',
   study_time_position  varchar(50) comment '视频观看位置(秒)',
   other1               varchar(50) comment '其他1',
   other2               varchar(50) comment '其他2',
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构id',
   primary key (study_record_id)
);

alter table tb_course_study_record comment '课程学习记录';

alter table tb_course_study_record add constraint FK_Relationship_149 foreign key (course_id)
      references tb_train_course (course_id) on delete restrict on update restrict;

-- 工单状态1 已派遣更改为已派单
UPDATE `t_dict_item` SET `display_name`='已派单' WHERE (`item_id`='ae48df6f92524ba7a830b235f7f7f153');

-- 修改服务项要求字段长度
ALTER TABLE tb_service_item MODIFY COLUMN service_standards VARCHAR(1500) COMMENT '服务要求与标准';

-- 修改服务类型名称
UPDATE tb_service_category SET service_category_name = '其他护理服务' WHERE service_category_code = '22';
UPDATE tb_service_category SET service_category_name = '其他上门服务' WHERE service_category_code = '23';

--增加评估类型字典项
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('1b5be85eb394427b88581f42b3e00cb1', '24fbf373ea664037ac56b9141f01a475', '老人分级护理评估', '4', NULL, NULL, '4', 'N', '0', '0', 'LRFJHLPG', 'lao ren fen ji hu li ping gu ', NULL, '1', NULL, '1');

/*==============================================================*/
/* Table: 二维码维护                                          */
/*==============================================================*/
drop table if exists tb_qr_code;
create table tb_qr_code
(
   qr_code_id           varchar(32) comment '二维码主键',
   qr_title             varchar(50) comment '二维码标题',
   qr_describe          varchar(200) comment '二维码简介',
   qr_url               varchar(100) comment '二维码图片地址',
   memo                 varchar(200) comment '备注4',
   other1               varchar(50) comment '其他1',
   other2               varchar(50) comment '其他2',
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构id'
);

alter table tb_qr_code comment '二维码维护';

-- 增加商品编码
ALTER TABLE tb_re_goods ADD COLUMN spbm VARCHAR(50) COMMENT '商品编码';

ALTER TABLE tb_service_item ADD COLUMN slv VARCHAR(10) COMMENT '税率';
ALTER TABLE tb_service_item ADD COLUMN spbm VARCHAR(50) COMMENT '商品编码';

ALTER TABLE tb_expense_standard ADD COLUMN spbm VARCHAR(50) COMMENT '商品编码';

ALTER TABLE tb_service_package ADD COLUMN spbm VARCHAR(50) COMMENT '商品编码';

ALTER TABLE tb_receivable_deatil ADD COLUMN spbm VARCHAR(50) COMMENT '商品编码';

-- 合同新增字段
ALTER TABLE tb_elder_contract ADD COLUMN depart_id VARCHAR(32) COMMENT '部门编码';
ALTER TABLE tb_elder_contract ADD COLUMN depart_name VARCHAR(32) COMMENT '部门名称';

-- 收入统计
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES('srtj','营收报表','fm/statistic/jsp/incomestatistic-2.jsp','3','yytjfx','statistics/yytjfx/srtj','运营统计分析/统计分析/营收报表','1','N','PC','PC','shou ru tong ji','SRTJ');
-- 费用类型字典
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES('d6f5321c2cc74e719b558ddf45655f72','cost_type','收费类型',NULL,'1','Y','0','0','SFLX','shou fei lei xing ','tb_receivable_deatil','1',NULL,'0','0','Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('50467a053bf04840a6c68a351aa9bc39','d6f5321c2cc74e719b558ddf45655f72','固定月费用','GDYFY',NULL,NULL,'1','N','0','0','GDYFY','gu ding yue fei yong ','2018-09-12','1','GDYFY','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('5364569ade674c43acb995c079d43b89','d6f5321c2cc74e719b558ddf45655f72','其他费用','QTFY',NULL,NULL,'5','N','0','0','QTFY','qi ta fei yong ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('92e146ac18f6451da229b59a9def5603','d6f5321c2cc74e719b558ddf45655f72','其他月费用','QTYFY',NULL,NULL,'2','N','0','0','QTYFY','qi ta yue fei yong ','2018-09-12','1','QTYFY','1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('bd36c3fc2f054e79824638c9334c4568','d6f5321c2cc74e719b558ddf45655f72','物品费用','WPFY',NULL,NULL,'4','N','0','0','WPFY','wu pin fei yong ',NULL,'1',NULL,'1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES('c38ffd09279a494caad65213f442e61a','d6f5321c2cc74e719b558ddf45655f72','居家服务费用','JJFY',NULL,NULL,'3','N','0','0','JJFWFY','ju jia fu wu fei yong ','2018-09-12','1','JJFY','1');

-- 初步评估  入住区域部门id
ALTER TABLE tb_eva_task MODIFY COLUMN eva_verdict VARCHAR(32) COMMENT '入住区域部门id';

-- 员工
update tb_employee_info set contact_tel = phonenumber;
ALTER TABLE `tb_employee_info` DROP COLUMN `picture`;
ALTER TABLE `tb_employee_info` DROP COLUMN `phonenumber`;
ALTER TABLE `tb_employee_info` CHANGE COLUMN `idcardnumber` `idcard_no`  varchar(20);
ALTER TABLE `tb_employee_info` MODIFY COLUMN `major_domain`  varchar(200);
ALTER TABLE `tb_employee_info` ADD COLUMN `graduation_college`  varchar(200) NULL COMMENT '毕业院校' AFTER `degree_educate`;
ALTER TABLE `tb_employee_info` ADD COLUMN `work_unit`  varchar(100) NULL COMMENT '工作单位' AFTER `pretax_salary`;
ALTER TABLE `tb_employee_info` ADD COLUMN `idcard_photo`  varchar(255) NULL COMMENT '身份证照片（正反）' AFTER `photo`;

-- 培训
ALTER TABLE `tb_activity_info`
ADD COLUMN `cost_type`  varchar(2) NULL COMMENT '费用类型' AFTER `activity_num`,
ADD COLUMN `is_examine`  varchar(2) NULL AFTER `activity_cost`;

-- 报名状态
ALTER TABLE `tb_activity_participator`
ADD COLUMN `cost_type`  varchar(2) NULL AFTER `pay_amount`,
ADD COLUMN `participator_status`  varchar(2) NULL AFTER `pay_id`;

-- 餐品类型公用变私用
UPDATE  t_dict SET isCommon = 'N' WHERE dict_code = 'food_type';

-- 培训项目类别、培训班类别
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('6ab4f74a9cff4dd095756746ad517d2a', 'project_category', '培训项目类别', NULL, '4', 'Y', '0', '0', 'PXXMLB', 'pei xun xiang mu lei bie ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('8beb0eac27af4ea9a04de590ef1f19c5', 'train_class_type', '培训班类别', NULL, '5', 'Y', '0', '0', 'PXBLB', 'pei xun ban lei bie ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('8cb1247e3c504b2abbd9c28f70a35f96', '6ab4f74a9cff4dd095756746ad517d2a', '自费', '2', NULL, NULL, '2', 'N', '0', '0', 'ZF', 'zi fei ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('9a97f1c223cb42f8b5daccd0e498eca5', '8beb0eac27af4ea9a04de590ef1f19c5', '师资班', '2', NULL, NULL, '2', 'N', '0', '0', 'SZB', 'shi zi ban ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('b37bde9d716c45cb987fe79409e04243', '6ab4f74a9cff4dd095756746ad517d2a', '政府采购', '1', NULL, NULL, '1', 'N', '0', '0', 'ZFCG', 'zheng fu cai gou ', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('dd7e5edf3a3e419da1f5db96cf2c58fa', '8beb0eac27af4ea9a04de590ef1f19c5', '学员班', '1', NULL, NULL, '1', 'N', '0', '0', 'XYB', 'xue yuan ban ', NULL, '1', NULL, '1');

INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('bmqk', '报名情况查询', 'sw/trainactivity/jsp/trainactivityapply.jsp', '3', 'pxxx_sub', 'pxxx/pxxx_sub/bmqk', '培训管理/培训管理/报名情况查询', '2', 'N', 'PC', 'PC', 'bao ming qing kuang cha xun', 'BMQKCX');
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('pxgl', '培训管理', 'sw/trainactivity/jsp/trainactivityMan.jsp', '4', 'pxxx_sub', 'pxxx/pxxx_sub/pxgl', '培训管理/培训管理/培训管理', '1', 'N', 'PC', 'PC', 'pei xun guan li', 'PXGL');
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('pxxx', '培训管理', '#', '1', '0', 'pxxx', '培训管理', '9', 'Y', 'PC', 'PC', 'pei xun guan li', 'PXGL');
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('pxxx_sub', '培训管理', '#', '2', 'pxxx', 'pxxx/pxxx_sub', '培训管理/培训管理', '7', 'Y', 'PC', 'PC', 'pei xun guan li', 'PXGL');
INSERT INTO `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) VALUES ('spgl', '视频管理', 'sw/trainactivity/jsp/traincourseMan.jsp', '3', 'pxxx_sub', 'pxxx/pxxx_sub/spgl', '培训管理/培训管理/视频管理', '3', 'N', 'PC', 'PC', 'shi pin guan li', 'SPGL');
-- ==========================以上测试库已执行=-=========================================

-- 周菜单类型公用变私用
UPDATE  t_dict SET isCommon = 'N' WHERE dict_code = 'weekly_set_type';
-- ==========================以上测试库已执行=-=========================================
-- 员工表
ALTER TABLE `tb_employee_info` DROP COLUMN `personal_info_id`;
ALTER TABLE `tb_employee_info` ADD COLUMN `work_mode`  varchar(2) NULL COMMENT '工作模式' AFTER `service_state`;
ALTER TABLE `tb_employee_info` ADD COLUMN `teach_course`  varchar(255) NULL COMMENT '计划教授课程' AFTER `service_state`;

drop table if exists tb_cs_to_do;
drop table if exists tb_cs_record;
drop table if exists tb_cs_seat_info;
-- 客服坐席信息
create table tb_cs_seat_info
(
   cs_info_id           varchar(32) not null,
   employee_code        national varchar(32) comment '员工编码',
   cs_seat_name         varchar(50) comment '客服坐席名称',
   cs_ext_phone         varchar(15),
   cs_online_status     varchar(10),
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构id',
   depart_code          varchar(512) comment '数据权限:部门编码',
   primary key (cs_info_id)
);
alter table tb_cs_seat_info comment '客服坐席信息';

-- 客服通话记录
create table tb_cs_record
(
   tb_cs_call_rec_id    varchar(32) not null comment '客户服务记录',
   cs_info_id           varchar(32),
   employee_code        national varchar(32) comment '员工编码',
   employee_name        national varchar(20) comment '员工姓名',
   caller_name          char(10),
   elder_name           national varchar(20) comment '老人姓名',
   elder_code           national varchar(32) comment '老人编码',
   seat_phone_number    varchar(20) comment '坐席电话号码',
   cs_phone_number      varchar(20) comment '客户电话号码',
   talk_time            numeric(4,0) comment '通话时长(秒）',
   phone_status         varchar(10) comment '通话状态(通话中、挂断、呼叫中、呼叫保持、转接）',
   caller_type          varchar(10) comment '来电人类别',
   caller_type_name     varchar(20) comment '来电人类别名称',
   from_phone_number    char(10) comment '来自转接电话',
   from_transfer_name   varchar(20) comment '来自转接人的姓名',
   transfed_phone       varchar(20) comment '转接的电话号',
   transfed_name        varchar(20) comment '转到人的姓名',
   call_type            varchar(10) comment '呼叫类型, 0:接听，1：外拨',
   call_start_time      datetime comment '呼叫开始时间',
   call_over_time       datetime comment '呼叫结束时间',
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构id',
   depart_code          varchar(512) comment '数据权限:部门编码',
   primary key (tb_cs_call_rec_id)
);
alter table tb_cs_record comment '客服通话记录';

-- 客服待办事项
create table tb_cs_to_do
(
   tb_cs_to_do_id       varchar(32) not null,
   tb_cs_call_rec_id    varchar(32) comment '客户服务记录',
   to_do_bus_id         varchar(32),
   to_do_bus_type       varchar(20),
   to_do_bus_descr      varchar(512),
   to_do_bus_status     varchar(10),
   to_do_finished_time  datetime comment '待办解决时间',
   to_do_level          varchar(10) comment '待办事项紧急状态, 0:一般，1：紧急',
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构id',
   depart_code          varchar(512) comment '数据权限:部门编码',
   primary key (tb_cs_to_do_id)
);
alter table tb_cs_to_do comment '客服待办事项';

alter table tb_cs_record add constraint FK_Relationship_149 foreign key (cs_info_id)
      references tb_cs_seat_info (cs_info_id) on delete restrict on update restrict;

alter table tb_cs_to_do add constraint FK_Relationship_150 foreign key (tb_cs_call_rec_id)
      references tb_cs_record (tb_cs_call_rec_id) on delete restrict on update restrict;

INSERT INTO `t_interface_config` (`id`, `versionfunkey`, `name`, `service_object`, `operationtype`, `objtype`, `serviceid`, `address`, `service_name`, `service_method`, `logincheck`, `interface_person`, `remark`, `interface_status`) VALUES ('6bdf18a933e542a9917aebb8ab128b84', 'queryServiceItemListUrl', '查询服务项目名称列表', '001103', 'query', '01;11', '8076fe9526da11e6baec005056ac6d5d', '#', 'waiterService', 'queryServiceItemList', 'Y', NULL, 'queryServiceItemList', '0');

INSERT INTO `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) VALUES ('034f274f835d4f219b0f3c2f8fa79bf3', 'teach_course', '教授课程', NULL, '2', 'Y', '0', '0', 'JSKC', 'jiao shou ke cheng ', 't_dict', '1', NULL, '0', '0', 'Y');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('12ede038e83b435cb33b95aefd155d8f', '034f274f835d4f219b0f3c2f8fa79bf3', '3', '护理', NULL, NULL, '3', 'N', '0', '0', '3', '3', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('31eef16370b74b53908c7c01158762aa', '034f274f835d4f219b0f3c2f8fa79bf3', '5', '概论', NULL, NULL, '5', 'N', '0', '0', '5', '5', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('45f742fb221744bf933c757de212aaaf', '034f274f835d4f219b0f3c2f8fa79bf3', '4', '心理', NULL, NULL, '4', 'N', '0', '0', '4', '4', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('4d05cd6bc1e248b8b66d7b0341baa509', '034f274f835d4f219b0f3c2f8fa79bf3', '2', '急救', NULL, NULL, '2', 'N', '0', '0', '2', '2', NULL, '1', NULL, '1');
INSERT INTO `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) VALUES ('d6591f64c5d744ad881b401549627300', '034f274f835d4f219b0f3c2f8fa79bf3', '1', '中医', NULL, NULL, '1', 'N', '0', '0', '1', '1', NULL, '1', NULL, '1');

-- ==========================以上只执行了产品主干或者国寿环境相关的功能的脚本=-=========================================


-- 员工健康信息
drop table if exists tb_hr_healthy_info;
create table tb_hr_healthy_info
(
   emp_healthy_info_id  varchar(32) not null comment '员工健康信息id',
   employee_code        national varchar(32) comment '员工编码',
   height               national varchar(10) comment '身高（cm)',
   weight               national varchar(10) comment '体重(kg)',
   blood_type           varchar(10) comment '血型',
   blood_pressure       varchar(20) comment '血压',
   blood_sugar          varchar(20) comment '血糖',
   medical_histtory     varchar(1024) comment '既往病史',
   valid_flag           varchar(4) comment '是否有效',
   update_time          datetime comment '更新时间',
   updatename           national varchar(20) comment '更新人',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   depart_code          varchar(512) comment '数据权限:部门编码',
   institution_id       varchar(32) comment '机构id',
   primary key (emp_healthy_info_id)
);
alter table tb_hr_healthy_info comment '员工健康信息';

-- 员工参与活动的记录
drop table if exists tb_hr_activity_record;
create table tb_hr_activity_record
(
   emp_activity_record_id varchar(32) not null comment '活动参与记录id',
   employee_code        national varchar(32) comment '员工编码',
   activity_descr       varchar(512) comment '活动说明',
   activity_photos_uri  varchar(512) comment '参与活动详情(多个逗号分隔）',
   activity_time        datetime comment '参与活动时间',
   upload_time          datetime comment '资料上传时间',
   valid_flag           varchar(4) comment '是否有效',
   update_time          datetime comment '更新时间',
   updatename           national varchar(20) comment '更新人',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   depart_code          varchar(512) comment '数据权限:部门编码',
   institution_id       varchar(32) comment '机构id',
   primary key (emp_activity_record_id)
);
alter table tb_hr_activity_record comment '员工参与活动的记录';

-- 员工技能展示
drop table if exists tb_hr_skill_display;
create table tb_hr_skill_display
(
   emp_skill_display_id varchar(32),
   employee_code        national varchar(32) comment '员工编码',
   skill_scene_descr    varchar(100) comment '技能场景说明',
   skill_scene_videos_uri varchar(512) comment '技能场景视频',
   skill_show           varchar(2) comment '是否共享技能秀场, 0:否，1:是',
   valid_flag           varchar(4) comment '是否有效',
   update_time          datetime comment '更新时间',
   updatename           national varchar(20) comment '更新人',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   depart_code          varchar(512) comment '数据权限:部门编码',
   institution_id       varchar(32) comment '机构id'
);
alter table tb_hr_skill_display comment '员工技能展示';

ALTER TABLE `tb_hr_certificate` ADD COLUMN `certificates_uri`  varchar(1024) NULL COMMENT '证书内页(多个逗号分隔）' AFTER `valid_dt`;

-- 视频学习时长
ALTER TABLE `tb_train_study_record` CHANGE COLUMN `other1` `study_time`  varchar(50) NULL DEFAULT NULL COMMENT '学习时间' AFTER `study_time_position`;
ALTER TABLE `tb_train_study_record` CHANGE COLUMN `other2` `read_count`  varchar(50) NULL DEFAULT NULL COMMENT '浏览次数' AFTER `study_time`;
ALTER TABLE `tb_train_study_record` ADD COLUMN `login_key`  varchar(32) NULL COMMENT '登录标识' AFTER `read_count`;

-- 物品类别联合主键
ALTER TABLE tb_re_goods_class DROP PRIMARY KEY;
ALTER TABLE tb_re_goods_class ADD PRIMARY KEY(goods_class_code,institution_id);

-- ==========================以上的相关产品部分脚本，已在测试环境执行，项目脚本没有执行（2018-10-29）=-=========================================