package com.flysnow.authority.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.authority.dao.RoleFunctionDao;
import com.flysnow.authority.model.RoleFunction;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 角色功能数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class RoleFunctionDaoImpl extends BaseDao implements RoleFunctionDao {

	private static final String NAMESPACE = RoleFunctionDao.class.getName() + ".";

	@Override
	public RoleFunction insert(RoleFunction entity){
		entity.setRoleId(UUIDUtil.genKey());
		entity.setFunctionId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertRoleFunction", entity);
		return entity;
	}

	@Override
	public int delete(RoleFunction entity){
		return super.delete(NAMESPACE + "deleteRoleFunction", entity);
	}

	@Override
	public int update(RoleFunction entity){
		return super.update(NAMESPACE + "updateRoleFunction", entity);
	}

	@Override
	public RoleFunction get(RoleFunction entity){
		return (RoleFunction)super.queryForObject(NAMESPACE + "getRoleFunction", entity);
	}

	@Override
	public List getList(RoleFunction entity){
		return super.queryForList(NAMESPACE + "getRoleFunctionList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getRoleFunctionListPage", map, pageNo,pageSize);
	}

}
