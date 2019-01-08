package com.flysnow.authority.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.authority.dao.UserRoleDao;
import com.flysnow.authority.model.UserRole;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 用户角色数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class UserRoleDaoImpl extends BaseDao implements UserRoleDao {

	private static final String NAMESPACE = UserRoleDao.class.getName() + ".";

	@Override
	public UserRole insert(UserRole entity){
		entity.setUserId(UUIDUtil.genKey());
		entity.setRoleId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertUserRole", entity);
		return entity;
	}

	@Override
	public int delete(UserRole entity){
		return super.delete(NAMESPACE + "deleteUserRole", entity);
	}

	@Override
	public int update(UserRole entity){
		return super.update(NAMESPACE + "updateUserRole", entity);
	}

	@Override
	public UserRole get(UserRole entity){
		return (UserRole)super.queryForObject(NAMESPACE + "getUserRole", entity);
	}

	@Override
	public List getList(UserRole entity){
		return super.queryForList(NAMESPACE + "getUserRoleList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getUserRoleListPage", map, pageNo,pageSize);
	}

}
