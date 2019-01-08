package com.flysnow.sysconfig.model;

/**
 * @description 全局参数对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class Config {

	private String configId;//参数ID
	private String configCode;//参数编码
	private String configName;//参数名称
	private String configValue;//参数值
	private Integer configStatus;//状态(0:初始,1:有效,-1:失效)
	private Config where;
	
	//参数ID
	public String getConfigId(){
		return configId;
	}
	public void setConfigId(String configId){
		this.configId =configId;
	}
	
	//参数编码
	public String getConfigCode(){
		return configCode;
	}
	public void setConfigCode(String configCode){
		this.configCode =configCode;
	}
	
	//参数名称
	public String getConfigName(){
		return configName;
	}
	public void setConfigName(String configName){
		this.configName =configName;
	}
	
	//参数值
	public String getConfigValue(){
		return configValue;
	}
	public void setConfigValue(String configValue){
		this.configValue =configValue;
	}
	
	//状态(0:初始,1:有效,-1:失效)
	public Integer getConfigStatus(){
		return configStatus;
	}
	public void setConfigStatus(Integer configStatus){
		this.configStatus =configStatus;
	}

	//修改条件
	public Config getWhere() {
		return where;
	}
	public void setWhere(Config where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("configId="+configId+",");
		sb.append("configCode="+configCode+",");
		sb.append("configName="+configName+",");
		sb.append("configValue="+configValue+",");
		sb.append("configStatus="+configStatus+",");
		sb.append("}");
		return sb.toString();
	}
}