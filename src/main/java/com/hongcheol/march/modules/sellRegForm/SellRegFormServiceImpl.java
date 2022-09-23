package com.hongcheol.march.modules.sellRegForm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellRegFormServiceImpl implements SellRegFormService {

	@Autowired
	SellRegFormDao dao;
	
	@Override
	public List<SellRegForm> selectList() throws Exception {
		List<SellRegForm> list = dao.selectList();
		return list;
	}
}
