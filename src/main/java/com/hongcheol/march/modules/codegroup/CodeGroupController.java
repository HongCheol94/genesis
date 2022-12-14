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
	
//	????????????
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
	        String[] tableHeader = {"Seq","???????????? ??????", "???????????? ??????(??????)", "???????????? ??????(??????)", "????????????", "?????????", "?????????"};

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
	            
//	            String type: null ?????? ????????? ok
//	            int, date type: null ??? ?????? ?????? ????????? null check
//	            String type ????????? ????????? ???????????? ????????? seq ??? ?????? ?????????	            
	            
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

