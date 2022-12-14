package com.hongcheol.march.modules.myPage;

import java.util.HashMap;
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
//@RequestMapping(value = "")
public class MyPageController {

	@Autowired
	MyPageServiceImpl service; 
	
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
	
//	update
	@RequestMapping(value = "myPageUpdate")
	public String myPageUpdate(@ModelAttribute("vo")MyPageVo vo, MyPage dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/myPageForm";
	}
//	로그인
    @ResponseBody
    @RequestMapping(value = "loginProc")
    public Map<String, Object> loginProc(MyPage dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>();
            
            MyPage rtMember = service.selectLogin(dto);
            
            if (rtMember != null) {
                
                httpSession.setMaxInactiveInterval(60 * 30); // 60second * 30 = 30minute
                httpSession.setAttribute("sessSeq", rtMember.getSeq());
                httpSession.setAttribute("sessId", rtMember.getId());
                httpSession.setAttribute("sessPassword", rtMember.getPassword());
                httpSession.setAttribute("sessName", rtMember.getName());
                httpSession.setAttribute("sessNumber", rtMember.getNumber());
                httpSession.setAttribute("sessEmail", rtMember.getEmail());
                System.out.println("rtMember.getseq : "  + rtMember.getId());
                System.out.println("비밀번호는" + rtMember.getPassword());
                System.out.println("전화번호는" + rtMember.getNumber());
                returnMap.put("rt", "success");
            }else {
                returnMap.put("rt", "fail");
            }
            return returnMap;


    }
	
	
}
