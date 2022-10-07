package com.hongcheol.march.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	MainDao dao;
	
	@Override
	public List<Main> selectList(MainVo vo) throws Exception {
		List<Main> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public List<Main> searchMadeCountry(Main dto) throws Exception {
		List<Main> list = dao.searchMadeCountry(dto);
		return list;
	}
	
	@Override
	public List<Main> searchMadeby(Main dto) throws Exception {
		List<Main> list = dao.searchMadeby(dto);
		return list;
	}
	
	@Override
	public List<Main> searchModel(Main dto) throws Exception {
		List<Main> list = dao.searchModel(dto);
		return list;
	}
}
