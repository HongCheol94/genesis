package com.hongcheol.march.modules.codegroup;

import java.util.Date;

public class CodeGroupVo {

	private Integer shOption;
	private String shValue;
	private Integer shDelNy;
	private Integer cnt;
	private String codeNameK;
	private String cdoeNameEn;
	private String registrationDate;
	private String revisedDate;
	private String seq;
	private Integer delete;
// ------------	
	
	public Integer getCnt() {
		return cnt;
	}
	public String getCodeNameK() {
		return codeNameK;
	}
	public void setCodeNameK(String codeNameK) {
		this.codeNameK = codeNameK;
	}
	public String getCdoeNameEn() {
		return cdoeNameEn;
	}
	public void setCdoeNameEn(String cdoeNameEn) {
		this.cdoeNameEn = cdoeNameEn;
	}

	public String getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}
	public String getRevisedDate() {
		return revisedDate;
	}
	public void setRevisedDate(String revisedDate) {
		this.revisedDate = revisedDate;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
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
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getDelete() {
		return delete;
	}
	public void setDelete(Integer delete) {
		this.delete = delete;
	}


	
}
