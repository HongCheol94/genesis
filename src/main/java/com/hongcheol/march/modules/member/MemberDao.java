package com.hongcheol.march.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.hongcheol.march.modules.member.MemberMapper";
	
//	for cache
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
	public Member selectOne(MemberVo vo) {
		Member item = sqlSession.selectOne(namespace + ".selectOne", vo);
		return item;
	}
	public int update(Member dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	public int uelete(Member dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	public int delete(MemberVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	public int selectOneCount(MemberVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount",vo);
		return result;
	}
	public int idCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".idcheck",dto);
	}
	
}
