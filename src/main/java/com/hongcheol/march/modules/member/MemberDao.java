package com.hongcheol.march.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hongcheol.march.modules.code.Code;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.hongcheol.march.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo) {
		List<Member> list = sqlSession.selectList("com.hongcheol.march.modules.member.MemberMapper.selectList",vo);
//	return sqlSession.selectList(namespace + ".selectList", ""); }
		return list;
	}
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace+".insert",dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	
	
	
}
