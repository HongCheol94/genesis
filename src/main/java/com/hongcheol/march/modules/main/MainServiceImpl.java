package com.hongcheol.march.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MainServiceImpl implements MainService {

	@Autowired
	MainDao dao;
	
	@Override
	public List<Main> selectList() throws Exception {
		return dao.selectList();
	}
	
}