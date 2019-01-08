package com.flysnow.authority.model;

import java.util.Date;

/**
 * @description 部门对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class Department {

	private String departId;//部门ID
	private String departName;//部门名称
	private Integer departOrder;//部门顺序
	private String departSpell;//拼音
	private String departSpellJane;//简拼
	private Integer departLevel;//字典层级
	private String superDepartId;//父节点
	private Integer isleaf;//是否叶子节点,1:是,0:否
	private String departFullCode;//部门全路径编码
	private String departFullName;//部门全路径名称
	private Integer departStatus;//状态(0:初始,1:有效,-1:失效)
	private Department where;
	
	//部门ID
	public String getDepartId(){
		return departId;
	}
	public void setDepartId(String departId){
		this.departId =departId;
	}
	
	//部门名称
	public String getDepartName(){
		return departName;
	}
	public void setDepartName(String departName){
		this.departName =departName;
	}
	
	//部门顺序
	public Integer getDepartOrder(){
		return departOrder;
	}
	public void setDepartOrder(Integer departOrder){
		this.departOrder =departOrder;
	}
	
	//拼音
	public String getDepartSpell(){
		return departSpell;
	}
	public void setDepartSpell(String departSpell){
		this.departSpell =departSpell;
	}
	
	//简拼
	public String getDepartSpellJane(){
		return departSpellJane;
	}
	public void setDepartSpellJane(String departSpellJane){
		this.departSpellJane =departSpellJane;
	}
	
	//字典层级
	public Integer getDepartLevel(){
		return departLevel;
	}
	public void setDepartLevel(Integer departLevel){
		this.departLevel =departLevel;
	}
	
	//父节点
	public String getSuperDepartId(){
		return superDepartId;
	}
	public void setSuperDepartId(String superDepartId){
		this.superDepartId =superDepartId;
	}
	
	//是否叶子节点,1:是,0:否
	public Integer getIsleaf(){
		return isleaf;
	}
	public void setIsleaf(Integer isleaf){
		this.isleaf =isleaf;
	}
	
	//部门全路径编码
	public String getDepartFullCode(){
		return departFullCode;
	}
	public void setDepartFullCode(String departFullCode){
		this.departFullCode =departFullCode;
	}
	
	//部门全路径名称
	public String getDepartFullName(){
		return departFullName;
	}
	public void setDepartFullName(String departFullName){
		this.departFullName =departFullName;
	}
	
	//状态(0:初始,1:有效,-1:失效)
	public Integer getDepartStatus(){
		return departStatus;
	}
	public void setDepartStatus(Integer departStatus){
		this.departStatus =departStatus;
	}

	//修改条件
	public Department getWhere() {
		return where;
	}
	public void setWhere(Department where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("departId="+departId+",");
		sb.append("departName="+departName+",");
		sb.append("departOrder="+departOrder+",");
		sb.append("departSpell="+departSpell+",");
		sb.append("departSpellJane="+departSpellJane+",");
		sb.append("departLevel="+departLevel+",");
		sb.append("superDepartId="+superDepartId+",");
		sb.append("isleaf="+isleaf+",");
		sb.append("departFullCode="+departFullCode+",");
		sb.append("departFullName="+departFullName+",");
		sb.append("departStatus="+departStatus+",");
		sb.append("}");
		return sb.toString();
	}
}