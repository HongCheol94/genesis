package com.hongcheol.march.modules.myPage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping(value = "")
public class MyPageController {

//	마이페이지
	@RequestMapping(value = "myPage")
	public String myPage(Model model) {
		return "infra/member/xdmin/myPage";
	}
//	마이페이지 로그인
	@RequestMapping(value = "myPageLogin")
	public String myPageLogin(Model model)throws Exception {
		return "infra/member/xdmin/myPageLogin";
	}
//	sns 로그인설정
	@RequestMapping(value = "snsLogin")
	public String snsLogin(Model model) throws Exception {
		return "infra/member/xdmin/snsLogin";
	}
//	회원정보 수정
	@RequestMapping(value = "myPageForm")
	public String myPageMod(Model model) throws Exception {
		return "infra/member/xdmin/myPageForm";
	}
}
