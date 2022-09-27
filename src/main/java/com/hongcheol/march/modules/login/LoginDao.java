package com.hongcheol.march.modules.login;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hongcheol.march.modules.member.Member;

@Repository
public class LoginDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namesapce = "com.hongcheol.march.modules.login.LoginMapper";
	
	public List<Login> selectList() {
		
		return sqlSession.selectList(namesapce + ".selectList", "");
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namesapce + ".insert",dto);
		System.out.println("dao result" + result);
		return result;
	}

}
