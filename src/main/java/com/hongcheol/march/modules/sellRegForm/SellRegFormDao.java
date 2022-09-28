package com.hongcheol.march.modules.sellRegForm;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class SellRegFormDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.hongcheol.march.modules.sellRegForm.SellRegFormMapper";
	
	public List<SellRegForm> selectList(SellRegFormVo vo) {
		return sqlSession.selectList("com.hongcheol.march.modules.sellRegFrom.SellRegFromMapper" + ".selectList", vo);
	}
	
//	insert
	public int insert(SellRegForm dto) {
		return sqlSession.insert(namespace + ".insert",dto);
	}
		
}
