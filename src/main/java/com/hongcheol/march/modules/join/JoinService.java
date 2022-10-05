package com.hongcheol.march.modules.join;

import java.util.List;

import com.hongcheol.march.modules.dealer.Dealer;
import com.hongcheol.march.modules.member.Member;

public interface JoinService {

	public List<Join> selectList() throws Exception; 
	public int insertM(Member dto) throws Exception;
	public int checkId(Member dto) throws Exception;
}
