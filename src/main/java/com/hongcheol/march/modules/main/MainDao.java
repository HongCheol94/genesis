package com.hongcheol.march.modules.main;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MainDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.hongcheol.march.modules.main.MainMapper";
	public List<Main> selectList(MainVo vo) {
		return sqlSession.selectList(namespace + ".selectList",vo);
	}
	
	public List<Main> searchMadeCountry(Main dto) {
		return sqlSession.selectList(namespace + ".searchMadeCountry",dto);
	}
	
	public List<Main> searchMadeby(Main dto) {
		return sqlSession.selectList(namespace + ".searchMadeby",dto);
	}
	
	public List<Main> searchModel(Main dto) {
		return sqlSession.selectList(namespace + ".searchModel",dto);
	}
		
	
	
}
