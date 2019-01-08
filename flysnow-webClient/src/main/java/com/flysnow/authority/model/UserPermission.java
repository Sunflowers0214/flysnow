package com.flysnow.authority.model;

import java.util.Date;

/**
 * @description 用户登录权限对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class UserPermission {

	private String userId;//用户ID
	private String userAccount;//用户账号
	private String loginType;//登录类型(WEB端,移动端等)
	private UserPermission where;
	
	//用户ID
	public String getUserId(){
		return userId;
	}
	public void setUserId(String userId){
		this.userId =userId;
	}
	
	//用户账号
	public String getUserAccount(){
		return userAccount;
	}
	public void setUserAccount(String userAccount){
		this.userAccount =userAccount;
	}
	
	//登录类型(WEB端,移动端等)
	public String getLoginType(){
		return loginType;
	}
	public void setLoginType(String loginType){
		this.loginType =loginType;
	}

	//修改条件
	public UserPermission getWhere() {
		return where;
	}
	public void setWhere(UserPermission where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("userId="+userId+",");
		sb.append("userAccount="+userAccount+",");
		sb.append("loginType="+loginType+",");
		sb.append("}");
		return sb.toString();
	}
}