package com.flysnow.common.constant;

/**
 * 登陆信息
 */
public enum LoginStatus {

    RAND_ERROR("rand_error", "验证码错误"),
    ACCOUNT_ERROR("account_error", "账户不存在"),
    VALIDITY_ERROR("validity_error", "验证码错误"),
    PASSWORD_ERROR("password_error", "密码错误"),
    AUTHORITY_LOGIN_ERROT("authority_login_error", "登录权限不足"),
    AUTHORITY_ERROT("authority_error", "权限不足"),
    LOGIN_ERROT("login_error", "登录错误"),
    LOGIN_ALREADY("login_already", "已登录"),
    LOGIN_SUCCESS("success", "登录成功");

    private String status;
    private String statusName;

    private LoginStatus(String status, String statusName) {
        this.status = status;
        this.statusName = statusName;
    }

    public String getStatus() {
        return status;
    }

    public String getStatusName() {
        return statusName;
    }

    public static LoginStatus statusName(String status) {
        for (LoginStatus state : values()) {
            if (state.getStatus() == status) {
                return state;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return "LoginStatus{constant='" + status + "', statusName='" + statusName + "'}";
    }
}
