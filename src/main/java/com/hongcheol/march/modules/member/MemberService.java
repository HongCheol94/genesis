package com.hongcheol.march.modules.member;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception; 
	public int insert(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int update(Member dto) throws Exception;
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	public int selectOneCount(MemberVo vo) throws Exception;
	public int idCheck(Member dto) throws Exception;
	public Member selectLogin(Member dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception;
}
