package com.flysnow.sysconfig.model;

/**
 * @description 字典选项对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public class DictItem {

	private String itemId;//字典项ID
	private String dictId;//字典ID
	private String itemCode;//字典项编码
	private String itemName;//字典项名称
	private String appendValue;//附加值
	private Integer itemOrder;//字典项顺序
	private String itemSpell;//拼音
	private String itemSpellJane;//简拼
	private Integer itemLevel;//字典项层级
	private String superItemId;//父节点
	private Integer isleaf;//是否叶子节点,1:是,0:否
	private String itemFullCode;//字典项全路径编码
	private Integer itemStatus;//状态(0:初始,1:有效,-1:失效)
	private DictItem where;
	
	//字典项ID
	public String getItemId(){
		return itemId;
	}
	public void setItemId(String itemId){
		this.itemId =itemId;
	}
	
	//字典ID
	public String getDictId(){
		return dictId;
	}
	public void setDictId(String dictId){
		this.dictId =dictId;
	}
	
	//字典项编码
	public String getItemCode(){
		return itemCode;
	}
	public void setItemCode(String itemCode){
		this.itemCode =itemCode;
	}
	
	//字典项名称
	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName){
		this.itemName =itemName;
	}
	
	//附加值
	public String getAppendValue(){
		return appendValue;
	}
	public void setAppendValue(String appendValue){
		this.appendValue =appendValue;
	}
	
	//字典项顺序
	public Integer getItemOrder(){
		return itemOrder;
	}
	public void setItemOrder(Integer itemOrder){
		this.itemOrder =itemOrder;
	}
	
	//拼音
	public String getItemSpell(){
		return itemSpell;
	}
	public void setItemSpell(String itemSpell){
		this.itemSpell =itemSpell;
	}
	
	//简拼
	public String getItemSpellJane(){
		return itemSpellJane;
	}
	public void setItemSpellJane(String itemSpellJane){
		this.itemSpellJane =itemSpellJane;
	}
	
	//字典项层级
	public Integer getItemLevel(){
		return itemLevel;
	}
	public void setItemLevel(Integer itemLevel){
		this.itemLevel =itemLevel;
	}
	
	//父节点
	public String getSuperItemId(){
		return superItemId;
	}
	public void setSuperItemId(String superItemId){
		this.superItemId =superItemId;
	}
	
	//是否叶子节点,1:是,0:否
	public Integer getIsleaf(){
		return isleaf;
	}
	public void setIsleaf(Integer isleaf){
		this.isleaf =isleaf;
	}
	
	//字典项全路径编码
	public String getItemFullCode(){
		return itemFullCode;
	}
	public void setItemFullCode(String itemFullCode){
		this.itemFullCode =itemFullCode;
	}
	
	//状态(0:初始,1:有效,-1:失效)
	public Integer getItemStatus(){
		return itemStatus;
	}
	public void setItemStatus(Integer itemStatus){
		this.itemStatus =itemStatus;
	}

	//修改条件
	public DictItem getWhere() {
		return where;
	}
	public void setWhere(DictItem where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("itemId="+itemId+",");
		sb.append("dictId="+dictId+",");
		sb.append("itemCode="+itemCode+",");
		sb.append("itemName="+itemName+",");
		sb.append("appendValue="+appendValue+",");
		sb.append("itemOrder="+itemOrder+",");
		sb.append("itemSpell="+itemSpell+",");
		sb.append("itemSpellJane="+itemSpellJane+",");
		sb.append("itemLevel="+itemLevel+",");
		sb.append("superItemId="+superItemId+",");
		sb.append("isleaf="+isleaf+",");
		sb.append("itemFullCode="+itemFullCode+",");
		sb.append("itemStatus="+itemStatus+",");
		sb.append("}");
		return sb.toString();
	}
}