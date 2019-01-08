package com.flysnow.authority.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.common.base.Page;
import com.flysnow.authority.model.Department;
import com.flysnow.authority.dao.DepartmentDao;

/**
 * @description 部门数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class DepartmentDaoTest {

	@Autowired
	private DepartmentDao departmentDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		Department insert = new Department();
		insert = departmentDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		Department where = new Department();
		where.setDepartId(insert.getDepartId());
		Department query = departmentDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		Department listWhere = new Department();
		List<Department> entityList = departmentDao.getList(listWhere);
		for (Department entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		Department update = new Department();
		update.setDepartId(insert.getDepartId());
		update.setWhere(where);
		int updateCount = departmentDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		Department delete = new Department();
		delete.setWhere(where);
		int deleteCount = departmentDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		Department insert = new Department();
		departmentDao.insert(insert);
	}

	@Test
	public void testDelete() {
		Department delete = new Department();
		departmentDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		Department update = new Department();
		departmentDao.update(update);
	}

	@Test
	public void testGet() {
		Department entity = new Department();
		departmentDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = departmentDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		Department listWhere = new Department();
		List<Department> entityList = departmentDao.getList(listWhere);
		for (Department entity : entityList){
			System.out.println(entity);
		}
	}
}