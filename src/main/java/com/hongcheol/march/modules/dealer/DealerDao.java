package com.hongcheol.march.modules.dealer;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class DealerDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namesapce="con.hongcheol.march.modules.dealer.DealerMapper";
//	view
	public List<Dealer> selectList(DealerVo vo) {
		return sqlSession.selectList(namesapce + ".selectList","vo");
	}
	
}
