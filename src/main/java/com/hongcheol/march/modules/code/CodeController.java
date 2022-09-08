package com.hongcheol.march.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongcheol.march.modules.codegroup.CodeGroup;
import com.hongcheol.march.modules.codegroup.CodeGroupVo;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	

	@RequestMapping(value = "codeList")
	public String codeGroupList(Model model, codeVo vo) throws Exception {

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
	
}	