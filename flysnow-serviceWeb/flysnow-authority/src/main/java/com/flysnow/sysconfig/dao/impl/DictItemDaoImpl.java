package com.flysnow.sysconfig.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.sysconfig.dao.DictItemDao;
import com.flysnow.sysconfig.model.DictItem;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 字典选项数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class DictItemDaoImpl extends BaseDao implements DictItemDao {

	private static final String NAMESPACE = DictItemDao.class.getName() + ".";

	@Override
	public DictItem insert(DictItem entity){
		entity.setItemId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertDictItem", entity);
		return entity;
	}

	@Override
	public int delete(DictItem entity){
		return super.delete(NAMESPACE + "deleteDictItem", entity);
	}

	@Override
	public int update(DictItem entity){
		return super.update(NAMESPACE + "updateDictItem", entity);
	}

	@Override
	public DictItem get(DictItem entity){
		return (DictItem)super.queryForObject(NAMESPACE + "getDictItem", entity);
	}

	@Override
	public List getList(DictItem entity){
		return super.queryForList(NAMESPACE + "getDictItemList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getDictItemListPage", map, pageNo,pageSize);
	}

}
