package com.hongcheol.march.modules.sellRegForm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hongcheol.march.modules.buy.Buy;

@Service
public class SellRegFormServiceImpl implements SellRegFormService {

	@Autowired
	SellRegFormDao dao;
	
	@Override
	public List<SellRegForm> selectList(SellRegFormVo vo) throws Exception {
		List<SellRegForm> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(SellRegForm dto) throws Exception{
		return dao.insert(dto);
	}
}
