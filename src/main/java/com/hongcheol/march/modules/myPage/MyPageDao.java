package com.hongcheol.march.modules.myPage;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hongcheol.march.modules.member.Member;

@Repository
public class MyPageDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.hongcheol.march.modules.myPage.MyPageMapper";
	public List<MyPage> selectList() {
		return sqlSession.selectList(namespace + ".selectList","");
	}
	
	public MyPage selectOne() {
		 MyPage item = sqlSession.selectOne(namespace + ".selectOne","");
		 return item;
	}
	
//	login
	public MyPage selectLogin(MyPage dto) {
		return sqlSession.selectOne(namespace + ".selectLogin", dto);
	}
	
}
