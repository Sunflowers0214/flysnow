package com.flysnow.authority.model;

import java.util.Date;

/**
 * @description 角色功能对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class RoleFunction {

	private String roleId;//角色ID
	private String functionId;//功能ID
	private String functionPermission;//功能权限编码
	private RoleFunction where;
	
	//角色ID
	public String getRoleId(){
		return roleId;
	}
	public void setRoleId(String roleId){
		this.roleId =roleId;
	}
	
	//功能ID
	public String getFunctionId(){
		return functionId;
	}
	public void setFunctionId(String functionId){
		this.functionId =functionId;
	}
	
	//功能权限编码
	public String getFunctionPermission(){
		return functionPermission;
	}
	public void setFunctionPermission(String functionPermission){
		this.functionPermission =functionPermission;
	}

	//修改条件
	public RoleFunction getWhere() {
		return where;
	}
	public void setWhere(RoleFunction where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("roleId="+roleId+",");
		sb.append("functionId="+functionId+",");
		sb.append("functionPermission="+functionPermission+",");
		sb.append("}");
		return sb.toString();
	}
}