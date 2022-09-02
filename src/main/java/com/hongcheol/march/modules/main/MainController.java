package com.hongcheol.march.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/main/")
public class MainController {

	@Autowired
	MainServiceImpl service;
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model) throws Exception {
		
		List<Main> list = service.selectList();
		model.addAttribute("list",list);
		
		return "infra/main/xdmin/Main";
	}
}
