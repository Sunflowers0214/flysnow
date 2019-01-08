package com.flysnow.authority.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.authority.dao.FunctionDao;
import com.flysnow.authority.model.Function;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 功能数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class FunctionDaoImpl extends BaseDao implements FunctionDao {

	private static final String NAMESPACE = FunctionDao.class.getName() + ".";

	@Override
	public Function insert(Function entity){
		entity.setFunctionId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertFunction", entity);
		return entity;
	}

	@Override
	public int delete(Function entity){
		return super.delete(NAMESPACE + "deleteFunction", entity);
	}

	@Override
	public int update(Function entity){
		return super.update(NAMESPACE + "updateFunction", entity);
	}

	@Override
	public Function get(Function entity){
		return (Function)super.queryForObject(NAMESPACE + "getFunction", entity);
	}

	@Override
	public List getList(Function entity){
		return super.queryForList(NAMESPACE + "getFunctionList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getFunctionListPage", map, pageNo,pageSize);
	}

}
