package com.hongcheol.march.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongcheol.march.modules.buy.BuyServiceImpl;

@Controller
//@RequestMapping(value = "")
public class MainController {
	
	@Autowired
	MainServiceImpl service;
	
	@RequestMapping(value = "choiceList")
	public String choiceList() throws Exception{
		return "infra/main/xdmin/choiceList";
	}

	
	  @RequestMapping(value = "main") 
	  public String main(@ModelAttribute("vo") MainVo vo, Main dto, Model model) throws Exception {
		  List<Main> list = service.selectList(vo);
		  model.addAttribute("list", list);
		  
		  List<Main> searchMadeCountry = service.searchMadeCountry(dto);
		  List<Main> searchMadeby = service.searchMadeby(dto);
		  List<Main> searcmodel = service.searchModel(dto);
		  
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
