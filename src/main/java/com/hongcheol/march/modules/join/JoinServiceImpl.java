package com.hongcheol.march.modules.join;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hongcheol.march.common.util.UtilSecurity;
import com.hongcheol.march.modules.member.Member;

@Service
public class JoinServiceImpl implements JoinService {

	@Autowired
	JoinDao dao;
	
	@Override
	public List<Join> selectList() throws Exception{
		return dao.selectList();
	}
	
//	맴버insert
	@Override
	public int insertM(Member dto) throws Exception{
		return dao.insertM(dto);
	}

//	id중복확인
	@Override
	public int checkId(Member dto) throws Exception{
		return dao.checkId(dto);
	}
//	login,암호화
	public Member selectLogin(Member dto) throws Exception{
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.selectLogin(dto);
	}
}
