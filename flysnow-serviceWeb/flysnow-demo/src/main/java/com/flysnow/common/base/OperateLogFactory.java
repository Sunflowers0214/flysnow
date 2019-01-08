package com.flysnow.common.base;

import com.flysnow.common.util.UUIDUtil;
import com.flysnow.logmanage.model.OperateLog;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 添加数据操作日志
 * @date 2018-12-01
 */
public class OperateLogFactory implements Runnable {

    private static List<OperateLog> operateLogList = new ArrayList<>();
    private static Thread printer;

    static {
        printer = new Thread(new OperateLogFactory());
        //printer.start();
    }

    @Override
    public void run() {
        System.out.println("输出日志：" + operateLogList.size());
        if (operateLogList.size() > 0) {
            while (operateLogList.size() > 0) {
                System.out.println("剩余日志：" + operateLogList.size() + "@@日志：" + operateLogList.get(0));
                operateLogList.remove(0);
            }
        }
    }

    public static void saveOperateLog(String operateType, String operateSql) {
        OperateLog operateLog = new OperateLog();
        operateLog.setOperateLogId(UUIDUtil.genKey());
        operateLog.setUserId("11");
        operateLog.setUserAccount("1212");
        operateLog.setUserName("打算");
        operateLog.setOperateSql(operateSql);
        operateLog.setOperateType(operateType);
        operateLog.setOperateTime(new Date());
        for (int i = 0; i < 100; i++) {
            operateLogList.add(operateLog);
            System.out.println("剩余日志：" + operateLogList.size());
        }
        printer.start();
    }


}
