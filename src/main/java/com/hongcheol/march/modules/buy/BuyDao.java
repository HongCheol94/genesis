package com.hongcheol.march.modules.buy;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hongcheol.march.modules.main.MainVo;

@Repository
public class BuyDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.hongcheol.march.modules.buy.BuyMapper";
	
	public List<Buy> selectList() {
		return sqlSession.selectList(namespace + ".selectList","");
	}
// search	
	public List<Buy> selectListOne(MainVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
}
