package com.flysnow.sysconfig.service.impl;

import com.flysnow.sysconfig.model.Config;
import com.flysnow.sysconfig.dao.ConfigDao;
import com.flysnow.sysconfig.service.ConfigService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 全局参数逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class ConfigServiceImpl extends BaseService implements ConfigService {

	private ConfigDao configDao;

	public void setConfigDao(ConfigDao configDao) {
		this.configDao = configDao;
	}

	@Override
	public Config insert(Config entity){
		try {
			return configDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("全局参数添加异常", e);
		}
	}

	@Override
	public boolean delete(Config entity){
		try {
			return configDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("全局参数删除异常", e);
		}
	}

	@Override
	public boolean update(Config entity){
		try {
			return configDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("全局参数修改异常", e);
		}
	}

	@Override
	public Config get(Config entity){
		try {
			return (Config)configDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("全局参数查询异常", e);
		}
	}


	@Override
	public List getList(Config entity){
		try {
			return configDao .getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("全局参数查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return configDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("全局参数查询异常", e);
		}
	}

}

