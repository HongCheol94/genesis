package com.hongcheol.march.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongcheol.march.modules.code.Code;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "member")
	public String member(Model model, MemberVo vo) throws Exception {
		
		System.out.println("vo.getShvalue(): " + vo.getShValue());
		System.out.println("vo.getShoption(): "+ vo.getShOption());
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/member";
	}
	
	@RequestMapping(value = "MemberRegForm")
	public String MemberRegForm(Model model) throws Exception{
		
		return "infra/member/xdmin/memberRegForm";
	}
	
	@RequestMapping(value = "MemberInst")
	public String codeGroupInst(Member dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/member/member";
	}
}
