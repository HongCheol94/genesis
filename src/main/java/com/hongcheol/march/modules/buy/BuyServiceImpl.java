package com.hongcheol.march.modules.buy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BuyServiceImpl implements BuyService {
	
	@Autowired
	BuyDao dao;
	
	@Override
	public List<Buy> selectList() throws Exception {
		List<Buy> list = dao.selectList();
		return list;
	}
}
