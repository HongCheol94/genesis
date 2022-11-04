package com.hongcheol.march.modules.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongcheol.march.modules.member.MemberServiceImpl;

@Controller
//@RequestMapping(value = "/")
public class LoginController {
	
	@Autowired
	MemberServiceImpl service;
	
//	로그인
	@RequestMapping(value = "login")
	public String login() throws Exception {
		return "infra/login/xdmin/login";
	}
	
	@RequestMapping(value = "findIdPw")
	public String findIdPw(Model model) throws Exception{
		return "infra/login/xdmin/findIdPw";
	}
}
