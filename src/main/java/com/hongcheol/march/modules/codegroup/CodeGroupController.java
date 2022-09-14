package com.hongcheol.march.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getShvalue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupRegForm")
	public String codeGroupRegForm(Model model) throws Exception{
		
		return "infra/codegroup/xdmin/codeGroupRegForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception{
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "infra/codegroup/xdmin/codeGroupRegForm";
	}
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto) throws Exception {
		
		service.update(dto);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	@RequestMapping(value = "codeGroupUelete")
	public String codeGroupUelete(CodeGroup dto) throws Exception {
		
		service.uelete(dto);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	@RequestMapping(value = "codeGroupDelete")
	public String codeGroupDelete(CodeGroup dto) throws Exception {
		
		service.delete(dto);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
}

