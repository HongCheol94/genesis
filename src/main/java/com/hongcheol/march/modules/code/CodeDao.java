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
}