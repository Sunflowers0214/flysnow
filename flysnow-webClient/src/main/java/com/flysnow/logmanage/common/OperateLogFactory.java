package com.flysnow.logmanage.common;

import com.flysnow.common.base.Page;
import com.flysnow.logmanage.model.OperateLog;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 公用类-数据层
 * @date 2018-12-01
 */
public class OperateLogFactory extends SqlSessionDaoSupport {
    private static List<OperateLog> operateLogList = new ArrayList<>();

    

}
