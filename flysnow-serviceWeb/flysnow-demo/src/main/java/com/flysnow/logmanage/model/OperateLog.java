package com.flysnow.logmanage.model;

import java.util.Date;

/**
 * @description 操作日志对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class OperateLog {

	private String operateLogId;//操作日志ID
	private String userId;//用户ID
	private String userAccount;//用户账号
	private String userName;//用户名称
	private String operateSql;//操作脚本
	private String operateType;//操作类型
	private Date operateTime;//操作时间
	private OperateLog where;
	
	//操作日志ID
	public String getOperateLogId(){
		return operateLogId;
	}
	public void setOperateLogId(String operateLogId){
		this.operateLogId =operateLogId;
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
	
	//操作脚本
	public String getOperateSql(){
		return operateSql;
	}
	public void setOperateSql(String operateSql){
		this.operateSql =operateSql;
	}
	
	//操作类型
	public String getOperateType(){
		return operateType;
	}
	public void setOperateType(String operateType){
		this.operateType =operateType;
	}
	
	//操作时间
	public Date getOperateTime(){
		return operateTime;
	}
	public void setOperateTime(Date operateTime){
		this.operateTime =operateTime;
	}

	//修改条件
	public OperateLog getWhere() {
		return where;
	}
	public void setWhere(OperateLog where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("operateLogId="+operateLogId+",");
		sb.append("userId="+userId+",");
		sb.append("userAccount="+userAccount+",");
		sb.append("userName="+userName+",");
		sb.append("operateSql="+operateSql+",");
		sb.append("operateType="+operateType+",");
		sb.append("operateTime="+operateTime+",");
		sb.append("}");
		return sb.toString();
	}
}