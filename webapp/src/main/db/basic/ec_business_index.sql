#添加索引
ALTER TABLE tb_service_task ADD INDEX tb_service_task_task_type_idx (task_type);
ALTER TABLE tb_service_task ADD INDEX tb_service_task_valid_flag_idx (valid_flag);
ALTER TABLE tb_service_task ADD INDEX tb_service_task_org_idx (institution_id);
ALTER TABLE tb_service_task ADD INDEX tb_service_task_receiver_id_idx (receiver_id);
ALTER TABLE tb_service_task ADD INDEX tb_service_task_plan_exec_date_idx (plan_exec_date);
ALTER TABLE tb_service_task ADD INDEX tb_service_task_dispatch_type_idx (dispatch_type);
ALTER TABLE tb_service_task ADD INDEX tb_service_task_task_status_idx (task_status);
ALTER TABLE tb_service_task ADD INDEX tb_service_task_business_type_idx (business_type);
ALTER TABLE tb_service_task ADD INDEX tb_service_task_plan_elder_code_idx (elder_code);
ALTER TABLE tb_sys_shift_room ADD INDEX tb_sys_shift_room_institution_id_idx (institution_id);
ALTER TABLE tb_shift_arrange ADD INDEX tb_shift_arrange_institution_id_idx (institution_id);
ALTER TABLE tb_employee_info ADD INDEX tb_employee_info_institution_id_idx (institution_id);
ALTER TABLE tb_bed_change ADD INDEX tb_bed_change_institution_id_idx (institution_id);
ALTER TABLE tb_shift_arrange ADD INDEX tb_shift_arrange_shift_code_idx (shift_code);

#查看索引
show index from tb_service_task;
show index from tb_sys_shift_room;
show index from tb_shift_arrange;
show index from tb_employee_info;
show index from tb_bed_change;
show index from tb_shift_arrange;

#删除索引
DROP INDEX index_name ON talbe_name