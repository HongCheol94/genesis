package com.hongcheol.march.modules.myPage;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hongcheol.march.modules.member.Member;

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
//	로그인
//	@ResponseBody
//	@RequestMapping(value = "loginProc")
//	public Map<String, Object> loginProc(MyPage dto, HttpSession httpSession) throws Exception {
//		Map<String, Object> returnMap = new HashMap<String, Object>();
//		
//		MyPage rtMember = 
//		
//	}
	
//	로그인
//    @ResponseBody
//    @RequestMapping(value = "loginProc")
//    public Map<String, Object> loginProc(MyPage dto, HttpSession httpSession) throws Exception {
//        Map<String, Object> returnMap = new HashMap<String, Object>();
//            
//            MyPage rtMember = service.selectLogin(dto);
//            
//            if (rtMember != null) {
//                
//                httpSession.setMaxInactiveInterval(60 * 30); // 60second * 30 = 30minute
//                httpSession.setAttribute("sessSeq", rtMember.getSeq());
//                httpSession.setAttribute("sessId", rtMember.getId());
//                httpSession.setAttribute("sessName", rtMember.getName());
//                System.out.println("rtMember.getseq : "  + rtMember.getId());
//                returnMap.put("rt", "success");
//            }else {
//                returnMap.put("rt", "fail");
//            }
//            return returnMap;
//
//
//    }
	
	
}
