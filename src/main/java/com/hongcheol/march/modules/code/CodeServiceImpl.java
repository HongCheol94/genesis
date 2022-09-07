package com.hongcheol.march.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;
	
//	@Override
//	public List<Code> selectList(vo) throws Exception {
//		List<Code> list = dao.selectList(vo);
//		return dao.selectList(vo);
	
	@Override
	public List<Code> selectList(codeVo vo) throws Exception{
		List<Code> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Code dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
}