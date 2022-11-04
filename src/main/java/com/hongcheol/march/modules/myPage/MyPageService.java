package com.hongcheol.march.modules.myPage;

import java.util.List;

import com.hongcheol.march.modules.member.Member;

public interface MyPageService {

	public List<MyPage> selectList() throws Exception;
	public MyPage selectOne() throws Exception;
	public MyPage selectLogin(MyPage dto) throws Exception;
}
