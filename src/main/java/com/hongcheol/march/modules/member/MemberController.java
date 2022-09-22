package com.hongcheol.march.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//import com.hongcheol.march.modules.code.Code;

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
	
//	View포함
	
	@RequestMapping(value = "memberRegForm")    
	public String memberRegForm(Model model, MemberVo vo) throws Exception{
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/memberRegForm";
	}
//	Insert	
	@RequestMapping(value = "memberInst")
	public String memberInst(Member dto) throws Exception{
		
		int result = service.insert(dto);
		
		System.out.println("controller result: " + result);
		
		return "redirect:/member/member";
	}
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto) throws Exception {
		service.update(dto);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "memberUelete")
	public String memberUelete(Member dto) throws Exception {
		service.uelete(dto);
		return "redirect:/member/member";
	}
	
	@RequestMapping(value = "memberDelete")
	public String memberDelete(MemberVo vo) throws Exception {
		service.delete(vo);
		return "redirect:/member/member";
	}
	
}
