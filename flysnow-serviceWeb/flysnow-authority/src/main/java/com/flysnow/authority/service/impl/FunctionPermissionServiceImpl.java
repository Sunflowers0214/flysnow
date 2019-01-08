package com.flysnow.authority.service.impl;

import com.flysnow.authority.model.FunctionPermission;
import com.flysnow.authority.dao.FunctionPermissionDao;
import com.flysnow.authority.service.FunctionPermissionService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 功能权限逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class FunctionPermissionServiceImpl extends BaseService implements FunctionPermissionService {

	private FunctionPermissionDao functionPermissionDao;

	public void setFunctionPermissionDao(FunctionPermissionDao functionPermissionDao) {
		this.functionPermissionDao = functionPermissionDao;
	}

	@Override
	public FunctionPermission insert(FunctionPermission entity){
		try {
			return functionPermissionDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能权限添加异常", e);
		}
	}

	@Override
	public boolean delete(FunctionPermission entity){
		try {
			return functionPermissionDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能权限删除异常", e);
		}
	}

	@Override
	public boolean update(FunctionPermission entity){
		try {
			return functionPermissionDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能权限修改异常", e);
		}
	}

	@Override
	public FunctionPermission get(FunctionPermission entity){
		try {
			return (FunctionPermission)functionPermissionDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能权限查询异常", e);
		}
	}


	@Override
	public List getList(FunctionPermission entity){
		try {
			return functionPermissionDao.getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能权限查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return functionPermissionDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能权限查询异常", e);
		}
	}

}

