package com.hongcheol.march.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	

	@RequestMapping(value = "codeList")
	public String codeList(Model model, codeVo vo) throws Exception {
		//페이징 컨트롤러 추가 시작
		vo.setParamsPaging(service.selectOneCount(vo)); 
		//페이징 컨트롤러 추가 끝
		System.out.println("vo.getShvalue(): " + vo.getShValue());
		System.out.println("vo.getShoption(): "+ vo.getShOption());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeRegForm")
	public String codeRegForm(Model model) throws Exception{
		
		return "infra/code/xdmin/codeRegForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeGroupInst(Code dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeView")
	public String codeView(codeVo vo, Model model) throws Exception{
		Code result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "infra/code/xdmin/codeRegForm";
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(codeVo vo, Code dto) throws Exception {
		service.update(dto);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeUelete")
	public String codeUelete(Code dot) throws Exception {
		
		service.uelete(dot);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDelete")
	public String codeDelete(codeVo vo) throws Exception{
		
		service.delete(vo);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "selectOneCount")
	public String selectOneCount(codeVo vo) throws Exception{
		service.selectOneCount(vo);
		return "redirect:/code/codeList";
		
	}
	
}	