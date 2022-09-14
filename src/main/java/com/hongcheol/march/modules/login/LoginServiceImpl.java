package com.hongcheol.march.modules.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDao dao;
	
	@Override
	public List<Login> selectList() throws Exception {
		List<Login> list = dao.selectList();
		return list;
	}
}
