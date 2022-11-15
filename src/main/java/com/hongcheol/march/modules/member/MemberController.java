package com.hongcheol.march.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hongcheol.march.common.constants.Constants;
import com.hongcheol.march.modules.code.CodeServiceImpl;

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
	
	@RequestMapping(value = "memberAjaxList")
	public String memberAjaxList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		return "infra/member/xdmin/memberAjaxList";
	}
	
	@RequestMapping(value = "memberAjaxLita")
	public String memberAjaxLita(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		return "infra/member/xdmin/memberAjaxLita";
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
				httpSession.setAttribute("sessPassword", rtMember.getPassword());
				httpSession.setAttribute("sessName", rtMember.getName());
				httpSession.setAttribute("sessNumber", rtMember.getNumber());
				httpSession.setAttribute("sessEmail", rtMember.getEmail());
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
	
//	엑셀다운
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"Seq","아이디", "이름", "성별", "전화번호","주소", "이메일", "생년월일"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getId());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				
				  if(list.get(i).getGender() != null)
				  cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).
				  getGender()));
				 
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getNumber());   
	            
	            cell = row.createCell(5);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				
				  if(list.get(i).getArea() != null)
				  cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getArea()));
				 
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getEmail());
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getDob());
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
//	카카오 로그인
	@ResponseBody
	@RequestMapping(value = "kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.snsLoginCheck(dto);
		
//		 System.out.println("test : " + dto.getToken());
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	 public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getSeq());    
	     httpSession.setAttribute("sessId", dto.getId());
	     httpSession.setAttribute("sessName", dto.getName());
	     httpSession.setAttribute("sessEmail", dto.getEmail());
//	     httpSession.setAttribute("sessUser", dto.getUser_div());
//	     httpSession.setAttribute("sessImg", dto.getSnsImg());
//	     httpSession.setAttribute("sessSns", dto.getSns_type());
	 }
	
}


	

