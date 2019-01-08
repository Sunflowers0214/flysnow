package com.flysnow.logmanage.model;

import java.util.Date;

/**
 * @description 登录日志对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class LoginLog {

	private String loginLogId;//登录日志ID
	private String userId;//用户ID
	private String userAccount;//用户账号
	private String userName;//用户名称
	private String loginIp;//登录IP地址
	private String loginMac;//登录MAC地址
	private String loginType;//登录类型
	private Date loginTime;//登录时间
	private Date quitTime;//退出时间
	private LoginLog where;
	
	//登录日志ID
	public String getLoginLogId(){
		return loginLogId;
	}
	public void setLoginLogId(String loginLogId){
		this.loginLogId =loginLogId;
	}
	
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
	
	//用户名称
	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName =userName;
	}
	
	//登录IP地址
	public String getLoginIp(){
		return loginIp;
	}
	public void setLoginIp(String loginIp){
		this.loginIp =loginIp;
	}
	
	//登录MAC地址
	public String getLoginMac(){
		return loginMac;
	}
	public void setLoginMac(String loginMac){
		this.loginMac =loginMac;
	}
	
	//登录类型
	public String getLoginType(){
		return loginType;
	}
	public void setLoginType(String loginType){
		this.loginType =loginType;
	}
	
	//登录时间
	public Date getLoginTime(){
		return loginTime;
	}
	public void setLoginTime(Date loginTime){
		this.loginTime =loginTime;
	}
	
	//退出时间
	public Date getQuitTime(){
		return quitTime;
	}
	public void setQuitTime(Date quitTime){
		this.quitTime =quitTime;
	}

	//修改条件
	public LoginLog getWhere() {
		return where;
	}
	public void setWhere(LoginLog where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("loginLogId="+loginLogId+",");
		sb.append("userId="+userId+",");
		sb.append("userAccount="+userAccount+",");
		sb.append("userName="+userName+",");
		sb.append("loginIp="+loginIp+",");
		sb.append("loginMac="+loginMac+",");
		sb.append("loginType="+loginType+",");
		sb.append("loginTime="+loginTime+",");
		sb.append("quitTime="+quitTime+",");
		sb.append("}");
		return sb.toString();
	}
}