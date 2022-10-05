package com.hongcheol.march.modules.join;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
