package com.flysnow.authority.service.impl;

import com.flysnow.authority.model.RoleFunction;
import com.flysnow.authority.dao.RoleFunctionDao;
import com.flysnow.authority.service.RoleFunctionService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 角色功能逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class RoleFunctionServiceImpl extends BaseService implements RoleFunctionService {

	private RoleFunctionDao roleFunctionDao;

	public void setRoleFunctionDao(RoleFunctionDao roleFunctionDao) {
		this.roleFunctionDao = roleFunctionDao;
	}

	@Override
	public RoleFunction insert(RoleFunction entity){
		try {
			return roleFunctionDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("角色功能添加异常", e);
		}
	}

	@Override
	public boolean delete(RoleFunction entity){
		try {
			return roleFunctionDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("角色功能删除异常", e);
		}
	}

	@Override
	public boolean update(RoleFunction entity){
		try {
			return roleFunctionDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("角色功能修改异常", e);
		}
	}

	@Override
	public RoleFunction get(RoleFunction entity){
		try {
			return (RoleFunction)roleFunctionDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("角色功能查询异常", e);
		}
	}


	@Override
	public List getList(RoleFunction entity){
		try {
			return roleFunctionDao.getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("角色功能查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return roleFunctionDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("角色功能查询异常", e);
		}
	}

}

