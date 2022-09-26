package com.hongcheol.march.modules.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(value = "/")
public class LoginController {
	
	@Autowired
	LoginServiceImpl service;
	
	@RequestMapping(value = "login")
	public String login(Model model) throws Exception {
		List<Login> list = service.selectList();
		model.addAttribute("list",list);
		return "infra/login/xdmin/login";
	}
	
	@RequestMapping(value = "findIdPw")
	public String findIdPw(Model model) throws Exception{
		return "infra/login/xdmin/findIdPw";
	}
}
