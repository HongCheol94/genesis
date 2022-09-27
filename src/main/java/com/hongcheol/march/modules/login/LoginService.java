package com.hongcheol.march.modules.login;

import java.util.List;

import com.hongcheol.march.modules.member.Member;

public interface LoginService {

	public List<Login> selectList() throws Exception;
}
