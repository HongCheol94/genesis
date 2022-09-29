package com.hongcheol.march.modules.dealer;

public class Dealer {
	
	private String seq;
	private String id;
	private String password;
	private String dealerName;
	private String gender;
	private String grade;
	private String dealerNumber;
	private String company;
	private Integer delNy;
	
//	------------------------------
	
	
	public String getId() {
		return id;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDealerName() {
		return dealerName;
	}
	public void setDealerName(String dealerName) {
		this.dealerName = dealerName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getDealerNumber() {
		return dealerNumber;
	}
	public void setDealerNumber(String dealerNumber) {
		this.dealerNumber = dealerNumber;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
}
