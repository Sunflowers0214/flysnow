
/*更新评估体系机构id的脚本*/
update t_kb_aq_subject t set t.orgid=5 where t.orgid=2;
update t_kb_aq_subject_option t set t.orgid=5 where t.orgid=2;
update t_kb_assess_algorithm t set t.orgid=5 where t.orgid=2;
update t_kb_assess_guide t set t.orgid=5 where t.orgid=2;
update t_kb_assess_questionnaire t set t.orgid=5 where t.orgid=2;
update t_kb_gender_rule t set t.orgid=5 where t.orgid=2;
update t_kb_guide t set t.orgid=5 where t.orgid=2;
update t_kb_questionaire_algorithm t set t.orgid=5 where t.orgid=2;
update t_kb_questionnaire_assess_standard t set t.orgid=5 where t.orgid=2;
update t_kb_questionnaire_template t set t.orgid=5 where t.orgid=2;
update t_kb_subject_assess_standard t set t.orgid=5 where t.orgid=2;