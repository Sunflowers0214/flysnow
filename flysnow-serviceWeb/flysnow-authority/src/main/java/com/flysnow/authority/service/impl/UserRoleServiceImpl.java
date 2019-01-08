package com.flysnow.authority.service.impl;

import com.flysnow.authority.model.UserRole;
import com.flysnow.authority.dao.UserRoleDao;
import com.flysnow.authority.service.UserRoleService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 用户角色逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class UserRoleServiceImpl extends BaseService implements UserRoleService {

	private UserRoleDao userRoleDao;

	public void setUserRoleDao(UserRoleDao userRoleDao) {
		this.userRoleDao = userRoleDao;
	}

	@Override
	public UserRole insert(UserRole entity){
		try {
			return userRoleDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("用户角色添加异常", e);
		}
	}

	@Override
	public boolean delete(UserRole entity){
		try {
			return userRoleDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("用户角色删除异常", e);
		}
	}

	@Override
	public boolean update(UserRole entity){
		try {
			return userRoleDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("用户角色修改异常", e);
		}
	}

	@Override
	public UserRole get(UserRole entity){
		try {
			return (UserRole)userRoleDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("用户角色查询异常", e);
		}
	}


	@Override
	public List getList(UserRole entity){
		try {
			return userRoleDao.getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("用户角色查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return userRoleDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("用户角色查询异常", e);
		}
	}

}

