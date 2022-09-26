package com.hongcheol.march.modules.myPage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao dao;
	
	@Override
	public List<MyPage> selectList() throws Exception {
		List<MyPage> list = dao.selectList();
		return list;
	}
}
