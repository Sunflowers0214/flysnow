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
import com.flysnow.sysconfig.model.DictItem;
import com.flysnow.sysconfig.dao.DictItemDao;

/**
 * @description 字典选项数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/sysconfig-*.xml"})
public class DictItemDaoTest {

	@Autowired
	private DictItemDao dictItemDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		DictItem insert = new DictItem();
		insert = dictItemDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		DictItem where = new DictItem();
		where.setItemId(insert.getItemId());
		DictItem query = dictItemDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		DictItem listWhere = new DictItem();
		List<DictItem> entityList = dictItemDao.getList(listWhere);
		for (DictItem entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		DictItem update = new DictItem();
		update.setItemId(insert.getItemId());
		update.setWhere(where);
		int updateCount = dictItemDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		DictItem delete = new DictItem();
		delete.setWhere(where);
		int deleteCount = dictItemDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		DictItem insert = new DictItem();
		dictItemDao.insert(insert);
	}

	@Test
	public void testDelete() {
		DictItem delete = new DictItem();
		dictItemDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		DictItem update = new DictItem();
		dictItemDao.update(update);
	}

	@Test
	public void testGet() {
		DictItem entity = new DictItem();
		dictItemDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = dictItemDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		DictItem listWhere = new DictItem();
		List<DictItem> entityList = dictItemDao.getList(listWhere);
		for (DictItem entity : entityList){
			System.out.println(entity);
		}
	}
}