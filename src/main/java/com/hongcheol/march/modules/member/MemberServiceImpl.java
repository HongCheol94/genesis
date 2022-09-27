package com.hongcheol.march.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hongcheol.march.common.util.UtilSecurity;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
    	dao.insert(dto);
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member item = dao.selectOne(vo);
		return item;
	}
	
	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
//	@Override
	public int idCheck(Member dto) throws Exception {
		return dao.idCheck(dto);
	}
//	암호화,로그인
	@Override
	public Member selectLogin(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.selectLogin(dto);
	}
	



}	
	
