package com.flysnow.common.base;

import java.util.List;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 公用类-返回结果封装
 * @date 2018-12-01
 */
public class Result {
    private String code;// 结果编码
    private String msg;// 结果信息
    private Page page;
    private Object data;// 成功时返回的数据

    public Result(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Result(String msg) {
        this.code = "error";
        this.msg = msg;
    }

    public Result(String code, Object data) {
        this.code = code;
        this.data = data;
    }

    public Result(Object data) {
        this.code = "success";
        this.data = data;
    }

    public Result(Page page) {
        this.code = "success";
        this.page = new Page(page.getPageNo(), page.getPageSize(), page.getTotalRows());
        this.data = page.getDatalist();
    }

    public String getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

    public Page getPage() {
        return page;
    }

    public Object getData() {
        return data;
    }
}
