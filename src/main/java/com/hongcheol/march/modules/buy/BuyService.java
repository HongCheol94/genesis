package com.hongcheol.march.modules.buy;

import java.util.List;

import com.hongcheol.march.modules.main.MainVo;

public interface BuyService {

	public List<Buy> selectList() throws Exception;
	public List<Buy> selectListOne(MainVo vo) throws Exception;
	public int selectOneCount(BuyVo vo) throws Exception;
	
}
