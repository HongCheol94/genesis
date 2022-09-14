package com.hongcheol.march.modules.login;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namesapce = "com.hongcheol.march.modules.login.LoginMapper";
	
	public List<Login> selectList() {
		
		return sqlSession.selectList(namesapce + ".selectList", "");
	}

}
