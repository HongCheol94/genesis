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
	
//	insert
	public int insert(Member dto) {
		return sqlSession.insert(namespace+".insert",dto);
	}
	
//	selectOne
	public Member selectOne(MemberVo vo) {
		Member item = sqlSession.selectOne(namespace + ".selectOne", vo);
		return item;
	}
	
//	update
	public int update(Member dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
//	uelete
	public int uelete(Member dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
//	delete
	public int delete(MemberVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
//	selectOneCount
	public int selectOneCount(MemberVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount",vo);
		return result;
	}
	
//	idCheck
	public int idCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".idCheck", dto);
	}
	
//	login
	public Member selectLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectLogin", dto);
	}
	
//	uploaded
	public int insertUploaded(Member dto) {
	    return sqlSession.insert("Base" + ".insertUploaded", dto);
	}
	
//	snsLoginCheck
	public Member snsLoginCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".snsLoginCheck", dto);
	}
	
//	kakao insert
	public int kakaoInst(Member dto) {
		return sqlSession.insert(namespace + ".kakaoInst", dto);
	}
	
//	naver insert
	public int naverInst(Member dto) {
	    return sqlSession.insert(namespace + ".naverInst", dto);
	}
	
//	findId & pw 
	public Member findId(Member dto) {
		return sqlSession.selectOne(namespace + ".findId", dto);
	}
	public int findPw(Member dto) {
		return sqlSession.selectOne(namespace + ".findPw", dto);
	}
	public int changePw(Member dto) {
		return sqlSession.update(namespace + ".changePw", dto);
	}
}
