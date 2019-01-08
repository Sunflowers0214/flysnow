basic:当前程序使用的数据库基础脚本(数据库建表语句,基础数据)
patch:版本开始过程中的增量补丁脚本

业务库需备份数据
SELECT * FROM tb_service_category WHERE maintenance_type = '0';
SELECT * FROM tb_service_item WHERE maintenance_type = '0';
SELECT * FROM tb_sys_module;
SELECT * FROM tb_process_model;
SELECT * FROM tb_process_model_node;
SELECT * FROM tb_vital_sign_threshold_config;
SELECT * FROM tb_slides;