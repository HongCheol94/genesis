package com.hongcheol.march.modules.dealer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(value = "")
public class DealerController {

	@RequestMapping(value = "dealer")
	public String dealer(Model model) {
		return "infra/dealer/xdmin/dealerList";
	}
	
}
