package com.hongcheol.march.modules.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongcheol.march.modules.dealer.Dealer;
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
	
//	inset Dealer
	@RequestMapping(value = "dealerInsert")
	public String dealerInsert(Dealer dto) throws Exception{
		service.insertD(dto);
		return "infra/join/xdmin/joinForm";
	}
	
}
