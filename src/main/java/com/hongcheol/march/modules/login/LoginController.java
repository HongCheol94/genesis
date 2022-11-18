package com.hongcheol.march.modules.login;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hongcheol.march.modules.member.Member;
import com.hongcheol.march.modules.member.MemberServiceImpl;

@Controller
//@RequestMapping(value = "/")
public class LoginController {
	
	@Autowired
	MemberServiceImpl service;
	
//	로그인 페이지 연결
	@RequestMapping(value = "login")
	public String login() throws Exception {
		return "infra/login/xdmin/login";
	}
//	ID/PW찾기 페이지 연결
	@RequestMapping(value = "findIdPw")
	public String findIdPw(Model model) throws Exception{
		return "infra/login/xdmin/findIdPw";
	}
	
	@ResponseBody
	@RequestMapping(value = "findId")
	public Map<String, Object> findId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member id = service.findId(dto);
		
		if (id != null) {
			returnMap.put("rt", "success");
			returnMap.put("id", id);
		} else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "findPw")
	public Map<String, Object> findPw(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object> ();
		
			int password = service.findPw(dto);
			
			if (password == 1) {
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
			
			return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "changePw")
	public Map<String, Object> changePw(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int password = service.changePw(dto);
		
		if (password == 1) {
			returnMap.put("rt", "success");
			service.changePw(dto);
		} else {
			returnMap.put("tr", "fail");
		}
		return returnMap;
	}
}
