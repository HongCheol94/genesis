package com.hongcheol.march.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
									  
	private static String namespace = "com.hongcheol.march.modules.code.CodeMapper";
	
	public List<Code> selectList(codeVo vo){
		List<Code> list = sqlSession.selectList("com.hongcheol.march.modules.code.CodeMapper.selectList",vo);
//		return sqlSession.selectList(namespace + ".selectList", ""); }
		return list;
	}
	
	public List<Code> selectListPaging(codeVo vo){
		List<Code> list = sqlSession.selectList("com.hongcheol.march.modules.code.CodeMapper.selectListPaging",vo);
//		return sqlSession.selectList(namespace + ".selectList", ""); }
		return list;
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace+".insert",dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Code selectOne(codeVo vo) {
		Code result = sqlSession .selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result : " + result);
		return result;
	}
	public int update(Code dto) { 
		return sqlSession.update(namespace + ".update", dto);
	}
	public int uelete(Code dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	public int delete(codeVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	public int selectOneCount(codeVo vo) {
		int result = sqlSession.selectOne(namespace + ".selectOneCount",vo);
		return result;
	}
}