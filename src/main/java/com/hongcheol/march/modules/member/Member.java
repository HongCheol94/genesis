package com.hongcheol.march.modules.member;

import java.util.Date;

public class Member {
	
	private String seq;
	private String id;
	private String password;
	private String name;
	private int age;
	private int gender;
	private Date dob;
	private int addresNumber;
	private String address;
	private String detailedAddress;
	private String number;
	private String email;
	private String memberDefaultNy;
	
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public int getAddresNumber() {
		return addresNumber;
	}
	public void setAddresNumber(int addresNumber) {
		this.addresNumber = addresNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMemberDefaultNy() {
		return memberDefaultNy;
	}
	public void setMemberDefaultNy(String memberDefaultNy) {
		this.memberDefaultNy = memberDefaultNy;
	}
	
}
