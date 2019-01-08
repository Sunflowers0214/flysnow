
#版本变更日志
#----------------------------------------------------------
V3.0.0(2015/11/07 10:10)

2018-04-13
ALTER TABLE tb_volunteer_info ADD idcard_no VARCHAR(32);

2018-04-23 通知公告
drop table if exists tb_notice_bulletin;

#/*==============================================================*/
#/* Table: tb_notice_bulletin                                    */
#/*==============================================================*/
create table tb_notice_bulletin
(
   notice_bulletin_id   varchar(32) not null comment '公告标题id',
   bulletin_title       varchar(50) comment '公告标题',
   bulletin_time        datetime comment '发布时间',
   bulletin_content     varchar(1000) comment '公告内容',
   recorder             varchar(50) comment '发布人',
   scope                varchar(100) comment '发布范围',
   status               varchar(2) comment '发布状态',
   valid_flag           varchar(4),
   create_time          datetime,
   update_time          datetime,
   operate_man          varchar(120),
   operate_reason       varchar(200),
   institution_id       varchar(32),
   primary key (notice_bulletin_id)
);
drop table if exists tb_notice_bulletin_terminal;

#*==============================================================*/
# Table: tb_notice_bulletin_terminal                           */
#==============================================================*/
create table tb_notice_bulletin_terminal
(
   notice_bulletin_id   varchar(32) not null comment '公告标题id',
   terminal_id          varchar(20) not null comment '终端标识',
   primary key (notice_bulletin_id, terminal_id)
);

alter table tb_notice_bulletin_terminal add constraint FK_Reference_1 foreign key (notice_bulletin_id)
      references tb_notice_bulletin (notice_bulletin_id) on delete restrict on update restrict;

###########################	  
#新建菜单  
#消息推送
insert into `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('xxts','消息推送','#','2','sozialarbeit','sozialarbeit/xxts','社工管理系统/消息推送','6','Y','PC','PC','xiao xi tui song','XXTS');	

#通知公告
insert into `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('tzgg','通知公告','sw/message/jsp/noticebulletinMan.jsp','3','xxts','sozialarbeit/xxts/tzgg','社工管理系统/消息推送/通知公告','1','N','PC','PC','tong zhi gong gao','TZGG');
 
#新建字典 terminal_service 发布终端类型
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('a96ffb33ab3740c29baa8e515cf220de','terminal_service','发布终端类型',NULL,'2','Y','0','0','FBZDLX','fa bu zhong duan lei xing','tb_notice_bulletin','1',NULL,'0','0','Y');
	  
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('2d4f4b9e33a94ffabed9a3c52e5dac51','a96ffb33ab3740c29baa8e515cf220de','员工移动端','waiter','','','2','N','0','0','YGYDD','yuan gong yi dong duan','2018-04-20','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('dff8a66ea0cb4bb3bc0acac28e4601c2','a96ffb33ab3740c29baa8e515cf220de','家属移动端','family','','','4','N','0','0','JSYDD','jia shu yi dong duan','2018-04-20','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('0c2cc210c35f42ce96c0c8b3ca8af30f','a96ffb33ab3740c29baa8e515cf220de','管理者移动端','manager','','','5','N','0','0','GLZYDD','guan li zhe yi dong duan','2018-04-20','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('b4546f32c8374df5a09acceebf3f7277','a96ffb33ab3740c29baa8e515cf220de','供应商移动端','provider','','','6','N','0','0','GYSYDD','gong ying shang yi dong duan','2018-04-20','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('48d7c173870a48cfa9b2ece1d014cfb9','a96ffb33ab3740c29baa8e515cf220de','志愿者移动端','volunteer','','','7','N','0','0','ZYZYDD','zhi yuan zhe yi dong duan','2018-04-20','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('1e8b092754c1462f972def388673f43e','a96ffb33ab3740c29baa8e515cf220de','员工移动端（精细化服务)','waiterpad','','','3','N','0','0','YGYDDJXHFW)','yuan gong yi dong duan jing xi hua fu wu )','2018-04-20','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('5a8a994530bc4af38b82a762af114d5b','a96ffb33ab3740c29baa8e515cf220de','客户移动端','customer','',NULL,'1','N','0','0','KHYDD','ke hu yi dong duan',NULL,'1','','1');	  
	  
#----------------------------------------------------------------
#修改餐品表
drop table if exists tb_fd_meal_diction;
create table tb_fd_meal_diction
(
   food_id              varchar(32),
   food_code            national varchar(32) not null comment '餐品编码',
   food_name            national varchar(20) comment '餐品名称',
   food_type            national varchar(20) comment '餐品类型',
   food_price           national varchar(20) comment '餐品价格',
   food_unit            national varchar(20) comment '餐品单位',
   food_material        national varchar(50) comment '餐品材料',
   food_photo           varchar(500),
   service_mode         char(3) comment '标准餐/订餐',
   use_flag             national varchar(32) comment '使用标志',
   meno                 varchar(100) comment '备注',
   institution_id       varchar(32),
   update_time          datetime,
   valid_flag           varchar(4),
   operate_man          varchar(120),
   operate_reason       varchar(200),
   primary key (food_id)
);

alter table tb_fd_meal_diction comment '餐品字典';



#订餐表
drop table if exists tb_order_dinner;
create table tb_order_dinner
(
   order_dinner_id      varchar(32) not null comment '订餐主键',
   order_dinner_code    varchar(20) comment '订餐编号',
   userid               varchar(32) not null comment '用户id',
   elder_code           varchar(32) not null comment '老人编码',
   elder_name           varchar(20) comment '老人姓名',
   contact_tel          varchar(32) comment '电话',
   meno        			varchar(100) comment '备注',
   send_time            datetime comment '派单时间',
   send_address         varchar(100) comment '派单地址',
   order_time           datetime comment '下单时间',
   order_amount         double comment '订单金额',
   payment_type         varchar(10) comment '支付方式 fm_payment_type',
   payment_time         datetime comment '支付时间',
   status               char(2) comment '订单状态 待确认/已确认/已配送/已完成/已取消',
   show_flag            char(2) comment '是否展现',
   institution_id       varchar(32) comment '机构id',
   update_time          datetime comment '更新时间',
   valid_flag           varchar(4) comment '是否有效',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   primary key (order_dinner_id)
);

alter table tb_order_dinner comment '订餐主表';

#订单详情
drop table if exists tb_order_dinner_detail;
create table tb_order_dinner_detail
(
   order_dinner_detail_id varchar(32) not null comment '订单详情id',
   order_dinner_id      varchar(32) comment '订餐主键',
   food_id              varchar(32) comment '餐品id',
   amount               int comment '数量',
   primary key (order_dinner_detail_id)
);

alter table tb_order_dinner_detail add constraint FK_Reference_1 foreign key (order_dinner_id)
      references tb_order_dinner (order_dinner_id) on delete restrict on update restrict;

#购物车
drop table if exists tb_cart;
create table tb_cart
(
   userid               national varchar(32) not null comment '用户id',
   item_id              varchar(32) not null comment '物品id',
   amount               int comment '数量',
   institution_id       varchar(32) comment '机构id',
   update_time          datetime comment '更新时间',
   valid_flag           varchar(4) comment '是否有效',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   create_time          datetime,
   primary key (userid, item_id)
);


#订单配送菜单
insert into `t_sys_menu` (`MENUCODE`, `MENUNAME`, `FUNCENTRY`, `MENULEVEL`, `PARENTMENUCODE`, `MENUFULLCODE`, `MENUFULLNAME`, `NODEORDER`, `ISLEAF`, `MENUTYPENAME`, `MENUTYPECODE`, `MENUSPELLING`, `MENUSIMPLEPIN`) values('pcgl','配餐管理','cs/dietary/jsp/orderdinnerMan.jsp','3','ssgl','care/ssgl/pcgl','照护服务管理系统/膳食管理/配餐管理','3','N','PC','PC','pei can guan li','PCGL');

#订单状态字典
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('7b716537e46d48028d23ec7ca400c485','order_status','订单状态',NULL,'1','Y','0','0','DDZT','ding dan zhuang tai','tb_order_dinner','1',NULL,'0','0','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('684b803e58094e02826fc51ab3b13b87','7b716537e46d48028d23ec7ca400c485','待确认','0','','','1','N','0','0','DQR','dai que ren','2018-05-09','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('0334dfc461fe43d986cb6d52aa134e24','7b716537e46d48028d23ec7ca400c485','已确认','1','','','2','N','0','0','YQR','yi que ren','2018-05-09','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('1a4dc66751724d449755a5340dc9a6af','7b716537e46d48028d23ec7ca400c485','已配送','2','','','3','N','0','0','YPS','yi pei song','2018-05-09','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('d422516d744f474585409ccab09cbc60','7b716537e46d48028d23ec7ca400c485','已完成','4','',NULL,'4','N','0','0','YWC','yi wan cheng',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('d6819836b6374e02b96750f428e93afe','7b716537e46d48028d23ec7ca400c485','已评价','5','','','5','N','0','0','YPJ','yi ping jia','2018-05-09','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('afc41fa14ea04f99ac96d7dbd2c7ff0e','7b716537e46d48028d23ec7ca400c485','已取消','6','',NULL,'6','N','0','0','YQX','yi qu xiao',NULL,'1','','1');

#业务类型 + 派送
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('a76885b048fa41a8bb8c173b43040486','65138675d33e4167807b4732e225b22b','派送','2','','','3','N','0','0','PS','pai song','2018-05-04','1','','1');

#餐品服务方式
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('045c70c85429456a84b4666eb59032a8','dinner_service_mode','餐品服务方式',NULL,'5','Y','0','0','CPFWFS','can pin fu wu fang shi','tb_fd_meal_diction','1',NULL,'0','0','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('ec39d6a4fa81483182a79b6132da9ee0','045c70c85429456a84b4666eb59032a8','标准餐','1','',NULL,'1','N','0','0','BZC','biao zhun can',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('7d2d23aeae6a4041bcd37bee68156acc','045c70c85429456a84b4666eb59032a8','订餐','2','',NULL,'2','N','0','0','DC','ding can',NULL,'1','','1');

#配送类型 send_type
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('a3f4be69432841f88c7a1cc0561e2ff4','send_type','配送类型',NULL,'2','Y','0','0','PSLX','pei song lei xing','tb_order_dinner','1',NULL,'0','0','Y');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('0966904c78774ffa9f9f13d373436b3a','a3f4be69432841f88c7a1cc0561e2ff4','送餐','21','','','1','N','0','0','SC','song can','2018-05-04','1','','1');

#服务类型(总) 生活状况,餐品配送
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('02d6263d66bc4d37a1c4ea656c40d6dc','ee4fd9b1f7f848039683bab9b8a8ssss','送餐','21','',NULL,'21','N','0','0','SC','song can',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('abdc493fcf1645e9a63e573159cbc8f0','ee4fd9b1f7f848039683bab9b8a8ssss','生活状况','6','',NULL,'6','N','0','0','SHZK','sheng huo zhuang kuang',NULL,'1','','1');

#内置送餐服务项
insert into `tb_service_item` (`service_item_id`, `business_type`, `serviceitem_category_code`, `service_item_name`, `service_item_code`, `working_hours`, `service_price`, `monthly_price`, `subsidy_type`, `maintenance_type`, `service_content`, `status`, `service_standards`, `valid_flag`, `create_time`, `update_time`, `operate_man`, `operate_reason`, `institution_id`) values('544fa99c67c6430eac86ec1ccd712add','2','21','送餐',NULL,'0.50','0.00','0.00','0','0','送餐','1',NULL,'0','2018-05-04 11:17:48','2018-05-04 11:17:48','新智慧养老_管理员','insert','4');

#执行状态字典
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('ad7f3b32a35c4e49b1452fb5afa0bb91','cs_task_tatus','执行状态',NULL,'1','Y','0','0','ZHZT','zhi hang zhuang tai','tb_service_task_exec','1',NULL,'0','0','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('ca7fde6c8064429aaea2c73ea24292de','ad7f3b32a35c4e49b1452fb5afa0bb91','已制单','0','',NULL,'1','N','0','0','YZD','yi zhi dan',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('9056615dbe384d58b64d555fb514fb2a','ad7f3b32a35c4e49b1452fb5afa0bb91','已派遣','1','',NULL,'2','N','0','0','YPQ','yi pai qian',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('810f663ff2174667b44a2dac1c21eeeb','ad7f3b32a35c4e49b1452fb5afa0bb91','已接单','2','',NULL,'3','N','0','0','YJD','yi jie dan',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('63823ea61547471fbe6711ee445d02e0','ad7f3b32a35c4e49b1452fb5afa0bb91','派单过期,已拒单','3','','','4','N','0','0','PDGQ,YJD','pai dan guo qi ,yi ju dan','2018-05-09','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('c488aaddb0554b37a40f946c00769849','ad7f3b32a35c4e49b1452fb5afa0bb91','服务已完成','4','',NULL,'5','N','0','0','FWYWC','fu wu yi wan cheng',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('78ce0946bd2c4566a5ff53b360aebf38','ad7f3b32a35c4e49b1452fb5afa0bb91','服务已评价','5','',NULL,'6','N','0','0','FWYPJ','fu wu yi ping jia',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('27d95a3c6d6c4d62852fdf05dc3606c5','ad7f3b32a35c4e49b1452fb5afa0bb91','作废','6','',NULL,'7','N','0','0','ZF','zuo fei',NULL,'1','','1');

#餐品类型
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('0edeae2a03f04602b43d5b1658f65799','580','营养套餐','nutrition','',NULL,'5','N','0','0','YYTC','ying yang tao can',NULL,'1','','1');


#tb_service_task  新增  receiver_tel
ALTER TABLE tb_service_task ADD  receiver_tel VARCHAR(32);

#tb_service_task_process  新增  executor_tel
ALTER TABLE tb_service_task_process ADD  executor_tel VARCHAR(32);

#预约信息
drop table if exists tb_applicant_info;
create table tb_applicant_info
(
   applicant_info_id    national varchar(32) not null comment '预约ID',
   elder_code           varchar(32) comment '老人编码',
   applicant_name       varchar(50) comment '预约人姓名',
   applicant_sex        national varchar(10) comment '预约人性别',
   applicant_tel        national varchar(20) comment '预约人电话',
   party_type           national varchar(10) comment '关系类型',
   applicant_amount     decimal(10,2) comment '预订金',
   applicant_in_date    date comment '预约入住日期',
   is_shuttle           varchar(2) comment '是否需要派车去接',
   applicant_date       date comment '预约日期',
   applicant_operator   varchar(50) comment '预约操作人',
   memo                 varchar(200) comment '备注',
   status               national varchar(30) comment '状态',
   valid_flag           varchar(4) comment '是否有效',
   create_time          datetime comment '创建时间',
   update_time          datetime comment '更新时间',
   operate_man          varchar(120) comment '操作人',
   operate_reason       varchar(200) comment '操作原因',
   institution_id       varchar(32) comment '机构编码',
   primary key (applicant_info_id)
);
alter table tb_applicant_info comment '预约信息';


#预约延期信息
drop table if exists tb_applicant_history;
create table tb_applicant_history
(
   applicant_delay_id   national varchar(32) not null comment '预约延期ID',
   applicant_info_id    varchar(32) comment '预约ID',
   applicant_in_date_old date comment '原预入住日期',
   applicant_in_date    date comment '新预入住日期',
   delay_reason         varchar(200) comment '延期原因',
   delay_time           datetime comment '延期时间',
   delay_operator       varchar(50) comment '延期操作人',
   primary key (applicant_delay_id)
);
alter table tb_applicant_history comment '预约延期信息';

#老人床位变动信息表 tb_bed_change
ALTER TABLE `tb_bed_change`
DROP COLUMN `batch_number`,
CHANGE COLUMN `is_compartment` `is_single`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否包间' AFTER `operate_reason`,
ADD COLUMN `building_name`  varchar(20) NULL AFTER `building_no`,
ADD COLUMN `floor_name`  varchar(20) NULL AFTER `floor_no`,
ADD COLUMN `room_name`  varchar(20) NULL AFTER `room_no`,
ADD COLUMN `in_room_num`  varchar(20) NULL AFTER `BED_NO`;

update tb_bed_change t
set t.building_name = (select a.building_name from tb_building_info a where a.building_no = t.building_no),
t.floor_name = (select a.floor_name from tb_floor_info a where a.floor_no = t.floor_no),
t.room_name = (select a.room_name from tb_room_info a where a.room_no = t.room_no),
t.in_room_num = (select a.in_room_num from tb_bed_info a where a.bed_no = t.bed_no)
where t.elder_code is not null;


#老人床位变动历史表
ALTER TABLE `tb_bed_change_history`
DROP COLUMN `batch_number`,
CHANGE COLUMN `is_compartment` `is_single`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否包间' AFTER `operate_reason`,
ADD COLUMN `building_name`  varchar(20) NULL AFTER `building_no`,
ADD COLUMN `floor_name`  varchar(20) NULL AFTER `floor_no`,
ADD COLUMN `room_name`  varchar(20) NULL AFTER `room_no`,
ADD COLUMN `in_room_num`  varchar(20) NULL AFTER `BED_NO`;

update tb_bed_change_history t
set t.building_name = (select a.building_name from tb_building_info a where a.building_no = t.building_no),
t.floor_name = (select a.floor_name from tb_floor_info a where a.floor_no = t.floor_no),
t.room_name = (select a.room_name from tb_room_info a where a.room_no = t.room_no),
t.in_room_num = (select a.in_room_num from tb_bed_info a where a.bed_no = t.bed_no)
where t.elder_code is not null;

#老人表变动
ALTER TABLE `tb_elder`
ADD COLUMN `elder_number`  varchar(30) NULL COMMENT '老人编号' AFTER `memo`,
ADD COLUMN `userId`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户登录id' AFTER `elder_number`,
ADD COLUMN `useraccount`  varchar(30) NULL COMMENT '账号' AFTER `userId`;

#接口添加
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('f7a524a459b04e948440d9a6fc25c9e0', 'customerHome', '客户端', 'phone', 'query', 'loginRelatedInfoUrl', '客户登录信息查询', 'customer', 'customerHomeService', 'queryCustomerLoginInfo', '客户登录信息查询', '客户登录信息查询', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('1c6ee7de96b64d0580eeb654dd8691c2', 'customerHome', '客户端', 'iPhone', 'query', 'loginRelatedInfoUrl', '客户登录信息查询', 'customer', 'customerHomeService', 'queryCustomerLoginInfo', '客户登录信息查询', '客户登录信息查询', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('eeccb8332ac945aaa23fb757c39f3374', 'servicePlan', '服务计划', 'phone', 'query', 'servicePlanQueryUrl', '服务任务列表', 'customer', 'customerHomeService', 'queryServiceTaskList', '服务任务列表', '服务任务列表', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('81f1fa4b81154247a149a4614ac0db72', 'servicePlan', '服务计划', 'iPhone', 'query', 'servicePlanQueryUrl', '服务任务列表', 'customer', 'customerHomeService', 'queryServiceTaskList', '服务任务列表', '服务任务列表', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('33a2505f23be41ca8c7ce9b6087ff6c4', 'servicePlan', '服务计划', 'phone', 'query', 'serviceEvaluationQueryUrl', '服务跟踪评价', 'customer', 'customerHomeService', 'queryServiceTaskTrackList', '服务跟踪评价', '服务跟踪评价', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('b7f266a945be412b852ec9c77c1c0c2d', 'servicePlan', '服务计划', 'iPhone', 'query', 'serviceEvaluationQueryUrl', '服务跟踪评价', 'customer', 'customerHomeService', 'queryServiceTaskTrackList', '服务跟踪评价', '服务跟踪评价', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('611ba8ea24d9488a9442b5c7d4d0b853', 'servicePlan', '服务计划', 'phone', 'insert', 'serviceEvaluationSaveUrl', '服务跟踪评价', 'customer', 'customerHomeService', 'insertExecuteEvaluate', '服务跟踪评价', NULL, '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('19534fe2eb494796bbd3b0ad8dc4899a', 'servicePlan', '服务计划', 'iPhone', 'insert', 'serviceEvaluationSaveUrl', '服务跟踪评价', 'customer', 'customerHomeService', 'insertExecuteEvaluate', '服务跟踪评价', NULL, '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('3ac89529def6482a8038d49ae70f14a9', 'servicePlan', '服务计划', 'phone', 'query', 'customerServicePlanQueryUrl', '客户服务计划', 'customer', 'customerHomeService', 'getCustomerServicePlanList', '客户服务计划', '客户服务计划', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('821833c8e921434890cc3eb90993ea63', 'servicePlan', '服务计划', 'iPhone', 'query', 'customerServicePlanQueryUrl', '客户服务计划', 'customer', 'customerHomeService', 'getCustomerServicePlanList', '客户服务计划', '客户服务计划', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('f474a59e0f054a6587d4091af8122199', 'servicePlan', '服务计划', 'phone', 'query', 'timingServicePlansQueryUrl', '获取服务计划明细', 'customer', 'customerHomeService', 'getCustomerServicePlanDetailList', '获取服务计划明细', '获取服务计划明细', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('e2b48e1287fb477693bf2c691e63d7f8', 'servicePlan', '服务计划', 'iPhone', 'query', 'timingServicePlansQueryUrl', '获取服务计划明细', 'customer', 'customerHomeService', 'getCustomerServicePlanDetailList', '获取服务计划明细', '获取服务计划明细', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('9cda095ea0294951b260d48cbc22788e', 'customerHome', '客户移动端', 'phone', 'query', 'vitalSignsQueryUrl', '体征数据查询', 'customer', 'customerHomeService', 'queryVitalSignLately', '体征数据查询', '体征数据查询', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('bf9f799ae09b47d480b55c34bdb63b53', 'customerHome', '客户移动端', 'iPhone', 'query', 'vitalSignsQueryUrl', '体征数据查询', 'customer', 'customerHomeService', 'queryVitalSignLately', '体征数据查询', '体征数据查询', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('625a1399b5a44d1c89a384579678b2e7', 'customerHome', '客户端', 'phone', 'query', 'vitalSignsStatisticsUrl', '最近体征数据查询', 'customer', 'customerHomeService', 'queryVitalSignType', '最近体征数据查询', '最近体征数据查询', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('1093f98bac694692a995a74ef0a35b33', 'customerHome', '客户端', 'iPhone', 'query', 'vitalSignsStatisticsUrl', '最近体征数据查询', 'customer', 'customerHomeService', 'queryVitalSignType', '最近体征数据查询', '最近体征数据查询', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('b16af32522b440858aa58c140ccbcbed', 'customerHome', '客户端', 'phone', 'query', 'familiesOfTheElderlyQueryUrl', '获取服务员列表', 'customer', 'customerHomeService', 'queryCustomerWaiterList', '获取服务员列表', '获取服务员列表', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('6fd5890d06384e62a9b396fc9f4db8b0', 'customerHome', '客户端', 'iPhone', 'query', 'familiesOfTheElderlyQueryUrl', '获取服务员列表', 'customer', 'customerHomeService', 'queryCustomerWaiterList', '获取服务员列表', '获取服务员列表', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('8bebe58208dd4689a6aa51f558d3acb0', 'orderHome', '点餐模块', 'phone', 'query', 'queryOrderedList', '查询餐品类别与餐品列表', 'customer', 'elderOrderDinnerService', 'queryOrderedList', '查询餐品类别与餐品列表', '查询餐品类别与餐品列表', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('128f4b72075e46a98b6654d8c38534ca', 'orderHome', '点餐模块', 'iPhone', 'query', 'queryOrderedList', '查询餐品类别与餐品列表', 'customer', 'elderOrderDinnerService', 'queryOrderedList', '查询餐品类别与餐品列表', '查询餐品类别与餐品列表', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('2d0a40cc1d0148a891d263d7f3a753cd', 'OrderDinner', '订餐', 'phone', 'delete', 'deleteOrderedDetail', '购物车中餐品单条数量减少接口', 'customer', 'elderOrderDinnerService', 'updateReduceShoppingDetail', '购物车中餐品单条数量减少接口', '购物车中餐品单条数量减少接口', '张绍龙', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('9aaaf2643161469a8b621dae6c82750a', 'OrderDinner', '订餐', 'iPhone', 'delete', 'deleteOrderedDetail', '购物车中餐品单条数量减少接口', 'customer', 'elderOrderDinnerService', 'updateReduceShoppingDetail', '购物车中餐品单条数量减少接口', '购物车中餐品单条数量减少接口', '张绍龙', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('d08a383bd46f40788fd4b5862b59ca51', 'OrderDinner', '订餐', 'phone', 'insert', 'insertOrmodifyOrderedDetail', '购物车中餐品单条数量增加', 'customer', 'elderOrderDinnerService', 'updateAddShoppingDetail', '购物车中餐品单条数量增加', '购物车中餐品单条数量增加', NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('ef82b8361c324cd3844474bc284e80a5', 'OrderDinner', '订餐', 'iPhone', 'insert', 'insertOrmodifyOrderedDetail', '购物车中餐品单条数量增加', 'customer', 'elderOrderDinnerService', 'updateAddShoppingDetail', '购物车中餐品单条数量增加', '购物车中餐品单条数量增加', NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('e5e0ccec5a0a4be29a4354477e82030c', 'OrderDinner', '点餐模块', 'phone', 'delete', 'queryShoppingDetailList', '查询购物车餐品列表', 'customer', 'elderOrderDinnerService', 'queryShoppingDetailList', '查询购物车餐品列表', '查询购物车餐品列表', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('7d9063ec603041b6b3d90d02615a47e7', 'OrderDinner', '点餐模块', 'iPhone', 'delete', 'queryShoppingDetailList', '查询购物车餐品列表', 'customer', 'elderOrderDinnerService', 'queryShoppingDetailList', '查询购物车餐品列表', '查询购物车餐品列表', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('b59625589ec94e65899ea27a9982b280', 'OrderDinner', '点餐模块', 'phone', 'delete', 'deleteShoppingDetail', '删除购物车餐品', 'customer', 'elderOrderDinnerService', 'deleteShoppingDetail', '删除购物车餐品', '删除购物车餐品', NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('23e9ea50489041a487cc3fe757ff1a3c', 'OrderDinner', '点餐模块', 'iPhone', 'delete', 'deleteShoppingDetail', '删除购物车餐品', 'customer', 'elderOrderDinnerService', 'deleteShoppingDetail', '删除购物车餐品', '删除购物车餐品', NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('e38dce2650d7481cbf5be5b31f982966', 'OrderDinner', '点餐模块', 'phone', 'insert', 'createResOrder', '生成订单接口', 'customer', 'elderOrderDinnerService', 'insertResOrder', '生成订单接口', '生成订单接口', '黄永生', '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('e256b1d57c474472b309a7f9630ea971', 'OrderDinner', '点餐模块', 'iPhone', 'insert', 'createResOrder', '生成订单接口', 'customer', 'elderOrderDinnerService', 'insertResOrder', '生成订单接口', '生成订单接口', '黄永生', '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('df1bf4051eae4895a17911cca60c7ca8', 'OrderDinner', '点餐模块', 'phone', 'query', 'queryResOrderList', '查询订单列表', 'customer', 'elderOrderDinnerService', 'queryResOrderList', '查询订单列表', '查询订单列表', NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('20c8fdca6bcf44aba156baeb9c499af0', 'OrderDinner', '点餐模块', 'iPhone', 'query', 'queryResOrderList', '查询订单列表', 'customer', 'elderOrderDinnerService', 'queryResOrderList', '查询订单列表', '查询订单列表', NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('26db124e0b2449ab84dd7659a76b1085', 'OrderDinner', '订餐模块', 'phone', 'query', 'queryOrderDetailList', '订单详细查询', 'customer', 'elderOrderDinnerService', 'queryOrderDetailList', '订单详细查询', '订单详细查询', NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('d824f0f945ec44c7bfd0769f103cf83a', 'OrderDinner', '订餐模块', 'iPhone', 'query', 'queryOrderDetailList', '订单详细查询', 'customer', 'elderOrderDinnerService', 'queryOrderDetailList', '订单详细查询', '订单详细查询', NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('f90d842f49e94df1aac6b2d7d5383e77', 'OrderDinner', '订餐模块', 'phone', 'query', 'queryOrderFlagList', '订单状态查询', 'customer', 'elderOrderDinnerService', 'queryOrderFlagList', '订单状态查询', '订单状态查询', NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('b66c41e90fe543199ee53bdaa5926727', 'OrderDinner', '订餐模块', 'iPhone', 'query', 'queryOrderFlagList', '订单状态查询', 'customer', 'elderOrderDinnerService', 'queryOrderFlagList', '订单状态查询', '订单状态查询', NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('b38982de81df44548eb7ad9bfd216aaa', 'OrderDinner', '订餐模块', 'phone', 'insert', 'waiterEvaluate', '订餐评价', 'customer', 'elderOrderDinnerService', 'insertWaiterEvaluate', '订餐评价', '订餐评价', NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('45dea056aca149e9ae465d464a0ef175', 'OrderDinner', '订餐模块', 'iPhone', 'insert', 'waiterEvaluate', '订餐评价', 'customer', 'elderOrderDinnerService', 'insertWaiterEvaluate', '订餐评价', '订餐评价', NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('d8d1fc81ffe14532a39098bbe03588e3', 'OrderDinner', '订餐模块', 'phone', 'update', 'deleteBatchResOrder', '未确认订单批量取消', 'customer', 'elderOrderDinnerService', 'deleteResOrder', '未确认订单批量取消', '未确认订单批量取消', NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('6141c605ddc0441d8ff6cd64260d3168', 'OrderDinner', '订餐模块', 'iPhone', 'update', 'deleteBatchResOrder', '未确认订单批量取消', 'customer', 'elderOrderDinnerService', 'deleteResOrder', '未确认订单批量取消', '未确认订单批量取消', NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('4827a205bf6e4fb196d662da80a45599', 'OrderDinner', '订餐模块', 'phone', 'delete', 'deleteCompletedOrders', '批量删除订单接口', 'customer', 'elderOrderDinnerService', 'deleteCompletedOrders', '批量删除订单接口', '批量删除订单接口', NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('21d84b665b134309a0e812d72d59297f', 'OrderDinner', '订餐模块', 'iPhone', 'delete', 'deleteCompletedOrders', '批量删除订单接口', 'customer', 'elderOrderDinnerService', 'deleteCompletedOrders', '批量删除订单接口', '批量删除订单接口', NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('b5bf523d54a34cbd98d3a0e57083b2cb', 'OrderDinner', '订餐', 'phone', 'query', 'queryShoppingItems', '查询总数', 'customer', 'elderOrderDinnerService', 'queryShoppingItems', NULL, NULL, NULL, '0', '1001');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('5cfcec2579c340da883a5f3151a7a092', 'OrderDinner', '订餐', 'iPhone', 'query', 'queryShoppingItems', '查询总数', 'customer', 'elderOrderDinnerService', 'queryShoppingItems', NULL, NULL, NULL, '0', '1011');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('3eee49d7e0f14d5db68228f05f021ebb', 'OrderDinner', '订餐模块', 'phone', 'update', 'serviceDistributionComplete', '配送完成接口', 'waiter', 'orderService', 'updateServiceDistributionComplete', '配送完成接口', '配送完成接口', NULL, '0', '100301');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('39237e4cf1e04275a7857a738463411e', 'OrderDinner', '订餐模块', 'iPhone', 'update', 'serviceDistributionComplete', '配送完成接口', 'waiter', 'orderService', 'updateServiceDistributionComplete', '配送完成接口', '配送完成接口', NULL, '0', '100311');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('a06989c03a664eb888b9b88e1fec8600', 'OrderDinner', '订餐模块', 'phone', 'query', 'serviceDistributionList', '配送列表查询', 'waiter', 'orderService', 'queryServiceDistributionList', '配送列表查询', '配送列表查询', NULL, '0', '100301');
INSERT INTO `tb_interface_config` (`interface_config_id`, `modular_code`, `modular_name`, `equipment_type`, `operationtype`, `operation_para`, `operation_para_des`, `service_object`, `service_class`, `service_method`, `inferface_explain`, `remarks`, `interface_person`, `interface_status`, `app_code`) VALUES ('cbc02ff82bcb4e999154072bf54caa54', 'OrderDinner', '订餐模块', 'iPhone', 'query', 'serviceDistributionList', '配送列表查询', 'waiter', 'orderService', 'queryServiceDistributionList', '配送列表查询', '配送列表查询', NULL, '0', '100311');





----------------------------------------------------------------
#疾病  既往史字典 
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('5843cd1b5c0c46d1a59b3d7f9e624e6f','elder_ph_jb','疾病',NULL,'46','Y','0','0','JB','ji bing','tb_past_history','1',NULL,'1','0','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('2f6ab8f678574edaaa6528f7eb7754a5','5843cd1b5c0c46d1a59b3d7f9e624e6f','ICD_10疾病编码','elder_ph_jb_jbbm','','','3','N','0','0','ICD_10JBBM','icd_10ji bing bian ma','2016-06-09','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('b310889581ee438ea6c9fff65505b66c','5843cd1b5c0c46d1a59b3d7f9e624e6f','高血压','elder_ph_jb_gxy','',NULL,'2','N','0','0','GXY','gao xue ya',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('17dca81cc8484320ac92960727ff8cc4','5843cd1b5c0c46d1a59b3d7f9e624e6f','心脏病','elder_ph_jb_xzb','','','1','N','0','0','XZB','xin zang bing','2016-06-09','1','','1');

#手术 既往史字典 
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('6153ae7cdba643aea5718fc1bb669e46','elder_ph_ss','手术',NULL,'43','Y','0','0','SS','shou shu','tb_past_history','1',NULL,'1','1','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('300655603f5544b9aa1c013b0406ca4b','6153ae7cdba643aea5718fc1bb669e46','ICD_10手术编码','elder_ph_ss_ssbm','','','1','N','0','0','ICD_10SSBM','icd_10shou shu bian ma','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('61a2da8158b74e53bd3b71ff71e59f9f','6153ae7cdba643aea5718fc1bb669e46','心脏搭桥手术','elder_ph_ss_xzdq','',NULL,'2','N','0','0','XZDQSS','xin zang da qiao shou shu',NULL,'1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('cbdf954ce51945c0aa9019550b99b899','6153ae7cdba643aea5718fc1bb669e46','外科手术','elder_ph_ss_wkss','',NULL,'3','N','0','0','WKSS','wai ke shou shu',NULL,'1','','1');

#外伤 既往史字典 
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('a51687a4ff3b4f438df1714bd7fdf065','elder_ph_ws','外伤',NULL,'34','Y','0','0','WS','wai shang','tb_past_history','1',NULL,'1','0','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('d22d2cae2607453e8dd0ab9e19fac35e','a51687a4ff3b4f438df1714bd7fdf065','扭伤','elder_ph_ws_ns','','','1','N','0','0','NS','niu shang','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('16a953a14f7f432d9cacfe6bd645253d','a51687a4ff3b4f438df1714bd7fdf065','挫伤','elder_ph_ws_cs','','','2','N','0','0','CS','cuo shang','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('0795f76cf37042ca9da57650b20f9e95','a51687a4ff3b4f438df1714bd7fdf065','骨折','elder_ph_ws_gz','','','3','N','0','0','GZ','gu zhe','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('1ff74dc0f99245a2915ad7ab7f617052','a51687a4ff3b4f438df1714bd7fdf065','脱臼','elder_ph_ws_tj','','','4','N','0','0','TJ','tuo jiu','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('5c96cdd7a50f4f78af412314b224332c','a51687a4ff3b4f438df1714bd7fdf065','震荡','elder_ph_ws_zd','','','5','N','0','0','ZD','zhen dang','2016-06-07','1','','1');

#输血  既往史字典 
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('211cc171e0784bc6b6dca7abdba1a25e','elder_ph_sx','输血',NULL,'36','Y','0','0','SX','shu xue','tb_past_history','1',NULL,'0','1','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('1ae6fa81620e4469884422b97c76f831','211cc171e0784bc6b6dca7abdba1a25e','定义','elder_ph_sx_dy','','','1','N','0','0','DY','ding yi','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('4558997c6578425baafaa9391ab5179e','211cc171e0784bc6b6dca7abdba1a25e','输血原因','elder_ph_sx_sxyy','','','2','N','0','0','SXYY','shu xue yuan yin','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('1f3270e338ab4c76894643dbad79df55','211cc171e0784bc6b6dca7abdba1a25e','代码','elder_ph_sx_dm','','','3','N','0','0','DM','dai ma','2016-06-07','1','','1');

#遗传  既往史字典 
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('ab1636f09b97403eacfa8dfb15719837','elder_ph_yc','遗传',NULL,'39','Y','0','0','YC','yi chuan','tb_past_history','1',NULL,'0','1','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('779292b8cb43479589db795aac3a08a4','ab1636f09b97403eacfa8dfb15719837','ICD_10疾病编码','elder_ph_yc_jbbm','',NULL,'1','N','0','0','ICD_10JBBM','icd_10ji bing bian ma',NULL,'1','','1');

#个人史类型  健康档案
insert into `t_dict` (`DICT_ID`, `dict_code`, `dict_name`, `super_dict_id`, `sib_order`, `isleaf`, `maint_flag`, `DICT_TYPE`, `DICT_SIMPLEPIN`, `DICT_Spelling`, `DICT_ITEMTABLENAME`, `DICT_VERSIONID`, `updateTime`, `choose`, `other`, `isCommon`) values('9e2f4e5b2b574952955bb9ff02f8e626','hrc_grslx','个人史类型',NULL,'51','Y','0','0','GRSLX','ge ren shi lei xing','tb_person_history','1',NULL,'0','0','Y');

insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('0bac62138c6449f5b4e819580857e3e4','9e2f4e5b2b574952955bb9ff02f8e626','冶游史','hrc_grslx_yys','','','3','N','0','0','YYS','ye you shi','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('29382d57d9164de39e097d576dcd661a','9e2f4e5b2b574952955bb9ff02f8e626','暴露史','hrc_grslx_bls','','','2','N','0','0','BLS','bao lu shi','2016-06-07','1','','1');
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('742908259c9b44ccaf461dffcb6ad718','9e2f4e5b2b574952955bb9ff02f8e626','个人生活习惯','hrc_grslx_grshxg','','','1','N','0','0','GRSHXG','ge ren sheng huo xi guan','2016-06-07','1','','1');

#康护护理评估报告 地址加长
ALTER TABLE tb_recure_assess_rpt MODIFY report_addr VARCHAR(1000);

#每周菜单
ALTER TABLE tb_fd_daily_diet CHANGE food_code food_id VARCHAR(32);

#添加优惠状态
insert into `t_dict_item` (`item_id`, `DICT_ID`, `display_name`, `fact_value`, `append_value`, `super_item_id`, `sib_order`, `isleaf`, `display_flag`, `valid_flag`, `ITEM_SIMPLEPIN`, `ITEM_Spelling`, `updateTime`, `itemlevel`, `dictitemFullCode`, `ORGID`) values('ff1ab94f45694563a9694b42de9f1b21','c2ccb6664f004cffac13058335213d03','保存','ics_djfazt_bc','',NULL,'2','N','0','0','BC','bao cun',NULL,'1','','1');
 