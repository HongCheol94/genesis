package com.hongcheol.march.modules.join;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hongcheol.march.modules.member.Member;

@Controller
//@RequestMapping(value = "")
public class JoinController {

	@Autowired
	JoinServiceImpl service;
	
	@RequestMapping(value = "joinMember")
	public String joinMember(Model model) throws Exception{
		return "infra/join/xdmin/joinMember";
	}
	
	@RequestMapping(value ="joinDealer")
	public String joinDealer(Model model) throws Exception{
		return "infra/join/xdmin/joinDealer";
	}
	
//	insert Member
	@RequestMapping(value = "memberInsert")
	public String memberInsert(Member dto) throws Exception{
		service.insertM(dto);
		return "infra/login/xdmin/login";
	}
	
//	id중복확인
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.checkId(dto);
		System.out.println("result : " + result);
		
		if (result > 0) {
			returnMap.put("rt", "fail");
		}else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
}
