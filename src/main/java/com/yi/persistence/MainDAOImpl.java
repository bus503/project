package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.MainVO;

@Repository
public class MainDAOImpl implements MainDAO {
	public static final String namespace = "mappers.MainMapper.";

	
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public void insert(MainVO vo) throws Exception {
		sqlSession.insert(namespace + "insert", vo);
	}

	@Override
	public MainVO selectByNo(int pno) throws Exception {
		return sqlSession.selectOne(namespace + "selectByNo",pno);

	}

	@Override
	public List<MainVO> list() throws Exception {
		return sqlSession.selectList(namespace+"list");

	}

	@Override
	public int update(MainVO vo) throws Exception {
		return sqlSession.update(namespace+"update",vo);

	}

	@Override
	public int delete(int pno) throws Exception {
		return sqlSession.delete(namespace+"delete", pno);

	}

}
