package com.flysnow.common.base;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Map;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 公用类-数据层
 * @date 2018-12-01
 */
public class BaseDao extends SqlSessionDaoSupport {
    protected Logger logger = LoggerFactory.getLogger(this.getClass());

    protected int insert(String sqlId, Object obj) {
        return this.getSqlSession().insert(sqlId, obj);
    }

    protected int delete(String sqlId, Object obj) {
        return this.getSqlSession().delete(sqlId, obj);
    }

    protected int update(String sqlId, Object obj) {
        return this.getSqlSession().update(sqlId, obj);
    }

    protected Object queryForObject(String sqlId, Object obj) {
        return this.getSqlSession().selectOne(sqlId, obj);
    }

    protected List queryForList(String sqlId, Object obj) {
        return this.getSqlSession().selectList(sqlId, obj);
    }

    public Page queryForPage(String sqlId, Map map, int pageNo, int pageSize) {
        logger.debug("sqlId: " + sqlId);
        //printSql(sqlId,map);
        Page page = new Page(pageNo, pageSize);
        map.put("beginRow", page.getBeginRow());
        map.put("pageSize", pageSize);
        List dataList = this.getSqlSession().selectList(sqlId, map);
        page.setDatalist(dataList);
        int count = this.getSqlSession().selectOne(sqlId + "Count");
        //printSql(sqlId,map);
        page.setTotalRows(count);
        return page;
    }

    public Page queryForPageHelper(String sqlId, Map map, int pageNo, int pageSize) {
        logger.debug("sqlId: " + sqlId);
        //printSql(sqlId,map);
        PageHelper.startPage(pageNo, pageSize);
        List dataList = this.getSqlSession().selectList(sqlId, map);
        PageInfo pageResult = new PageInfo(dataList);
        Page page = new Page(pageNo, pageSize);
        page.setDatalist(pageResult.getList());
        page.setTotalRows((int) pageResult.getTotal());
        logger.debug("sqlIdResult: " + sqlId);
        return page;
    }

    public void spql() {
        System.out.println("dsssssssssssssss");
    }

    private void printSql(String sqlId, Object obj) {
        String sql = this.getSqlSession().getConfiguration()
                .getMappedStatement(sqlId).getBoundSql(obj).getSql();
        logger.debug("sql: " + sql);
    }

}
