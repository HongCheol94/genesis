package com.hongcheol.march.modules.buyDetails;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "")
public class BuyDetailsController {

	@Autowired
	BuyDetailsServiceImpl service;
	
	@RequestMapping(value = "buyDetails")
	public String buyDetails(Model model) throws Exception {
		List<BuyDetails> list = service.selectList();
		model.addAttribute("list",list);
		return "infra/buy/xdmin/buyDetails";
	}
}
