package com.flysnow.authority.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.authority.dao.FunctionPermissionDao;
import com.flysnow.authority.model.FunctionPermission;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 功能权限数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class FunctionPermissionDaoImpl extends BaseDao implements FunctionPermissionDao {

	private static final String NAMESPACE = FunctionPermissionDao.class.getName() + ".";

	@Override
	public FunctionPermission insert(FunctionPermission entity){
		entity.setFunctionId(UUIDUtil.genKey());
		entity.setFunctionPermissionCode(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertFunctionPermission", entity);
		return entity;
	}

	@Override
	public int delete(FunctionPermission entity){
		return super.delete(NAMESPACE + "deleteFunctionPermission", entity);
	}

	@Override
	public int update(FunctionPermission entity){
		return super.update(NAMESPACE + "updateFunctionPermission", entity);
	}

	@Override
	public FunctionPermission get(FunctionPermission entity){
		return (FunctionPermission)super.queryForObject(NAMESPACE + "getFunctionPermission", entity);
	}

	@Override
	public List getList(FunctionPermission entity){
		return super.queryForList(NAMESPACE + "getFunctionPermissionList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getFunctionPermissionListPage", map, pageNo,pageSize);
	}

}
