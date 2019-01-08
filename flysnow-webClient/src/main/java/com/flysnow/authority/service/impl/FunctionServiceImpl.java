package com.flysnow.authority.service.impl;

import com.flysnow.authority.model.Function;
import com.flysnow.authority.dao.FunctionDao;
import com.flysnow.authority.service.FunctionService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 功能逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class FunctionServiceImpl extends BaseService implements FunctionService {

	private FunctionDao functionDao;

	public void setFunctionDao(FunctionDao functionDao) {
		this.functionDao = functionDao;
	}

	@Override
	public Function insert(Function entity){
		try {
			return functionDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能添加异常", e);
		}
	}

	@Override
	public boolean delete(Function entity){
		try {
			return functionDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能删除异常", e);
		}
	}

	@Override
	public boolean update(Function entity){
		try {
			return functionDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能修改异常", e);
		}
	}

	@Override
	public Function get(Function entity){
		try {
			return (Function)functionDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能查询异常", e);
		}
	}


	@Override
	public List getList(Function entity){
		try {
			return functionDao.getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return functionDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("功能查询异常", e);
		}
	}

}

