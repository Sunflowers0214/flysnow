package com.flysnow.sysconfig.model;

/**
 * @description 字典对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class Dict {

	private String dictId;//字典ID
	private String dictCode;//字典编码
	private String dictName;//字典名称
	private Integer dictOrder;//字典顺序
	private String dictSpell;//拼音
	private String dictSpellJane;//简拼
	private Integer dictType;//字典类型(0:列表,1:树形)
	private Integer dictStatus;//状态(0:初始,1:有效,-1:失效)
	private Dict where;
	
	//字典ID
	public String getDictId(){
		return dictId;
	}
	public void setDictId(String dictId){
		this.dictId =dictId;
	}
	
	//字典编码
	public String getDictCode(){
		return dictCode;
	}
	public void setDictCode(String dictCode){
		this.dictCode =dictCode;
	}
	
	//字典名称
	public String getDictName(){
		return dictName;
	}
	public void setDictName(String dictName){
		this.dictName =dictName;
	}
	
	//字典顺序
	public Integer getDictOrder(){
		return dictOrder;
	}
	public void setDictOrder(Integer dictOrder){
		this.dictOrder =dictOrder;
	}
	
	//拼音
	public String getDictSpell(){
		return dictSpell;
	}
	public void setDictSpell(String dictSpell){
		this.dictSpell =dictSpell;
	}
	
	//简拼
	public String getDictSpellJane(){
		return dictSpellJane;
	}
	public void setDictSpellJane(String dictSpellJane){
		this.dictSpellJane =dictSpellJane;
	}
	
	//字典类型(0:列表,1:树形)
	public Integer getDictType(){
		return dictType;
	}
	public void setDictType(Integer dictType){
		this.dictType =dictType;
	}
	
	//状态(0:初始,1:有效,-1:失效)
	public Integer getDictStatus(){
		return dictStatus;
	}
	public void setDictStatus(Integer dictStatus){
		this.dictStatus =dictStatus;
	}

	//修改条件
	public Dict getWhere() {
		return where;
	}
	public void setWhere(Dict where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("dictId="+dictId+",");
		sb.append("dictCode="+dictCode+",");
		sb.append("dictName="+dictName+",");
		sb.append("dictOrder="+dictOrder+",");
		sb.append("dictSpell="+dictSpell+",");
		sb.append("dictSpellJane="+dictSpellJane+",");
		sb.append("dictType="+dictType+",");
		sb.append("dictStatus="+dictStatus+",");
		sb.append("}");
		return sb.toString();
	}
}