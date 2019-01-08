package com.flysnow.common.base;

import java.util.List;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 公用类-分页封装
 * @date 2018-12-01
 */
public class Page {

    private int pageNo;//当前页数
    private int pageSize;//页显示数量
    private int totalRows;//总记录数
    private List datalist;//查询结果

    public Page(int pageNo) {
        this.pageNo = pageNo;
        this.pageSize = 10;
    }

    public Page(int pageNo, int pageSize) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
    }

    public Page(int pageNo, int pageSize, int totalRows) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
        this.totalRows = totalRows;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getBeginRow() {
        return (this.pageNo - 1) * this.pageSize;
    }

    public int getTotalRows() {
        return totalRows;
    }

    public void setTotalRows(int totalRows) {
        this.totalRows = totalRows;
    }

    public int getTotalPages() {
        int totalPages = this.totalRows / this.pageSize;
        return this.totalRows % this.pageSize == 0 ? totalPages : totalPages + 1;
    }

    public boolean hasPreviousPage() {
        return this.getPageNo() > 1;
    }

    public boolean hasNextPage() {
        return this.pageNo < this.getTotalPages() - 1;
    }

    public List getDatalist() {
        return datalist;
    }

    public void setDatalist(List datalist) {
        this.datalist = datalist;
    }
}
