package com.hongcheol.march.modules.sell;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "")
public class SellController {

	@RequestMapping(value = "userSell")
	public String sell(Model model) {
		return "infra/sell/xdmin/userSell";
	}
	
}
