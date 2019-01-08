package com.flysnow.authority.model;

import java.util.Date;

/**
 * @description 功能权限对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class FunctionPermission {

	private String functionId;//功能ID
	private String functionPermissionCode;//功能权限编码
	private String functionPermissionName;//功能权限名称(添加,修改,查询,删除,导出等)
	private FunctionPermission where;
	
	//功能ID
	public String getFunctionId(){
		return functionId;
	}
	public void setFunctionId(String functionId){
		this.functionId =functionId;
	}
	
	//功能权限编码
	public String getFunctionPermissionCode(){
		return functionPermissionCode;
	}
	public void setFunctionPermissionCode(String functionPermissionCode){
		this.functionPermissionCode =functionPermissionCode;
	}
	
	//功能权限名称(添加,修改,查询,删除,导出等)
	public String getFunctionPermissionName(){
		return functionPermissionName;
	}
	public void setFunctionPermissionName(String functionPermissionName){
		this.functionPermissionName =functionPermissionName;
	}

	//修改条件
	public FunctionPermission getWhere() {
		return where;
	}
	public void setWhere(FunctionPermission where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("functionId="+functionId+",");
		sb.append("functionPermissionCode="+functionPermissionCode+",");
		sb.append("functionPermissionName="+functionPermissionName+",");
		sb.append("}");
		return sb.toString();
	}
}