package com.hongcheol.march.modules.sellRegForm;

import java.util.List;


public interface SellRegFormService {

	public List<SellRegForm> selectList(SellRegFormVo vo) throws Exception;
	public int insert(SellRegForm dto) throws Exception;
	
}
