package com.flysnow.sysconfig.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

import com.flysnow.sysconfig.model.Dict;
import com.flysnow.sysconfig.service.DictService;

/**
 * @author huangyongsheng
 * @description 字典逻辑层测试
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml", "classpath:config/spring/sysconfig-*.xml"})
public class DictServiceTest {

    @Autowired
    private DictService dictService;

    @Test
    public void testInsert() {
        Dict dict = new Dict();
        dictService.insert(dict);
    }

    @Test
    public void testDelete() {
        Dict dict = new Dict();
        dictService.delete(dict);
    }

    @Test
    public void testUpdate() {
        Dict dict = new Dict();
        dictService.update(dict);
    }

    @Test
    public void testGet() {
        Dict dict = new Dict();
        dictService.get(dict);
    }

    @Test
    public void testGetListForPage() {
        Map map = new HashMap();
        dictService.getListForPage(map, 1, 10, "");
    }

    @Test
    public void testGetList() {
        Dict dict = new Dict();
        dictService.getList(dict);
    }

}