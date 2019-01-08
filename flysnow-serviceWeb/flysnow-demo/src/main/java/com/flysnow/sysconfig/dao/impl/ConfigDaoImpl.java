package com.flysnow.sysconfig.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.sysconfig.dao.ConfigDao;
import com.flysnow.sysconfig.model.Config;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 全局参数数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class ConfigDaoImpl extends BaseDao implements ConfigDao {

	private static final String NAMESPACE = ConfigDao.class.getName() + ".";

	@Override
	public Config insert(Config entity){
		entity.setConfigId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertConfig", entity);
		return entity;
	}

	@Override
	public int delete(Config entity){
		return super.delete(NAMESPACE + "deleteConfig", entity);
	}

	@Override
	public int update(Config entity){
		return super.update(NAMESPACE + "updateConfig", entity);
	}

	@Override
	public Config get(Config entity){
		return (Config)super.queryForObject(NAMESPACE + "getConfig", entity);
	}

	@Override
	public List getList(Config entity){
		return super.queryForList(NAMESPACE + "getConfigList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getConfigListPage", map, pageNo,pageSize);
	}

}
