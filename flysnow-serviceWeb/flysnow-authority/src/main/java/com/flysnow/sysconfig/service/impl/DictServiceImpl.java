package com.flysnow.sysconfig.service.impl;

import com.flysnow.sysconfig.model.Dict;
import com.flysnow.sysconfig.dao.DictDao;
import com.flysnow.sysconfig.service.DictService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 字典逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class DictServiceImpl extends BaseService implements DictService {

	private DictDao dictDao;

	public void setDictDao(DictDao dictDao) {
		this.dictDao = dictDao;
	}

	@Override
	public Dict insert(Dict entity){
		try {
			return dictDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典添加异常", e);
		}
	}

	@Override
	public boolean delete(Dict entity){
		try {
			return dictDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典删除异常", e);
		}
	}

	@Override
	public boolean update(Dict entity){
		try {
			return dictDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典修改异常", e);
		}
	}

	@Override
	public Dict get(Dict entity){
		try {
			return (Dict)dictDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典查询异常", e);
		}
	}


	@Override
	public List getList(Dict entity){
		try {
			return dictDao .getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return dictDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典查询异常", e);
		}
	}

}

