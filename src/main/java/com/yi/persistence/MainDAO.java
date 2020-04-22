package com.yi.persistence;

import java.util.List;

import com.yi.domain.MainVO;

public interface MainDAO {

	public void insert(MainVO vo) throws Exception;
	public MainVO selectByNo(int pno) throws Exception;
	public List<MainVO> list() throws Exception;
	public int update(MainVO vo) throws Exception;
	public int delete(int pno) throws Exception;
	
}
