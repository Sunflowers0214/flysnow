package com.flysnow.authority.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.authority.dao.UserDao;
import com.flysnow.authority.model.User;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 用户数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class UserDaoImpl extends BaseDao implements UserDao {

	private static final String NAMESPACE = UserDao.class.getName() + ".";

	@Override
	public User insert(User entity){
		entity.setUserId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertUser", entity);
		return entity;
	}

	@Override
	public int delete(User entity){
		return super.delete(NAMESPACE + "deleteUser", entity);
	}

	@Override
	public int update(User entity){
		return super.update(NAMESPACE + "updateUser", entity);
	}

	@Override
	public User get(User entity){
		return (User)super.queryForObject(NAMESPACE + "getUser", entity);
	}

	@Override
	public List getList(User entity){
		return super.queryForList(NAMESPACE + "getUserList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getUserListPage", map, pageNo,pageSize);
	}

}
