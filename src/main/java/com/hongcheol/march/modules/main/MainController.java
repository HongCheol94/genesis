package com.hongcheol.march.modules.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(value = "")
public class MainController {

	@RequestMapping(value = "main")
	public String main(Model model) {
		return "infra/main/xdmin/main";
	}
}
