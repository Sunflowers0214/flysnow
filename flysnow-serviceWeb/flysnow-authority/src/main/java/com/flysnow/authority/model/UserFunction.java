package com.flysnow.authority.model;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 角色功能对象
 * @createtime 2018-12-03
 */
public class UserFunction {

    private String userId;//用户ID
    private String functionId;//功能ID
    private String functionCode;//功能编码
    private String functionName;//功能名称
    private String functionEntry;//功能功能入口
    private Integer functionOrder;//功能顺序
    private String superFunctionId;//父节点
    private String functionFullCode;//功能全路径编码
    private String functionFullName;//功能全路径名称
    private Integer functionLevel;//功能层级
    private Integer isleaf;//是否叶子节点,1:是,0:否
    private String functionPermission;//功能权限编码

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFunctionId() {
        return functionId;
    }

    public void setFunctionId(String functionId) {
        this.functionId = functionId;
    }

    public String getFunctionCode() {
        return functionCode;
    }

    public void setFunctionCode(String functionCode) {
        this.functionCode = functionCode;
    }

    public String getFunctionName() {
        return functionName;
    }

    public void setFunctionName(String functionName) {
        this.functionName = functionName;
    }

    public String getFunctionEntry() {
        return functionEntry;
    }

    public void setFunctionEntry(String functionEntry) {
        this.functionEntry = functionEntry;
    }

    public Integer getFunctionOrder() {
        return functionOrder;
    }

    public void setFunctionOrder(Integer functionOrder) {
        this.functionOrder = functionOrder;
    }

    public String getSuperFunctionId() {
        return superFunctionId;
    }

    public void setSuperFunctionId(String superFunctionId) {
        this.superFunctionId = superFunctionId;
    }

    public String getFunctionFullCode() {
        return functionFullCode;
    }

    public void setFunctionFullCode(String functionFullCode) {
        this.functionFullCode = functionFullCode;
    }

    public String getFunctionFullName() {
        return functionFullName;
    }

    public void setFunctionFullName(String functionFullName) {
        this.functionFullName = functionFullName;
    }

    public Integer getFunctionLevel() {
        return functionLevel;
    }

    public void setFunctionLevel(Integer functionLevel) {
        this.functionLevel = functionLevel;
    }

    public Integer getIsleaf() {
        return isleaf;
    }

    public void setIsleaf(Integer isleaf) {
        this.isleaf = isleaf;
    }

    public String getFunctionPermission() {
        return functionPermission;
    }

    public void setFunctionPermission(String functionPermission) {
        this.functionPermission = functionPermission;
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("{");
        sb.append("userId=" + userId + ",");
        sb.append("functionId=" + functionId + ",");
        sb.append("functionCode=" + functionCode + ",");
        sb.append("functionName=" + functionName + ",");
        sb.append("functionFullCode=" + functionFullCode + ",");
        sb.append("functionFullName=" + functionFullName + ",");
        sb.append("functionPermission=" + functionPermission + ",");
        sb.append("}");
        return sb.toString();
    }
}