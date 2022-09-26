package com.hongcheol.march.modules.myPage;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MyPageDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.hongcheol.march.modules.myPage.MyPageMapper";
	public List<MyPage> selectList() {
		return sqlSession.selectList(namespace + ".selectList","");
	}
}
