package com.flysnow.authority.model;

import java.util.Date;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 用户角色对象
 * @createtime 2018-12-03
 */
public class UserRole {

    private String userId;//用户ID
    private String roleId;//角色ID
    private String roleCode;//角色编码
    private String roleName;//角色名称
    private UserRole where;

    //用户ID
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    //角色ID
    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    //修改条件
    public UserRole getWhere() {
        return where;
    }

    public void setWhere(UserRole where) {
        this.where = where;
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("{");
        sb.append("userId='" + userId + "',");
        sb.append("roleId='" + roleId + "',");
        sb.append("roleCode='" + roleCode + "',");
        sb.append("roleName='" + roleName + "',");
        sb.append("}");
        return sb.toString();
    }
}