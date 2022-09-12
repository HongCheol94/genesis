package com.hongcheol.march.modules.member;

import java.util.Date;

public class MemberVo {

	private Integer shOption;
	private String shValue;
	private Integer shDelNy;
	private Date registrationDate;
	private Date revisDate;
	private String seq;
	
//	-------------------------------
	
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
	public Date getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}
	public Date getRevisDate() {
		return revisDate;
	}
	public void setRevisDate(Date revisDate) {
		this.revisDate = revisDate;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
}
