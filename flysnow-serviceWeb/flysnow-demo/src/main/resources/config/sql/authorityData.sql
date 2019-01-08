-- 字典项
-- 功能权限编码
INSERT INTO `auth_dict` (`dict_id`, `dict_code`, `dict_name`, `dict_order`, `dict_spell`, `dict_spell_jane`, `dict_type`, `dict_status`)
VALUES ('3c7c0870f6c911e88ec300ffee9c3223', 'function_permission', '功能权限编码', '1', 'gong neng quan xian bian ma', 'GNQXBM', '0', '0');
INSERT INTO `auth_dict_item` (`item_id`, `dict_id`, `item_code`, `item_name`, `append_value`, `item_order`, `item_spell`, `item_spell_jane`, `item_level`, `super_item_id`, `isleaf`, `item_full_code`, `item_status`)
VALUES ('9a357262f6c911e88ec300ffee9c3223', '3c7c0870f6c911e88ec300ffee9c3223', 'query', '查询', NULL, '1', NULL, NULL, '1', NULL, '1', NULL, '0');
INSERT INTO `auth_dict_item` (`item_id`, `dict_id`, `item_code`, `item_name`, `append_value`, `item_order`, `item_spell`, `item_spell_jane`, `item_level`, `super_item_id`, `isleaf`, `item_full_code`, `item_status`)
VALUES ('4a06f149f6c911e88ec300ffee9c3223', '3c7c0870f6c911e88ec300ffee9c3223', 'insert', '添加', NULL, '2', NULL, NULL, '1', '', '1', NULL, '0');
INSERT INTO `auth_dict_item` (`item_id`, `dict_id`, `item_code`, `item_name`, `append_value`, `item_order`, `item_spell`, `item_spell_jane`, `item_level`, `super_item_id`, `isleaf`, `item_full_code`, `item_status`)
VALUES ('6b014c34f6c911e88ec300ffee9c3223', '3c7c0870f6c911e88ec300ffee9c3223', 'update', '修改', NULL, '3', NULL, NULL, '1', NULL, '1', NULL, '0');
INSERT INTO `auth_dict_item` (`item_id`, `dict_id`, `item_code`, `item_name`, `append_value`, `item_order`, `item_spell`, `item_spell_jane`, `item_level`, `super_item_id`, `isleaf`, `item_full_code`, `item_status`)
VALUES ('743e6ca5f6c911e88ec300ffee9c3223', '3c7c0870f6c911e88ec300ffee9c3223', 'delete', '删除', NULL, '4', NULL, NULL, '1', NULL, '1', NULL, '0');
INSERT INTO `auth_dict_item` (`item_id`, `dict_id`, `item_code`, `item_name`, `append_value`, `item_order`, `item_spell`, `item_spell_jane`, `item_level`, `super_item_id`, `isleaf`, `item_full_code`, `item_status`)
VALUES ('d01b2615f6c911e88ec300ffee9c3223', '3c7c0870f6c911e88ec300ffee9c3223', 'download', '下载', NULL, '5', NULL, NULL, '1', NULL, '1', NULL, '0');

-- 用户登录权限
INSERT INTO `auth_dict` (`dict_id`, `dict_code`, `dict_name`, `dict_order`, `dict_spell`, `dict_spell_jane`, `dict_type`, `dict_status`)
VALUES ('3c7c0870f6c91wdsxec300ffee9cwdfs', 'login_type', '用户登录编码', '1', 'gong neng quan xian bian ma', 'GNQXBM', '0', '0');
INSERT INTO `auth_dict_item` (`item_id`, `dict_id`, `item_code`, `item_name`, `append_value`, `item_order`, `item_spell`, `item_spell_jane`, `item_level`, `super_item_id`, `isleaf`, `item_full_code`, `item_status`)
VALUES ('dfghj262f6c911e88ec300ffee9crdfc', '3c7c0870f6c91wdsxec300ffee9cwdfs', 'web', 'WEB端(浏览器)', NULL, '1', NULL, NULL, '1', NULL, '1', NULL, '0');
INSERT INTO `auth_dict_item` (`item_id`, `dict_id`, `item_code`, `item_name`, `append_value`, `item_order`, `item_spell`, `item_spell_jane`, `item_level`, `super_item_id`, `isleaf`, `item_full_code`, `item_status`)
VALUES ('dfghjk49f6c911e88ec300ffee9tyjds', '3c7c0870f6c91wdsxec300ffee9cwdfs', 'phone', '移动端', NULL, '2', NULL, NULL, '1', '', '1', NULL, '0');

-- 功能
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8edce5f6c711e88ec300ffee9c3223', 'sysconfig', '系统配置', '#', '1', 'xi tong pei zhi', 'XTPZ', '0', 'sysconfig', '系统配置', '1', '0', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8ede88f6c711e88ec300ffee9c3223', 'authroity', '权限管理', '#', '2', 'quan xian guan li', 'QXGL', '0', 'authroity', '权限管理', '1', '0', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8edf00f6c711e88ec300ffee9c3223', 'logmanage', '日志管理', '#', '3', 'ri zhi guan li', 'RZGL', '0', 'logmanage', '日志管理', '1', '0', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8edf55f6c711e88ec300ffee9c3223', 'configmanage', '全局变量管理', '#', '1', 'quan ju bian liang guan li', 'QJBLGL', 'ca8edce5f6c711e88ec300ffee9c3223', 'sysconfig/configmanage', '系统配置/全局变量管理', '2', '1', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8edfb3f6c711e88ec300ffee9c3223', 'dictmanage', '字典管理', '#', '2', 'zi dian guan li', 'ZDGL', 'ca8edce5f6c711e88ec300ffee9c3223', 'sysconfig/dictmanage', '系统配置/字典管理', '2', '1', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8ee009f6c711e88ec300ffee9c3223', 'functionmanage', '功能管理', '#', '1', 'gong neng guan li', 'GNGL', 'ca8ede88f6c711e88ec300ffee9c3223', 'authroity/functionmanage', '系统配置/功能管理', '2', '1', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8ee101f6c711e88ec300ffee9c3223', 'rolemanage', '角色管理', '#', '2', 'jue se guan li', 'JSGL', 'ca8ede88f6c711e88ec300ffee9c3223', 'authroity/rolemanage', '权限管理/角色管理', '2', '1', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8ee156f6c711e88ec300ffee9c3223', 'usermanage', '用户管理', '#', '3', 'yong hu guan li', 'YHGL', 'ca8ede88f6c711e88ec300ffee9c3223', 'authroity/usermanage', '权限管理/用户管理', '2', '1', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8ee1a8f6c711e88ec300ffee9c3223', 'loginlogmanage', '登录日志管理', '#', '1', 'deng lu ri zhi guan li', 'DLRZGL', 'ca8edf00f6c711e88ec300ffee9c3223', 'logmanage/loginlogmanage', '日志管理/登录日志管理', '2', '1', '1', '0');
INSERT INTO `auth_function` (`function_id`, `function_code`, `function_name`, `function_entry`, `function_order`, `function_spell`, `function_spell_jane`, `super_function_id`, `function_full_code`, `function_full_name`, `function_level`, `isleaf`, `function_type`, `function_status`)
VALUES ('ca8ee1f5f6c711e88ec300ffee9c3223', 'operatelogmanage', '操作日志管理', '#', '2', 'cao zuo ri zhi guan li', 'CZRZGL', 'ca8edf00f6c711e88ec300ffee9c3223', 'logmanage/operatelogmanage', '日志管理/操作日志管理', '2', '1', '1', '0');

-- 功能权限
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edf55f6c711e88ec300ffee9c3223', 'delete', '删除');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edf55f6c711e88ec300ffee9c3223', 'export', '导出');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edf55f6c711e88ec300ffee9c3223', 'import', '导入');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edf55f6c711e88ec300ffee9c3223', 'insert', '添加');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edf55f6c711e88ec300ffee9c3223', 'query', '查询');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edf55f6c711e88ec300ffee9c3223', 'update', '修改');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edfb3f6c711e88ec300ffee9c3223', 'delete', '删除');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edfb3f6c711e88ec300ffee9c3223', 'export', '导出');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edfb3f6c711e88ec300ffee9c3223', 'import', '导入');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edfb3f6c711e88ec300ffee9c3223', 'insert', '添加');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edfb3f6c711e88ec300ffee9c3223', 'query', '查询');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8edfb3f6c711e88ec300ffee9c3223', 'update', '修改');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee009f6c711e88ec300ffee9c3223', 'delete', '删除');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee009f6c711e88ec300ffee9c3223', 'export', '导出');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee009f6c711e88ec300ffee9c3223', 'import', '导入');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee009f6c711e88ec300ffee9c3223', 'insert', '添加');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee009f6c711e88ec300ffee9c3223', 'query', '查询');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee009f6c711e88ec300ffee9c3223', 'update', '修改');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee101f6c711e88ec300ffee9c3223', 'delete', '删除');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee101f6c711e88ec300ffee9c3223', 'export', '导出');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee101f6c711e88ec300ffee9c3223', 'import', '导入');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee101f6c711e88ec300ffee9c3223', 'insert', '添加');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee101f6c711e88ec300ffee9c3223', 'query', '查询');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee101f6c711e88ec300ffee9c3223', 'update', '修改');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee156f6c711e88ec300ffee9c3223', 'delete', '删除');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee156f6c711e88ec300ffee9c3223', 'export', '导出');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee156f6c711e88ec300ffee9c3223', 'import', '导入');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee156f6c711e88ec300ffee9c3223', 'insert', '添加');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee156f6c711e88ec300ffee9c3223', 'query', '查询');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee156f6c711e88ec300ffee9c3223', 'update', '修改');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1a8f6c711e88ec300ffee9c3223', 'delete', '删除');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1a8f6c711e88ec300ffee9c3223', 'export', '导出');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1a8f6c711e88ec300ffee9c3223', 'import', '导入');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1a8f6c711e88ec300ffee9c3223', 'insert', '添加');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1a8f6c711e88ec300ffee9c3223', 'query', '查询');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1a8f6c711e88ec300ffee9c3223', 'update', '修改');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1f5f6c711e88ec300ffee9c3223', 'delete', '删除');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1f5f6c711e88ec300ffee9c3223', 'export', '导出');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1f5f6c711e88ec300ffee9c3223', 'import', '导入');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1f5f6c711e88ec300ffee9c3223', 'insert', '添加');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1f5f6c711e88ec300ffee9c3223', 'query', '查询');
INSERT INTO `auth_function_permission` (`function_id`, `function_permission_code`, `function_permission_name`) VALUES ('ca8ee1f5f6c711e88ec300ffee9c3223', 'update', '修改');

-- 角色
INSERT INTO `auth_role` (`role_id`, `role_code`, `role_name`, `role_desc`, `role_order`, `role_spell`, `role_spell_jane`, `role_status`)
VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'adminRole', '超级管理员', '超级管理员，系统所有权限', '1', 'chao ji guan li yuan', 'CJGLY', '0');

-- 角色权限
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8edce5f6c711e88ec300ffee9c3223', NULL);
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8ede88f6c711e88ec300ffee9c3223', NULL);
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8edf00f6c711e88ec300ffee9c3223', NULL);
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8edf55f6c711e88ec300ffee9c3223', 'delete,export,import,insert,query,update');
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8edfb3f6c711e88ec300ffee9c3223', 'delete,export,import,insert,query,update');
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8ee009f6c711e88ec300ffee9c3223', 'delete,export,import,insert,query,update');
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8ee101f6c711e88ec300ffee9c3223', 'delete,export,import,insert,query,update');
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8ee156f6c711e88ec300ffee9c3223', 'delete,export,import,insert,query,update');
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8ee1a8f6c711e88ec300ffee9c3223', 'delete,export,import,insert,query,update');
INSERT INTO `auth_role_function` (`role_id`, `function_id`, `function_permission`) VALUES ('9adb25b26ca54b668eceb5a61b9c15cf', 'ca8ee1f5f6c711e88ec300ffee9c3223', 'delete,export,import,insert,query,update');

-- 用户
INSERT INTO `auth_user` (`user_id`, `user_code`, `user_name`, `depart_id`, `user_account`, `password`, `user_idcard`, `user_sex`, `user_birthday`, `user_avatar`, `user_phone`, `user_address`, `user_order`, `user_spell`, `user_spell_jane`, `register_date`, `validity_begin`, `validity_end`, `first_login_type`, `first_login_time`, `last_login_type`, `last_login_time`, `user_status`) VALUES ('ca8fhjklr6c711e88ec300ffee9c3223', 'admin', '超级管理员', NULL, 'admin', '111111', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- 用户权限
INSERT INTO `auth_user_permission` (`user_id`, `user_account`, `login_type`) VALUES ('ca8fhjklr6c711e88ec300ffee9c3223', 'admin', 'web');

-- 用户角色
INSERT INTO `auth_user_role` (`user_id`, `role_id`) VALUES ('ca8fhjklr6c711e88ec300ffee9c3223', '9adb25b26ca54b668eceb5a61b9c15cf');
