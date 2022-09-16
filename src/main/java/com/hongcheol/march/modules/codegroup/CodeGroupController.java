package com.hongcheol.march.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
	}
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		//setSearchAndPaging(vo);
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		System.out.println("vo.getShvalue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupRegForm")
	public String codeGroupRegForm(CodeGroup dto, @ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception{
		CodeGroup result = service.selectOne(vo);
		System.out.println("vo.getSeq(): "+ vo.getSeq());
		model.addAttribute("item",result);
		return "infra/codegroup/xdmin/codeGroupRegForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		int result = service.insert(dto);
		vo.setSeq(dto.getSeq());
		System.out.println("dto.codeNameK(): "+ dto.getCodeNameK());
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("controller result: " + result);
		System.out.println(vo.getSeq());
		return "redirect:/codeGroup/codeGroupRegForm";
	}
	
	/*
	 * @RequestMapping(value = "codeGroupView") public String
	 * codeGroupView(CodeGroupVo vo, Model model) throws Exception{ CodeGroup result
	 * = service.selectOne(vo); model.addAttribute("item",result); return
	 * "infra/codegroup/xdmin/codeGroupRegForm"; }
	 */
	
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
	public String codeGroupDelete(CodeGroupVo vo) throws Exception {
		
		service.delete(vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "selectOneCount")
	public String selectOneCount(CodeGroupVo vo) throws Exception {
		service.selectOneCount(vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	
	

	
	
}

