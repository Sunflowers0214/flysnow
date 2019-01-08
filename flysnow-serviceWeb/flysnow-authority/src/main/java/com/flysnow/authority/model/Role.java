package com.flysnow.authority.model;

import java.util.Date;

/**
 * @description 角色对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class Role {

	private String roleId;//角色ID
	private String roleCode;//角色编码
	private String roleName;//角色名称
	private String roleDesc;//角色描述
	private Integer roleOrder;//角色顺序
	private String roleSpell;//拼音
	private String roleSpellJane;//简拼
	private Integer roleStatus;//状态(0:初始,1:有效,-1:失效)
	private Role where;
	
	//角色ID
	public String getRoleId(){
		return roleId;
	}
	public void setRoleId(String roleId){
		this.roleId =roleId;
	}
	
	//角色编码
	public String getRoleCode(){
		return roleCode;
	}
	public void setRoleCode(String roleCode){
		this.roleCode =roleCode;
	}
	
	//角色名称
	public String getRoleName(){
		return roleName;
	}
	public void setRoleName(String roleName){
		this.roleName =roleName;
	}
	
	//角色描述
	public String getRoleDesc(){
		return roleDesc;
	}
	public void setRoleDesc(String roleDesc){
		this.roleDesc =roleDesc;
	}
	
	//角色顺序
	public Integer getRoleOrder(){
		return roleOrder;
	}
	public void setRoleOrder(Integer roleOrder){
		this.roleOrder =roleOrder;
	}
	
	//拼音
	public String getRoleSpell(){
		return roleSpell;
	}
	public void setRoleSpell(String roleSpell){
		this.roleSpell =roleSpell;
	}
	
	//简拼
	public String getRoleSpellJane(){
		return roleSpellJane;
	}
	public void setRoleSpellJane(String roleSpellJane){
		this.roleSpellJane =roleSpellJane;
	}
	
	//状态(0:初始,1:有效,-1:失效)
	public Integer getRoleStatus(){
		return roleStatus;
	}
	public void setRoleStatus(Integer roleStatus){
		this.roleStatus =roleStatus;
	}

	//修改条件
	public Role getWhere() {
		return where;
	}
	public void setWhere(Role where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("roleId="+roleId+",");
		sb.append("roleCode="+roleCode+",");
		sb.append("roleName="+roleName+",");
		sb.append("roleDesc="+roleDesc+",");
		sb.append("roleOrder="+roleOrder+",");
		sb.append("roleSpell="+roleSpell+",");
		sb.append("roleSpellJane="+roleSpellJane+",");
		sb.append("roleStatus="+roleStatus+",");
		sb.append("}");
		return sb.toString();
	}
}