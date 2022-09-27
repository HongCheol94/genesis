package com.hongcheol.march.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongcheol.march.modules.buy.Buy;
import com.hongcheol.march.modules.buy.BuyServiceImpl;

@Controller
//@RequestMapping(value = "")
public class MainController {
	
	@Autowired
	BuyServiceImpl service;

	@RequestMapping(value = "main")
	public String main(Model model) {
		return "infra/main/xdmin/main";
	}
	
/// search	
//	@RequestMapping(value = "main")
//	public String main(Model model, MainVo vo) throws Exception {
//		
//		List<Buy> list = service.selectListOne(vo);
//		model.addAttribute("list", list);
//		return "infra/main/xdmin/main";
//	}
}
