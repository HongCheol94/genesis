package com.hongcheol.march.modules.myPage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hongcheol.march.modules.member.Member;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao dao;
	
	@Override
	public List<MyPage> selectList() throws Exception {
		List<MyPage> list = dao.selectList();
		return list;
	}
	
	public MyPage selectOne() throws Exception {
		MyPage item = dao.selectOne();
		return item;
	}
	
	public MyPage selectLogin(MyPage dto) throws Exception {
	    return dao.selectLogin(dto);
	}
}
