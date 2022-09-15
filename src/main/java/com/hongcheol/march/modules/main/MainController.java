package com.hongcheol.march.modules.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/main/")
public class MainController {

	@RequestMapping(value = "login")
	public String login(Model model) throws Exception{
		
		return "infra/login/xdmin/login";
	}
}
