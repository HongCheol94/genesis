package com.hongcheol.march.modules.join;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace="com.hongcheol.march.modules.join.JoinMapper";
	
	public List<Join> selectList() {
		return sqlSession.selectList(namespace + ".selectList","");
	}
}
