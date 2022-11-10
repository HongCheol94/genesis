package com.hongcheol.march.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

//	infr_code
	private String seq;
	private String codeGroupNameK;
	private String ccg_seq;
	private Integer shDelNy;
	private Integer code;
	private String substituteCode;
	private String codeNameKo;
	private String codeNameEn;
	private String codeAn;
	private Integer useNy;
	private Integer turn;
	private String registrationDate;
	private String revisedDate;
	private Integer delNy;
	private String codeGroupCode;
//	------------------------------
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCodeGroupNameK() {
		return codeGroupNameK;
	}
	public void setCodeGroupNameK(String codeGroupNameK) {
		this.codeGroupNameK = codeGroupNameK;
	}
	public String getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(String ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getSubstituteCode() {
		return substituteCode;
	}
	public void setSubstituteCode(String substituteCode) {
		this.substituteCode = substituteCode;
	}
	public String getCodeNameKo() {
		return codeNameKo;
	}
	public void setCodeNameKo(String codeNameKo) {
		this.codeNameKo = codeNameKo;
	}
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	public String getCodeNameEn() {
		return codeNameEn;
	}
	public void setCodeNameEn(String codeNameEn) {
		this.codeNameEn = codeNameEn;
	}
	public String getCodeAn() {
		return codeAn;
	}
	public void setCodeAn(String codeAn) {
		this.codeAn = codeAn;
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
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getCodeGroupCode() {
		return codeGroupCode;
	}
	public void setCodeGroupCode(String codeGroupCode) {
		this.codeGroupCode = codeGroupCode;
	}
	


 
	
	
	
	
	
}
