package com.yi.project;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.MainVO;
import com.yi.persistence.MainDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MainDAOTest {

		
	@Autowired
	private MainDAO dao;
	
	@Test
	public void testDAO() {
		System.out.println(dao);
	}
	
	@Test
	public void testInsert() throws Exception {
		MainVO vo = new MainVO();
		vo.setPname("테스트");
		vo.setPcontent("테스트");
		vo.setStartdate("2010-01-10");
		vo.setEnddate("2010-08-10");
		vo.setProgress("준비");
		dao.insert(vo);
	}
	
	//@Test
	public void testSelectByNo() throws Exception{
		dao.selectByNo(1);
	}
	
	//@Test
	public void testList() throws Exception{
		dao.list();
	}

	//@Test
	public void testUpdate() throws Exception{
		MainVO vo = new MainVO();
		vo.setPno(1);
		vo.setPname("1번을");
		vo.setPcontent("바꿔보자 ");
		vo.setStartdate("2010-01-10");
		vo.setEnddate("2010-01-20");
		vo.setProgress("진행");
		dao.update(vo);
	}
	
	//@Test
	public void testDelete() throws Exception{
		dao.delete(2);
	}
}
