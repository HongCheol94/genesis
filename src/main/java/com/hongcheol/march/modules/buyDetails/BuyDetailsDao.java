package com.hongcheol.march.modules.buyDetails;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BuyDetailsDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.hongcheol.march.modules.buyDetails.BuyDetailsMapper";
	
	/*
	 * public List<BuyDetails> selectList() { return
	 * sqlSession.selectList(namespace+ ".selectList",""); }
	 */	 
	public BuyDetails selectOne(BuyDetailsVo vo) {
		BuyDetails result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
}
