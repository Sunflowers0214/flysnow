package com.flysnow.authority.service.impl;

import com.flysnow.authority.model.Department;
import com.flysnow.authority.dao.DepartmentDao;
import com.flysnow.authority.service.DepartmentService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 部门逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class DepartmentServiceImpl extends BaseService implements DepartmentService {

	private DepartmentDao departmentDao;

	public void setDepartmentDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}

	@Override
	public Department insert(Department entity){
		try {
			return departmentDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("部门添加异常", e);
		}
	}

	@Override
	public boolean delete(Department entity){
		try {
			return departmentDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("部门删除异常", e);
		}
	}

	@Override
	public boolean update(Department entity){
		try {
			return departmentDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("部门修改异常", e);
		}
	}

	@Override
	public Department get(Department entity){
		try {
			return (Department)departmentDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("部门查询异常", e);
		}
	}


	@Override
	public List getList(Department entity){
		try {
			return departmentDao.getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("部门查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return departmentDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("部门查询异常", e);
		}
	}

}

