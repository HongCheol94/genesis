package com.hongcheol.march.modules.join;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JoinServiceImpl implements JoinService {

	@Autowired
	JoinDao dao;
	
	@Override
	public List<Join> selectList() throws Exception{
		return dao.selectList();
	}
	
}
