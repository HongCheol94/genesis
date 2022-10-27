package com.hongcheol.march.modules.buyDetails;

import java.util.List;

public interface BuyDetailsService {

	/* public List<BuyDetails> selectList() throws Exception; */ 
	public BuyDetails selectOne(BuyDetailsVo vo) throws Exception;
	
}
