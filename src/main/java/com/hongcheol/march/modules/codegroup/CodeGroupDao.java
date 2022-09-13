package com.hongcheol.march.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	                                  
	private static String namespace = "com.hongcheol.march.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
//		return sqlSession.selectList(namespace + ".selectList", vo); 
	List<CodeGroup> list = sqlSession.selectList("com.hongcheol.march.modules.codegroup.CodeGroupMapper.selectList",vo);
	return list;
	}
	
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace+".insert",dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public CodeGroup seletOne(CodeGroupVo vo) {
		CodeGroup result = sqlSession.selectOne(namespace+".selectOne" , vo);
		System.out.println("dao result: " + result);
		return result;
	}
	public int update(CodeGroup dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	public int uelete(CodeGroup dto) {
		return sqlSession.update(namespace + ".ulete", dto);
	}
	public int delete(CodeGroup dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
}
