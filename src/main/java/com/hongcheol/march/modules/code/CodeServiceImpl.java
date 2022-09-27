package com.hongcheol.march.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hongcheol.march.common.util.UtilSecurity;


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
	
	@Override
	public Code selectOne(codeVo vo) throws Exception {
		Code result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int uelete(Code dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(codeVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public int update(Code dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int selectOneCount(codeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<Code> selectListCachedCode(String ccg_seq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCcg_seq().equals(ccg_seq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		System.out.println(ccg_seq);
		return rt;
	}
	
}