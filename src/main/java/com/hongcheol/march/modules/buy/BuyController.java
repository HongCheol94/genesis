package com.hongcheol.march.modules.buy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

	
@Controller
//@RequestMapping(value = "")
public class BuyController {
	
	@Autowired
	BuyServiceImpl service;
	
	@RequestMapping(value = "buy")
	public String main(Model model) {
		return "infra/buy/xdmin/userBuy";
	}
	
	@RequestMapping(value = "selectOneCount")
	public String selectOneCount(BuyVo vo) throws Exception{
		service.selectOneCount(vo);
		return "redirect:/buy/buy";
		
	}

}
