package com.hongcheol.march.modules.member;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Member {
	
	private String seq;
	private String id;
	private String password;
	private String name;
	private Integer gender;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dob;
	private Integer postNumber;
	private String area;
	private String detailedAddress;
	private String number;
	private String emailId;
	private String email;
	private Integer memberDefaultNy;
	private Integer delNy;
	private String roadAddress;
	private String numberAddress;
	
//	---------------------------------
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Integer getPostNumber() {
		return postNumber;
	}
	public void setPostNumber(Integer postNumber) {
		this.postNumber = postNumber;
	}
	
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public String getNumberAddress() {
		return numberAddress;
	}
	public void setNumberAddress(String numberAddress) {
		this.numberAddress = numberAddress;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getEa() {
		return emailId;
	}
	public void setEa(String ea) {
		this.emailId = emailId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getMemberDefaultNy() {
		return memberDefaultNy;
	}
	public void setMemberDefaultNy(Integer memberDefaultNy) {
		this.memberDefaultNy = memberDefaultNy;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	
	
	
	
	

}
