package com.hongcheol.march.modules.code;

import java.util.Date;

import com.hongcheol.march.common.constants.Constants;

public class codeVo {

	private Integer ShOption;
	private String shValue;
	private Integer shDelNy;
	private String codeNameK;
	private String codeNameEn;
	private Date registrationDate;
	private Date reviseDate;
	private Integer useNy;
	private Integer turn;
	private String codeAn;
	private String seq;
	
// paging
	private int thisPage = 1;									//	현재 페이지
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		//	화면에 보오졀 데이터 줄 갯수
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		//	화면에 보여줄 페이징 번호 갯수
	
	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RUM;
	
	private int startRnumForMysql = 0; 							// 쿼리 시작 row

//	-------------------------------------

public void setParamsPaging(int totalRows) {

//		setThisPage(3);
	
		setTotalRows(totalRows);
		
		if (getTotalRows() == 0) {
			setTotalPages(1);
		} else {
			setTotalPages(getTotalRows() / getRowNumToShow());
		}
		
		if (getTotalRows() % getRowNumToShow() > 0) {
			setTotalPages(getTotalPages() + 1);
		}
		
		if (getTotalPages() < getThisPage()) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);
		
		setEndPage(getStartPage() + getPageNumToShow() - 1);
		
		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		setEndRnumForOracle((getRowNumToShow() * getThisPage()));
		setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
		if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage() -1)));
		}
		
		System.out.println("getThisPage():" + getThisPage());
		System.out.println("getTotalRow():" + getTotalRows());
		System.out.println("getRowNumToShow():" + getRowNumToShow());
		System.out.println("getTotalPages():" + getTotalPages());
		System.out.println("getStartPage():" + getStartPage());
		System.out.println("getEndPage():" + getEndPage());
		System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
		System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
		System.out.println("getStartRnumForMysql():" + getStartRnumForMysql());
		System.out.println(rowNumToShow);
		System.out.println(pageNumToShow);
}
	
//	-------------------------------------
	public Integer getShOption() {
		return ShOption;
	}
	public void setShOption(Integer shOption) {
		ShOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
	public String getCodeNameK() {
		return codeNameK;
	}
	public void setCodeNameK(String codeNameK) {
		this.codeNameK = codeNameK;
	}
	public String getCodeNameEn() {
		return codeNameEn;
	}
	public void setCodeNameEn(String codeNameEn) {
		this.codeNameEn = codeNameEn;
	}
	public Date getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}
	public Date getReviseDate() {
		return reviseDate;
	}
	public void setReviseDate(Date reviseDate) {
		this.reviseDate = reviseDate;
	}
	public Integer getUseNy() {
		return useNy;
	}
	public void setUseNy(Integer useNy) {
		this.useNy = useNy;
	}
	public Integer getTurn() {
		return turn;
	}
	public void setTurn(Integer turn) {
		this.turn = turn;
	}
	public String getCodeAn() {
		return codeAn;
	}
	public void setCodeAn(String codeAn) {
		this.codeAn = codeAn;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRUM() {
		return RUM;
	}

	public void setRUM(Integer rUM) {
		RUM = rUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}

	
	
	
	

}
