package com.flysnow.sysconfig.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.sysconfig.dao.DictDao;
import com.flysnow.sysconfig.model.Dict;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 字典数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class DictDaoImpl extends BaseDao implements DictDao {

	private static final String NAMESPACE = DictDao.class.getName() + ".";

	@Override
	public Dict insert(Dict entity){
		entity.setDictId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertDict", entity);
		return entity;
	}

	@Override
	public int delete(Dict entity){
		return super.delete(NAMESPACE + "deleteDict", entity);
	}

	@Override
	public int update(Dict entity){
		return super.update(NAMESPACE + "updateDict", entity);
	}

	@Override
	public Dict get(Dict entity){
		return (Dict)super.queryForObject(NAMESPACE + "getDict", entity);
	}

	@Override
	public List getList(Dict entity){
		return super.queryForList(NAMESPACE + "getDictList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getDictListPage", map, pageNo,pageSize);
	}

}
