package com.hongcheol.march.modules.join;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hongcheol.march.modules.dealer.Dealer;
import com.hongcheol.march.modules.member.Member;

@Repository
public class JoinDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace="com.hongcheol.march.modules.join.JoinMapper";
	
	public List<Join> selectList() {
		return sqlSession.selectList(namespace + ".selectList","");
	}
//	맴버insert
	public int insertM(Member dto) {
		return sqlSession.insert(namespace + ".insertM", dto);
	}
	
//	id중복확인
	public int checkId(Member dto) {
		return sqlSession.selectOne(namespace + ".checkId",dto);
	}
}
