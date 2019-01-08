-- 全局参数
DROP TABLE IF EXISTS `auth_config`;
CREATE TABLE `auth_config` (
  `config_id` varchar(50) NOT NULL COMMENT '参数ID',
  `config_code` varchar(50) NOT NULL COMMENT '参数编码',
  `config_name` varchar(100) DEFAULT NULL COMMENT '参数名称',
  `config_value` varchar(200) DEFAULT NULL COMMENT '参数值',
  `config_status` int(1) DEFAULT 0 COMMENT '状态(0:初始,1:有效,-1:失效)',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局参数';

-- 字典
DROP TABLE IF EXISTS `auth_dict`;
CREATE TABLE `auth_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '字典ID',
  `dict_code` varchar(20) NOT NULL COMMENT '字典编码',
  `dict_name` varchar(50) NOT NULL COMMENT '字典名称',
  `dict_order` int(3) DEFAULT 1 COMMENT '字典顺序',
  `dict_spell` varchar(100) DEFAULT NULL COMMENT '拼音',
  `dict_spell_jane` varchar(50) DEFAULT NULL COMMENT '简拼',
  `dict_type` int(1) DEFAULT 0 COMMENT '字典类型(0:列表,1:树形)',
  `dict_status` int(1) DEFAULT 0 COMMENT '状态(0:初始,1:有效,-1:失效)',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典';

-- 字典选项
DROP TABLE IF EXISTS `auth_dict_item`;
CREATE TABLE `auth_dict_item` (
  `item_id` varchar(32) NOT NULL COMMENT '字典项ID',
  `dict_id` varchar(32) NOT NULL COMMENT '字典ID',
  `item_code` varchar(50) NOT NULL COMMENT '字典项编码',
  `item_name` varchar(100) NOT NULL COMMENT '字典项名称',
  `append_value` varchar(200) DEFAULT NULL COMMENT '附加值',
  `item_order` int(2) DEFAULT 1 COMMENT '字典项顺序',
  `item_spell` varchar(100) DEFAULT NULL COMMENT '拼音',
  `item_spell_jane` varchar(50) DEFAULT NULL COMMENT '简拼',
  `item_level` int(1) DEFAULT 1 COMMENT '字典项层级',
  `super_item_id` varchar(32) DEFAULT NULL COMMENT '父节点',
  `isleaf` int(1) DEFAULT 1 COMMENT '是否叶子节点,1:是,0:否',
  `item_full_code` varchar(200) DEFAULT NULL COMMENT '字典项全路径编码',
  `item_status` int(1) DEFAULT 0 COMMENT '状态(0:初始,1:有效,-1:失效)',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典选项';

-- 功能
DROP TABLE IF EXISTS `auth_function`;
CREATE TABLE `auth_function` (
  `function_id` varchar(32) NOT NULL COMMENT '功能ID',
  `function_code` varchar(40) NOT NULL COMMENT '功能编码',
  `function_name` varchar(50) NOT NULL COMMENT '功能名称',
  `function_entry` varchar(500) DEFAULT '#' COMMENT '功能功能入口',
  `function_order` int(9) DEFAULT 0 COMMENT '功能顺序',
  `function_spell` varchar(100) DEFAULT NULL COMMENT '拼音',
  `function_spell_jane` varchar(50) DEFAULT NULL COMMENT '简拼',
  `super_function_id` varchar(40) DEFAULT '0' COMMENT '父节点',
  `function_full_code` varchar(400) DEFAULT NULL COMMENT '功能全路径编码',
  `function_full_name` varchar(500) DEFAULT NULL COMMENT '功能全路径名称',
  `function_level` int(1) DEFAULT 1 COMMENT '功能层级',
  `isleaf` int(1) DEFAULT 1 COMMENT '是否叶子节点,1:是,0:否',
  `function_type` int(1) DEFAULT 0 COMMENT '功能类型(0:正常功能,1:管理功能)',
  `function_status` int(1) DEFAULT 0 COMMENT '状态(0:初始,1:有效,-1:失效)',
  PRIMARY KEY (`function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能';

-- 功能权限
DROP TABLE IF EXISTS `auth_function_permission`;
CREATE TABLE `auth_function_permission` (
  `function_id` varchar(32) NOT NULL COMMENT '功能ID',
  `function_permission_code` varchar(20) NOT NULL COMMENT '功能权限编码',
  `function_permission_name` varchar(50) NOT NULL COMMENT '功能权限名称(添加,修改,查询,删除,导出等)',
	PRIMARY KEY (`function_id`, `function_permission_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能权限';

-- 角色
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role` (
  `role_id` varchar(32) NOT NULL COMMENT '角色ID',
  `role_code` varchar(32) NOT NULL COMMENT '角色编码',
  `role_name` varchar(50) NOT NULL COMMENT '角色名称',
  `role_desc` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `role_order` int(2) DEFAULT 1 COMMENT '角色顺序',
  `role_spell` varchar(100) DEFAULT NULL COMMENT '拼音',
  `role_spell_jane` varchar(50) DEFAULT NULL COMMENT '简拼',
  `role_status` int(1) DEFAULT 0 COMMENT '状态(0:初始,1:有效,-1:失效)',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- 角色功能
DROP TABLE IF EXISTS `auth_role_function`;
CREATE TABLE `auth_role_function` (
  `role_id` varchar(32) NOT NULL COMMENT '角色ID',
  `function_id` varchar(32) NOT NULL COMMENT '功能ID',
  `function_permission` varchar(200) DEFAULT NULL COMMENT '功能权限编码',
	PRIMARY KEY (`role_id`, `function_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色功能';

-- 部门
DROP TABLE IF EXISTS `auth_department`;
CREATE TABLE `auth_department` (
  `depart_id` varchar(32) NOT NULL COMMENT '部门ID',
  `depart_code` varchar(20) NOT NULL COMMENT '部门编码',
  `depart_name` varchar(100) NOT NULL COMMENT '部门名称',
  `depart_order` int(2) DEFAULT 1 COMMENT '部门顺序',
  `depart_spell` varchar(100) DEFAULT NULL COMMENT '拼音',
  `depart_spell_jane` varchar(50) DEFAULT NULL COMMENT '简拼',
  `depart_level` int(1) DEFAULT 1 COMMENT '字典层级',
  `super_depart_id` varchar(32) DEFAULT NULL COMMENT '父节点',
  `isleaf` int(1) DEFAULT 1 COMMENT '是否叶子节点,1:是,0:否',
  `depart_full_code` varchar(200) DEFAULT NULL COMMENT '部门全路径编码',
  `depart_full_name` varchar(200) DEFAULT NULL COMMENT '部门全路径名称',
  `depart_status` int(1) DEFAULT 0 COMMENT '状态(0:初始,1:有效,-1:失效)',
  PRIMARY KEY (`depart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门';

-- 用户
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `user_code` varchar(20) NOT NULL COMMENT '用户编码',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门ID',
  `user_account` varchar(30) DEFAULT NULL COMMENT '用户账号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `user_idcard` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `user_sex` int(1) DEFAULT NULL COMMENT '性别',
  `user_birthday` date DEFAULT NULL COMMENT '生日',
  `user_avatar` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `user_phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `user_address` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `user_order` int(5) DEFAULT 1 COMMENT '用户顺序',
  `user_spell` varchar(100) DEFAULT NULL COMMENT '拼音',
  `user_spell_jane` varchar(50) DEFAULT NULL COMMENT '简拼',
  `register_date` date DEFAULT NULL COMMENT '注册时间',
  `validity_begin` date DEFAULT NULL COMMENT '有效开始日期',
  `validity_end` date DEFAULT NULL COMMENT '有效结束日期',
  `first_login_type` varchar(10) DEFAULT NULL COMMENT '第一次登录类型',
  `first_login_time` date DEFAULT NULL COMMENT '第一次登录时间',
  `last_login_type` varchar(10) DEFAULT NULL COMMENT '最后一次登录类型',
  `last_login_time` date DEFAULT NULL COMMENT '最后一次登录时间',
  `user_status` int(1) DEFAULT 0 COMMENT '状态(0:初始,1:有效,-1:失效)',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- 用户登录权限
DROP TABLE IF EXISTS `auth_user_permission`;
CREATE TABLE `auth_user_permission` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `user_account` varchar(30) DEFAULT NULL COMMENT '用户账号',
  `login_type` varchar(10) NOT NULL COMMENT '登录类型(WEB端,移动端等)',
  PRIMARY KEY (`user_id`,`login_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录权限';

-- 用户角色
DROP TABLE IF EXISTS `auth_user_role`;
CREATE TABLE `auth_user_role` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `role_id` varchar(32) NOT NULL COMMENT '角色ID',
	PRIMARY KEY (`user_id`, `role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- 登录日志
DROP TABLE IF EXISTS `auth_login_log`;
CREATE TABLE `auth_login_log` (
  `login_log_id` varchar(32) NOT NULL COMMENT '登录日志ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `user_account` varchar(30) DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `login_ip` varchar(20) DEFAULT NULL COMMENT '登录IP地址',
  `login_mac` varchar(20) DEFAULT NULL COMMENT '登录MAC地址',
  `login_type` varchar(10) DEFAULT NULL COMMENT '登录类型',
  `login_time` date DEFAULT NULL COMMENT '登录时间',
  `quit_time` date DEFAULT NULL COMMENT '退出时间',
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录日志';

-- 操作日志
DROP TABLE IF EXISTS `auth_operate_log`;
CREATE TABLE `auth_operate_log` (
  `operate_log_id` varchar(32) NOT NULL COMMENT '操作日志ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `user_account` varchar(30) DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `operate_sql` varchar(4000) DEFAULT NULL COMMENT '操作脚本',
  `operate_type` varchar(20) DEFAULT NULL COMMENT '操作类型',
  `operate_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`operate_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';
