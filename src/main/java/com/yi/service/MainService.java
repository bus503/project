package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.MainVO;
import com.yi.persistence.MainDAO;

@Service
public class MainService {
	
	@Autowired
	MainDAO dao;
	
	public void insert(MainVO vo) throws Exception{
		dao.insert(vo);
	}
	public MainVO selectByNo(int pno) throws Exception{
		return dao.selectByNo(pno);
	}
	public List<MainVO> list() throws Exception{
		return dao.list();
	}
	public void update(MainVO vo) throws Exception{
		dao.update(vo);
	}
	public void delete(int pno) throws Exception{
		dao.delete(pno);
	}
}
