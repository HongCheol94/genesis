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
	
	private static String namespace = "com.hongcheol.march.modules.codegroup.codeGroupMapper";
			
//	private static String namespace = "com.hongcheol.march.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
//		return sqlSession.selectList(namespace + ".selectList", vo); 
	List<CodeGroup> list = sqlSession.selectList("com.hongcheol.march.modules.codegroup.CodeGroupMapper.selectList",vo);
	return list;
	}
	
}
