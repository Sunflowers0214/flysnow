package com.flysnow.authority.dao;

import java.util.List;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 角色功能数据层接口
 * @createtime 2018-12-03
 */
public interface LoginDao {

    /**
     * @param userId
     * @return
     * @description 查询用户功能列表
     */
    public abstract List getUserFunctionListByUserId(String userId);

}