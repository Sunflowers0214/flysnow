package com.flysnow.sysconfig.service.impl;

import com.flysnow.sysconfig.model.DictItem;
import com.flysnow.sysconfig.dao.DictItemDao;
import com.flysnow.sysconfig.service.DictItemService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 字典选项逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class DictItemServiceImpl extends BaseService implements DictItemService {

	private DictItemDao dictItemDao;

	public void setDictItemDao(DictItemDao dictItemDao) {
		this.dictItemDao = dictItemDao;
	}

	@Override
	public DictItem insert(DictItem entity){
		try {
			return dictItemDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典选项添加异常", e);
		}
	}

	@Override
	public boolean delete(DictItem entity){
		try {
			return dictItemDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典选项删除异常", e);
		}
	}

	@Override
	public boolean update(DictItem entity){
		try {
			return dictItemDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典选项修改异常", e);
		}
	}

	@Override
	public DictItem get(DictItem entity){
		try {
			return (DictItem)dictItemDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典选项查询异常", e);
		}
	}


	@Override
	public List getList(DictItem entity){
		try {
			return dictItemDao .getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典选项查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return dictItemDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("字典选项查询异常", e);
		}
	}

}

