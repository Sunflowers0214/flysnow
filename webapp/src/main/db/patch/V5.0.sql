-- 接口
INSERT INTO `t_interface_config` (`id`, `versionfunkey`, `name`, `service_object`, `operationtype`, `objtype`, `serviceid`, `address`, `service_name`, `service_method`, `logincheck`, `interface_person`, `remark`, `interface_status`) VALUES ('76f301177ab64462ba87ca73ada0fb70', 'paymentCashUrl', '现金支付', 'common', 'update', '01;11', '8076fe9526da11e6baec005056ac6d5d', '/pay/payOrder_paymentCash.action', '', '', 'Y', NULL, '现金支付', '0');
INSERT INTO `t_interface_config` (`id`, `versionfunkey`, `name`, `service_object`, `operationtype`, `objtype`, `serviceid`, `address`, `service_name`, `service_method`, `logincheck`, `interface_person`, `remark`, `interface_status`) VALUES ('8ca46961b5ac4214bcdd9589938d30e6', 'paymentAccountUrl', '账户支付', 'common', 'update', '01;11', '8076fe9526da11e6baec005056ac6d5d', '/pay/payOrder_paymentAccount.action', '', '', 'Y', NULL, '账户支付', '0');
INSERT INTO `t_interface_config` (`id`, `versionfunkey`, `name`, `service_object`, `operationtype`, `objtype`, `serviceid`, `address`, `service_name`, `service_method`, `logincheck`, `interface_person`, `remark`, `interface_status`) VALUES ('cc5ca2c85f1448978a92a2f500841357', 'payOrderPaymentNativeUrl', '获取支付二维码', 'common', 'query', '01;11', '8076fe9526da11e6baec005056ac6d5d', '/pay/payOrder_paymentNative.action', '', '', 'Y', NULL, '获取支付二维码', '0');
INSERT INTO `t_interface_config` (`id`, `versionfunkey`, `name`, `service_object`, `operationtype`, `objtype`, `serviceid`, `address`, `service_name`, `service_method`, `logincheck`, `interface_person`, `remark`, `interface_status`) VALUES ('ac10c52d1fe24ff3909307570e4bd2b9', 'querySysCityTreeUrl', '获取省市县列表', 'common', 'query', '01;11', '8076fe9526da11e6baec005056ac6d5d', '/commonbase/querySysCityTree_queryDict', '', '', 'Y', NULL, '获取省市县列表', '0');


-- 开发，测试已改
UPDATE `t_sys_menu` SET `FUNCENTRY`='business/omp/jsp/Dict_itemCommonMan.jsp' WHERE (`MENUCODE`='commonitemcode_omp');

--开发已改
UPDATE `t_interface_config` SET `address`='/manager/dean/querylist_deanElder' WHERE (`id`='28d5da65dcd911e88e920242ac110004');
UPDATE `t_interface_config` SET `address`='/commonbase/queryDictforMobile_queryDict' WHERE (`id`='2073b9ec924b11e8a00468f728ca3da1');
UPDATE `t_interface_config` SET `address`='/manager/dean/queryEmployeelist_deanEmployee' WHERE (`id`='292778bddcd911e88e920242ac110004');
UPDATE `t_interface_config` SET `address`='/manager/dean/querylist_deanAttention' WHERE (`id`='9016671f52a74c42b0afc9a1a80bc0e9');
UPDATE `t_interface_config` SET `address`='/manager/dean/queryGobacklist_deanElder' WHERE (`id`='29066375dcd911e88e920242ac110004');
UPDATE `t_interface_config` SET `address`='/manager/dean/queryLeavelist_deanEmployee' WHERE (`id`='2978e3c2dcd911e88e920242ac110004');

-- 支付地址:开发已改
UPDATE t_interface_config SET address = '/pay/paymentApp_payOrder.action' WHERE id = '6e0498e3cc404c0584e7abd4071c134c';
UPDATE t_interface_config SET address = '/pay/paymentCash_payOrder.action' WHERE id = '76f301177ab64462ba87ca73ada0fb70';
UPDATE t_interface_config SET address = '/pay/paymentAccount_payOrder.action' WHERE id = '8ca46961b5ac4214bcdd9589938d30e6';
UPDATE t_interface_config SET address = '/pay/paymentAppSubmit_payOrder.action' WHERE id = 'a8696a3f0c684c46a5fa351691bdb7e3';
UPDATE t_interface_config SET address = '/pay/paymentNative_payOrder.action' WHERE id = 'cc5ca2c85f1448978a92a2f500841357';

--投诉管理增加接待员工姓名字段(开发测试已运行)
ALTER TABLE `tb_crm_complaint_info`
ADD COLUMN `recieper_name`  varchar(20) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '接待员工' AFTER `recieper`;