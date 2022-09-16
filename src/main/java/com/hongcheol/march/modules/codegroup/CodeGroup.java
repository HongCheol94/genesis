package com.hongcheol.march.modules.codegroup;

import java.util.Date;

/**
 * @author ezen
 *
 */
public class CodeGroup {

// 	infr_code_group	
	private String seq;
	private String codeGroup;
	private Integer cnt;
	private Integer shDelNy;
	private String codeNameK;
	private String codeNameEn;
	private Date registrationDate;
	private Date revisedDate;
	private Integer deleteNy;
	
	
	
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
	public Date getRevisedDate() {
		return revisedDate;
	}
	public void setRevisedDate(Date revisedDate) {
		this.revisedDate = revisedDate;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCodeGroup() {
		return codeGroup;
	}
	public void setCodeGroup(String codeGroup) {
		this.codeGroup = codeGroup;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
	public Integer getDeleteNy() {
		return deleteNy;
	}
	public void setDeleteNy(Integer deleteNy) {
		this.deleteNy = deleteNy;
	}
	
	
}