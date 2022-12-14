package com.hongcheol.march.modules.codegroup;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hongcheol.march.modules.code.Code;
import com.hongcheol.march.modules.code.CodeServiceImpl;
import com.hongcheol.march.modules.code.codeVo;
import com.hongcheol.march.modules.member.Member;
import com.hongcheol.march.modules.member.MemberVo;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
	}
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		System.out.println("vo.getShvalue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupAjaxList")
	public String codeGroupAjaxList(@ModelAttribute("vo") CodeGroupVo vo ,Model model) throws Exception {
		setSearchAndPaging(vo);
		return "infra/codegroup/xdmin/codeGroupAjaxList";
	}
	
	@RequestMapping(value = "codeGroupAjaxLita")
	public String codeGroupAjaxLita(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if (vo.getTotalRows() > 0 ) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "infra/codegroup/xdmin/codeGroupAjaxLita";
	}
	
//	RegForm,View
	@RequestMapping(value = "codeGroupRegForm")
	public String codeGroupRegForm(CodeGroup dto, @ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception{
		CodeGroup result = service.selectOne(vo);
		System.out.println("vo.getSeq(): "+ vo.getSeq());
		model.addAttribute("item",result);
		return "infra/codegroup/xdmin/codeGroupRegForm";
	}
	
//	Insert
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupRegForm";
	}
	
	
//	  @RequestMapping(value = "codeGroupView") 
// 	  public String codeGroupView(CodeGroupVo vo, Model model) throws Exception{
//		  CodeGroup result = service.selectOne(vo); 
//		  model.addAttribute("item",result);
//		  return "infra/codegroup/xdmin/codeGroupRegForm"; }
	 
	
//	Updt
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto,RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
//	Uelete
	@RequestMapping(value = "codeGroupUelete")
	public String codeGroupUelete(CodeGroup dto) throws Exception {
		
		service.uelete(dto);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
//	Delete
	@RequestMapping(value = "codeGroupDelete")
	public String codeGroupDelete(CodeGroupVo vo) throws Exception {
		
		service.delete(vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
//	selectOneCount
	@RequestMapping(value = "selectOneCount")
	public String selectOneCount(CodeGroupVo vo) throws Exception {
		service.selectOneCount(vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	
//	엑셀다운
	@RequestMapping("excelDownload")
    public void excelDownload(CodeGroupVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			
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
	        String[] tableHeader = {"Seq","코드그룹 코드", "코드그룹 이름(한글)", "코드그룹 이름(영문)", "코드갯수", "등록일", "수정일"};

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
	        	cell.setCellValue(list.get(i).getCodeGroup());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCodeNameK());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCodeNameEn());
	        	
//	            cell = row.createCell(4);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//				
//				  if(list.get(i).getGender() != null)
//				  cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).
//				  getGender()));
				 
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getRegistrationDate());   
	            
//	            cell = row.createCell(6);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//				
//				  if(list.get(i).getArea() != null)
//				  cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getArea()));
				 
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getRevisedDate());
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
}

