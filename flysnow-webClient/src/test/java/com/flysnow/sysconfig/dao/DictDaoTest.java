package com.flysnow.sysconfig.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.common.base.Page;
import com.flysnow.sysconfig.model.Dict;
import com.flysnow.sysconfig.dao.DictDao;

/**
 * @description 字典数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/sysconfig-*.xml"})
public class DictDaoTest {

	@Autowired
	private DictDao dictDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		Dict insert = new Dict();
		insert = dictDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		Dict where = new Dict();
		where.setDictId(insert.getDictId());
		Dict query = dictDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		Dict listWhere = new Dict();
		List<Dict> entityList = dictDao.getList(listWhere);
		for (Dict entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		Dict update = new Dict();
		update.setDictId(insert.getDictId());
		update.setWhere(where);
		int updateCount = dictDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		Dict delete = new Dict();
		delete.setWhere(where);
		int deleteCount = dictDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		Dict insert = new Dict();
		dictDao.insert(insert);
	}

	@Test
	public void testDelete() {
		Dict delete = new Dict();
		dictDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		Dict update = new Dict();
		dictDao.update(update);
	}

	@Test
	public void testGet() {
		Dict entity = new Dict();
		dictDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = dictDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		Dict listWhere = new Dict();
		List<Dict> entityList = dictDao.getList(listWhere);
		for (Dict entity : entityList){
			System.out.println(entity);
		}
	}
}