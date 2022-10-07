package com.hongcheol.march.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	public void setSearchAndPaging(MemberVo vo) throws Exception {
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());

		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "member")
	public String member(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		System.out.println("vo.getShvalue(): " + vo.getShValue());
		System.out.println("vo.getShoption(): "+ vo.getShOption());
		System.out.println("vo.getShDelNy(): "+ vo.getShDelNy());

		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/member/xdmin/member";
	}

//	RegForm/ View포함
	@RequestMapping(value = "memberRegForm")
	public String memberRegForm(Member dto, @ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/member/xdmin/memberRegForm";
	}

//	Insert	
	@RequestMapping(value = "memberInst")
	public String memberInst(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {

		int result = service.insert(dto);
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("seq");
		System.out.println("controller result: " + result);
		return "redirect:/member/memberRegForm";
		
	}

//	Updt	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/member/member";
	}

//	Uelete
	@RequestMapping(value = "memberUelete")
	public String memberUelete(Member dto) throws Exception {
		service.uelete(dto);
		return "redirect:/member/member";
	}

//	Delete	
	@RequestMapping(value = "memberDelete")
	public String memberDelete(MemberVo vo) throws Exception {
		service.delete(vo);
		return "redirect:/member/member";
	}

//	SelectOneCount
	@RequestMapping(value = "selectOneCount")
	public String selectOneCount(MemberVo vo) throws Exception {
		service.selectOne(vo);
		return "redirect:/member/member";
	}

//	id중복확인
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();

		int result = service.idCheck(dto);
		System.out.println("result : " + result);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

//	로그인
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
			
			Member rtMember = service.selectLogin(dto);
			
			if (rtMember != null) {
				
				httpSession.setMaxInactiveInterval(60 * 30); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember.getSeq());
				httpSession.setAttribute("sessId", rtMember.getId());
				httpSession.setAttribute("sessName", rtMember.getName());
				System.out.println("rtMember.getseq : "  + rtMember.getId());
				returnMap.put("rt", "success");
			}else {
				returnMap.put("rt", "fail");
			}
			return returnMap;


	}
	
//	로그아웃
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception{
		Map<String,Object> returnMap = new HashMap<String,Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
}


	

