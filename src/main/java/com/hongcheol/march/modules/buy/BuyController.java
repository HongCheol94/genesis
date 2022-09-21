package com.hongcheol.march.modules.buy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

	
@Controller
//@RequestMapping(value = "")
public class BuyController {
	
	@RequestMapping(value = "buy")
	public String main(Model model) {
	return "infra/buy/xdmin/userBuy";
}

}
