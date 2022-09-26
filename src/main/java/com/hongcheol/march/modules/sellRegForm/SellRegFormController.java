package com.hongcheol.march.modules.sellRegForm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(value = "")
public class SellRegFormController {

	@RequestMapping(value = "sellRegForm")
	public String main(Model model) {
		return "infra/sell/xdmin/userSellRegForm";
	}
}
