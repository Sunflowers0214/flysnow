package com.flysnow.authority.model;

import java.util.Date;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 用户对象
 * @createtime 2018-12-03
 */
public class User {

    private String userId;//用户ID
    private String userCode;//用户编码
    private String userName;//用户名称
    private String departId;//部门ID
    private String userAccount;//用户账号
    private String password;//密码
    private String userIdcard;//身份证号
    private Integer userSex;//性别
    private Date userBirthday;//生日
    private String userAvatar;//用户头像
    private String userPhone;//手机号
    private String userAddress;//联系地址
    private Integer userOrder;//用户顺序
    private String userSpell;//拼音
    private String userSpellJane;//简拼
    private Date registerDate;//注册时间
    private Date validityBegin;//有效开始日期
    private Date validityEnd;//有效结束日期
    private Integer userStatus;//状态(0:初始,1:有效,-1:失效)
    private User where;

    //用户ID
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    //用户编码
    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    //用户名称
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    //部门ID
    public String getDepartId() {
        return departId;
    }

    public void setDepartId(String departId) {
        this.departId = departId;
    }

    //用户账号
    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    //密码
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //身份证号
    public String getUserIdcard() {
        return userIdcard;
    }

    public void setUserIdcard(String userIdcard) {
        this.userIdcard = userIdcard;
    }

    //性别
    public Integer getUserSex() {
        return userSex;
    }

    public void setUserSex(Integer userSex) {
        this.userSex = userSex;
    }

    //生日
    public Date getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(Date userBirthday) {
        this.userBirthday = userBirthday;
    }

    //用户头像
    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    //手机号
    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    //联系地址
    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    //用户顺序
    public Integer getUserOrder() {
        return userOrder;
    }

    public void setUserOrder(Integer userOrder) {
        this.userOrder = userOrder;
    }

    //拼音
    public String getUserSpell() {
        return userSpell;
    }

    public void setUserSpell(String userSpell) {
        this.userSpell = userSpell;
    }

    //简拼
    public String getUserSpellJane() {
        return userSpellJane;
    }

    public void setUserSpellJane(String userSpellJane) {
        this.userSpellJane = userSpellJane;
    }

    //注册时间
    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    //有效开始日期
    public Date getValidityBegin() {
        return validityBegin;
    }

    public void setValidityBegin(Date validityBegin) {
        this.validityBegin = validityBegin;
    }

    //有效结束日期
    public Date getValidityEnd() {
        return validityEnd;
    }

    public void setValidityEnd(Date validityEnd) {
        this.validityEnd = validityEnd;
    }

    //状态(0:初始,1:有效,-1:失效)
    public Integer getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Integer userStatus) {
        this.userStatus = userStatus;
    }

    //修改条件
    public User getWhere() {
        return where;
    }

    public void setWhere(User where) {
        this.where = where;
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("{");
        sb.append("userId=" + userId + ",");
        sb.append("userCode=" + userCode + ",");
        sb.append("userName=" + userName + ",");
        sb.append("departId=" + departId + ",");
        sb.append("userAccount=" + userAccount + ",");
        sb.append("password=" + password + ",");
        sb.append("userIdcard=" + userIdcard + ",");
        sb.append("userSex=" + userSex + ",");
        sb.append("userBirthday=" + userBirthday + ",");
        sb.append("userAvatar=" + userAvatar + ",");
        sb.append("userPhone=" + userPhone + ",");
        sb.append("userAddress=" + userAddress + ",");
        sb.append("userOrder=" + userOrder + ",");
        sb.append("userSpell=" + userSpell + ",");
        sb.append("userSpellJane=" + userSpellJane + ",");
        sb.append("registerDate=" + registerDate + ",");
        sb.append("validityBegin=" + validityBegin + ",");
        sb.append("validityEnd=" + validityEnd + ",");
        sb.append("userStatus=" + userStatus + ",");
        sb.append("}");
        return sb.toString();
    }
}