package com.hongcheol.march.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	public void setSearchAndPaging(codeVo vo) throws Exception {
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") codeVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		System.out.println("vo.getShvalue(): " + vo.getShValue());
		System.out.println("vo.getShoption(): "+ vo.getShOption());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
//	RegForm
	@RequestMapping(value = "codeRegForm")
	public String codeRegForm(Model model) throws Exception{
		
		return "infra/code/xdmin/codeRegForm";
	}
	
//	Insert
	@RequestMapping(value = "codeInst")
	public String codeGroupInst(@ModelAttribute("vo")codeVo vo,Code dto, RedirectAttributes redirectAttributes) throws Exception{
	//	service.insert(dto); = int result = service.insert(dto); 같은뜻이다
		int result = service.insert(dto); 
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeList";
	}
	
//	view
	@RequestMapping(value = "codeView")
	public String codeView(codeVo vo, Model model) throws Exception{
		Code result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "infra/code/xdmin/codeRegForm";
	}
	
//	Updt
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(codeVo vo, Code dto) throws Exception {
		service.update(dto);
		return "redirect:/code/codeList";
	}
	
//	Uelete
	@RequestMapping(value = "codeUelete")
	public String codeUelete(Code dot) throws Exception {
		
		service.uelete(dot);
		
		return "redirect:/code/codeList";
	}
	
//	Delete
	@RequestMapping(value = "codeDelete")
	public String codeDelete(codeVo vo) throws Exception{
		
		service.delete(vo);
		
		return "redirect:/code/codeList";
	}
	
//	SelectOneCount
	@RequestMapping(value = "selectOneCount")
	public String selectOneCount(codeVo vo) throws Exception{
		service.selectOneCount(vo);
		return "redirect:/code/codeList";
		
	}
}	