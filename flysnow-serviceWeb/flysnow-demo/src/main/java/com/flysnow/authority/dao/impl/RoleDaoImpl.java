package com.flysnow.authority.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.authority.dao.RoleDao;
import com.flysnow.authority.model.Role;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 角色数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class RoleDaoImpl extends BaseDao implements RoleDao {

	private static final String NAMESPACE = RoleDao.class.getName() + ".";

	@Override
	public Role insert(Role entity){
		entity.setRoleId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertRole", entity);
		return entity;
	}

	@Override
	public int delete(Role entity){
		return super.delete(NAMESPACE + "deleteRole", entity);
	}

	@Override
	public int update(Role entity){
		return super.update(NAMESPACE + "updateRole", entity);
	}

	@Override
	public Role get(Role entity){
		return (Role)super.queryForObject(NAMESPACE + "getRole", entity);
	}

	@Override
	public List getList(Role entity){
		return super.queryForList(NAMESPACE + "getRoleList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getRoleListPage", map, pageNo,pageSize);
	}

}
