package com.hongcheol.march.modules.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		  model.addAttribute("searchMadeCountry", searchMadeCountry);
		  
		  List<Main> searchMadeby = service.searchMadeby(dto);
		  model.addAttribute("searchMadeby", searchMadeby);
		  
		  List<Main> searchModel = service.searchModel(dto);
		  model.addAttribute("searchModel", searchModel);
		  
		  return "infra/main/xdmin/main";
	  }
	  
	  @ResponseBody
	  @RequestMapping(value = "searchMadeCountry")
	  public Map<String,Object> searchMadeCountry(Main dto) throws Exception{
		  Map<String, Object> returnMap = new HashMap<String, Object>();
		  
		  List<Main> searchMadeby = service.searchMadeby(dto);
		  
		  if(searchMadeby != null) {
			  returnMap.put("rt", "success");
			  returnMap.put("searchMadeby", searchMadeby);
		  }else {
			  returnMap.put("rt", "fall");
		  }
		  return returnMap;
	  }
	  
	  @ResponseBody
	  @RequestMapping(value = "searchMadeby")
	  public Map<String, Object> searchMadeby(Main dto) throws Exception {
		  Map<String, Object> returnMap = new HashMap<String, Object>();
		  
		  List<Main> searchModel = service.searchModel(dto);
		  
		  if(searchModel != null) {
			  returnMap.put("rt", "success");
			  returnMap.put("searchModel", searchModel);
		  }else {
			  returnMap.put("rt", "fall");
		  }
		  return returnMap;
	  }
	  
		/*
		 * @ResponseBody
		 * 
		 * @RequestMapping(value= "searchModel") public Map<String, Object>
		 * searchModel(Main dto) throws Exception { Map<String, Object> returnMap = new
		 * HashMap<String, Object>();
		 * 
		 * return returnMap; }
		 */

	 
	
/// search	
//	@RequestMapping(value = "main")
//	public String main(Model model, MainVo vo) throws Exception {
//		
//		List<Buy> list = service.selectListOne(vo);
//		model.addAttribute("list", list);
//		return "infra/main/xdmin/main";
//	}
}
