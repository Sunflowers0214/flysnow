package com.flysnow.common.constant;

public enum DataStatus {

    INIT(0, "初始"), VALID(1, "有效"), INVALID(-1, "失效");

    private int status;
    private String statusName;

    private DataStatus(int status, String statusName) {
        this.status = status;
        this.statusName = statusName;
    }

    public int getStatus() {
        return status;
    }

    public String getStatusName() {
        return statusName;
    }

    public static DataStatus statusName(int status) {
        for (DataStatus state : values()) {
            if (state.getStatus() == status) {
                return state;
            }
        }
        return null;
    }

}
