package com.flysnow.logmanage.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.logmanage.dao.OperateLogDao;
import com.flysnow.logmanage.model.OperateLog;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 操作日志数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class OperateLogDaoImpl extends BaseDao implements OperateLogDao {

	private static final String NAMESPACE = OperateLogDao.class.getName() + ".";

	@Override
	public OperateLog insert(OperateLog entity){
		entity.setOperateLogId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertOperateLog", entity);
		return entity;
	}

	@Override
	public int delete(OperateLog entity){
		return super.delete(NAMESPACE + "deleteOperateLog", entity);
	}

	@Override
	public int update(OperateLog entity){
		return super.update(NAMESPACE + "updateOperateLog", entity);
	}

	@Override
	public OperateLog get(OperateLog entity){
		return (OperateLog)super.queryForObject(NAMESPACE + "getOperateLog", entity);
	}

	@Override
	public List getList(OperateLog entity){
		return super.queryForList(NAMESPACE + "getOperateLogList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getOperateLogListPage", map, pageNo,pageSize);
	}

}
