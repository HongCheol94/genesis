package com.hongcheol.march.modules.dealer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(value = "")
public class DealerController {

	@Autowired
	DealerServiceImpl service;
	
	@RequestMapping(value = "dealer")
	public String dealer(@ModelAttribute("vo") DealerVo vo, Model model) throws Exception {
		List<Dealer> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/dealer/xdmin/dealerList";
		
	}
	
}
