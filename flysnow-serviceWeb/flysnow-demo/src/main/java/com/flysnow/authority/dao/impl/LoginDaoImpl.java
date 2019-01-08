package com.flysnow.authority.dao.impl;

import com.flysnow.common.base.BaseDao;
import com.flysnow.authority.dao.LoginDao;
import org.omg.CORBA.OBJ_ADAPTER;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 角色功能数据层实现
 * @createtime 2018-12-03
 */
public class LoginDaoImpl extends BaseDao implements LoginDao {

    private static final String NAMESPACE = LoginDao.class.getName() + ".";

    @Override
    public List getUserFunctionListByUserId(String userId) {
        Map<String, Object> map = new HashMap();
        map.put("userId", userId);
        return super.queryForList(NAMESPACE + "getUserFunctionListByUserId", map);
    }
}
