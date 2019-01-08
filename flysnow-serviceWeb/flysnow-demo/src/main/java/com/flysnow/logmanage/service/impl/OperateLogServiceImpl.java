package com.flysnow.logmanage.service.impl;

import com.flysnow.logmanage.model.OperateLog;
import com.flysnow.logmanage.dao.OperateLogDao;
import com.flysnow.logmanage.service.OperateLogService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 操作日志逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class OperateLogServiceImpl extends BaseService implements OperateLogService {

	private OperateLogDao operateLogDao;

	public void setOperateLogDao(OperateLogDao operateLogDao) {
		this.operateLogDao = operateLogDao;
	}

	@Override
	public OperateLog insert(OperateLog entity){
		try {
			return operateLogDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("操作日志添加异常", e);
		}
	}

	@Override
	public boolean delete(OperateLog entity){
		try {
			return operateLogDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("操作日志删除异常", e);
		}
	}

	@Override
	public boolean update(OperateLog entity){
		try {
			return operateLogDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("操作日志修改异常", e);
		}
	}

	@Override
	public OperateLog get(OperateLog entity){
		try {
			return (OperateLog)operateLogDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("操作日志查询异常", e);
		}
	}


	@Override
	public List getList(OperateLog entity){
		try {
			return operateLogDao .getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("操作日志查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return operateLogDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("操作日志查询异常", e);
		}
	}

}

