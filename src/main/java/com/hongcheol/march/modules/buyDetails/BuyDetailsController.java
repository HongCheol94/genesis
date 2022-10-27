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
	
//	list
	/*
	 * @RequestMapping(value = "buyDetails") public String buyDetails(Model model)
	 * throws Exception { List<BuyDetails> list = service.selectList();
	 * model.addAttribute("list",list); return "infra/buy/xdmin/buyDetails"; }
	 */
//	selectOne
	@RequestMapping(value = " buyDetails")
	public String BuyDetails(BuyDetailsVo vo, Model model) throws Exception {
		BuyDetails result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/buy/xdmin/buyDetails";
	}
}
