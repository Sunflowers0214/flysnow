package com.flysnow.authority.model;

import java.util.Date;

/**
 * @description 功能对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class Function {

	private String functionId;//功能ID
	private String functionCode;//功能编码
	private String functionName;//功能名称
	private String functionEntry;//功能功能入口
	private Integer functionOrder;//功能顺序
	private String functionSpell;//拼音
	private String functionSpellJane;//简拼
	private String superFunctionId;//父节点
	private String functionFullCode;//功能全路径编码
	private String functionFullName;//功能全路径名称
	private Integer functionLevel;//功能层级
	private Integer isleaf;//是否叶子节点,1:是,0:否
	private Integer functionType;//功能类型(0:正常功能,1:管理功能)
	private Integer functionStatus;//状态(0:初始,1:有效,-1:失效)
	private Function where;
	
	//功能ID
	public String getFunctionId(){
		return functionId;
	}
	public void setFunctionId(String functionId){
		this.functionId =functionId;
	}
	
	//功能编码
	public String getFunctionCode(){
		return functionCode;
	}
	public void setFunctionCode(String functionCode){
		this.functionCode =functionCode;
	}
	
	//功能名称
	public String getFunctionName(){
		return functionName;
	}
	public void setFunctionName(String functionName){
		this.functionName =functionName;
	}
	
	//功能功能入口
	public String getFunctionEntry(){
		return functionEntry;
	}
	public void setFunctionEntry(String functionEntry){
		this.functionEntry =functionEntry;
	}
	
	//功能顺序
	public Integer getFunctionOrder(){
		return functionOrder;
	}
	public void setFunctionOrder(Integer functionOrder){
		this.functionOrder =functionOrder;
	}
	
	//拼音
	public String getFunctionSpell(){
		return functionSpell;
	}
	public void setFunctionSpell(String functionSpell){
		this.functionSpell =functionSpell;
	}
	
	//简拼
	public String getFunctionSpellJane(){
		return functionSpellJane;
	}
	public void setFunctionSpellJane(String functionSpellJane){
		this.functionSpellJane =functionSpellJane;
	}
	
	//父节点
	public String getSuperFunctionId(){
		return superFunctionId;
	}
	public void setSuperFunctionId(String superFunctionId){
		this.superFunctionId =superFunctionId;
	}
	
	//功能全路径编码
	public String getFunctionFullCode(){
		return functionFullCode;
	}
	public void setFunctionFullCode(String functionFullCode){
		this.functionFullCode =functionFullCode;
	}
	
	//功能全路径名称
	public String getFunctionFullName(){
		return functionFullName;
	}
	public void setFunctionFullName(String functionFullName){
		this.functionFullName =functionFullName;
	}
	
	//功能层级
	public Integer getFunctionLevel(){
		return functionLevel;
	}
	public void setFunctionLevel(Integer functionLevel){
		this.functionLevel =functionLevel;
	}
	
	//是否叶子节点,1:是,0:否
	public Integer getIsleaf(){
		return isleaf;
	}
	public void setIsleaf(Integer isleaf){
		this.isleaf =isleaf;
	}
	
	//功能类型(0:正常功能,1:管理功能)
	public Integer getFunctionType(){
		return functionType;
	}
	public void setFunctionType(Integer functionType){
		this.functionType =functionType;
	}
	
	//状态(0:初始,1:有效,-1:失效)
	public Integer getFunctionStatus(){
		return functionStatus;
	}
	public void setFunctionStatus(Integer functionStatus){
		this.functionStatus =functionStatus;
	}

	//修改条件
	public Function getWhere() {
		return where;
	}
	public void setWhere(Function where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("functionId="+functionId+",");
		sb.append("functionCode="+functionCode+",");
		sb.append("functionName="+functionName+",");
		sb.append("functionEntry="+functionEntry+",");
		sb.append("functionOrder="+functionOrder+",");
		sb.append("functionSpell="+functionSpell+",");
		sb.append("functionSpellJane="+functionSpellJane+",");
		sb.append("superFunctionId="+superFunctionId+",");
		sb.append("functionFullCode="+functionFullCode+",");
		sb.append("functionFullName="+functionFullName+",");
		sb.append("functionLevel="+functionLevel+",");
		sb.append("isleaf="+isleaf+",");
		sb.append("functionType="+functionType+",");
		sb.append("functionStatus="+functionStatus+",");
		sb.append("}");
		return sb.toString();
	}
}