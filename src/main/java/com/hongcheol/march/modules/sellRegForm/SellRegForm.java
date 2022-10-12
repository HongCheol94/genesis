package com.hongcheol.march.modules.sellRegForm;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class SellRegForm {

		private String seq;
		private String carName;
		private Integer pirce;
		private Integer carEngine;
		private Integer area;
		private String carNumber;
		@DateTimeFormat(pattern = "yyyy-MM-dd")
		private Date carAge;
		private Integer Mleage;
		private Integer carGearBox;
		private String carFuelEfficiency;
		private Integer carKind;
		private Integer carCc;
		private Integer color;
		private Integer taxe;
		private Integer seize;
		private Integer collateral;
		private Integer presentNumber;
		private Integer stoppeout;
		private Integer madeCountry;
		private Integer model;
		private Integer madeby;
		private Integer master;
		private Integer member_seq;
		private Integer dealer_seq;
		private Integer carDefaultNy;
		private Integer carMleage;
		
//		----------------------------------
		
		public String getSeq() {
			return seq;
		}
		public void setSeq(String seq) {
			this.seq = seq;
		}
		public String getCarName() {
			return carName;
		}
		public void setCarName(String carName) {
			this.carName = carName;
		}
		public Integer getPirce() {
			return pirce;
		}
		public void setPirce(Integer pirce) {
			this.pirce = pirce;
		}
		public Integer getCarEngine() {
			return carEngine;
		}
		public void setCarEngine(Integer carEngine) {
			this.carEngine = carEngine;
		}
		public Integer getArea() {
			return area;
		}
		public void setArea(Integer area) {
			this.area = area;
		}
		public String getCarNumber() {
			return carNumber;
		}
		public void setCarNumber(String carNumber) {
			this.carNumber = carNumber;
		}
		public Date getCarAge() {
			return carAge;
		}
		public void setCarAge(Date carAge) {
			this.carAge = carAge;
		}
		public Integer getMleage() {
			return Mleage;
		}
		public void setMleage(Integer mleage) {
			Mleage = mleage;
		}
		public Integer getCarGearBox() {
			return carGearBox;
		}
		public void setCarGearBox(Integer carGearBox) {
			this.carGearBox = carGearBox;
		}
		public String getCarFuelEfficiency() {
			return carFuelEfficiency;
		}
		public void setCarFuelEfficiency(String carFuelEfficiency) {
			this.carFuelEfficiency = carFuelEfficiency;
		}
		public Integer getCarKind() {
			return carKind;
		}
		public void setCarKind(Integer carKind) {
			this.carKind = carKind;
		}
		public Integer getCarCc() {
			return carCc;
		}
		public void setCarCc(Integer carCc) {
			this.carCc = carCc;
		}
		public Integer getColor() {
			return color;
		}
		public void setColor(Integer color) {
			this.color = color;
		}
		public Integer getTaxe() {
			return taxe;
		}
		public void setTaxe(Integer taxe) {
			this.taxe = taxe;
		}
		public Integer getSeize() {
			return seize;
		}
		public void setSeize(Integer seize) {
			this.seize = seize;
		}
		public Integer getCollateral() {
			return collateral;
		}
		public void setCollateral(Integer collateral) {
			this.collateral = collateral;
		}
		public Integer getPresentNumber() {
			return presentNumber;
		}
		public void setPresentNumber(Integer presentNumber) {
			this.presentNumber = presentNumber;
		}
		public Integer getStoppeout() {
			return stoppeout;
		}
		public void setStoppeout(Integer stoppeout) {
			this.stoppeout = stoppeout;
		}
		public Integer getMadeCountry() {
			return madeCountry;
		}
		public void setMadeCountry(Integer madeCountry) {
			this.madeCountry = madeCountry;
		}
		public Integer getModel() {
			return model;
		}
		public void setModel(Integer model) {
			this.model = model;
		}
		public Integer getMadeby() {
			return madeby;
		}
		public void setMadeby(Integer madeby) {
			this.madeby = madeby;
		}
		public Integer getMaster() {
			return master;
		}
		public void setMaster(Integer master) {
			this.master = master;
		}
		public Integer getMember_seq() {
			return member_seq;
		}
		public void setMember_seq(Integer member_seq) {
			this.member_seq = member_seq;
		}
		public Integer getDealer_seq() {
			return dealer_seq;
		}
		public void setDealer_seq(Integer dealer_seq) {
			this.dealer_seq = dealer_seq;
		}
		public Integer getCarDefaultNy() {
			return carDefaultNy;
		}
		public void setCarDefaultNy(Integer carDefaultNy) {
			this.carDefaultNy = carDefaultNy;
		}
		public Integer getCarMleage() {
			return carMleage;
		}
		public void setCarMleage(Integer carMleage) {
			this.carMleage = carMleage;
		}
	
		

}
