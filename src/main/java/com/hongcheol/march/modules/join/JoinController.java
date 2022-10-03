package com.hongcheol.march.modules.join;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(value = "")
public class JoinController {

	@Autowired
	JoinServiceImpl service;
	
	@RequestMapping(value = "joinForm")
	public String Join(Model model) throws Exception{
		return "infra/join/xdmin/joinForm";
	}
	
//	@RequestMapping(value = "checkForm")
//	public String checkForm(Model model) throws Exception{
//		return "infra/join/xdmin/checkForm";
//	}
	
}
