业务库需同步文件
SELECT * FROM tb_service_category WHERE maintenance_type = '0';
SELECT * FROM tb_service_item WHERE maintenance_type = '0';
SELECT * FROM tb_sys_module;
SELECT * FROM tb_process_model;
SELECT * FROM tb_process_model_node;
SELECT * FROM tb_vital_sign_threshold_config;