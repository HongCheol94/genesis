package com.hongcheol.march.modules.buyDetails;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuyDetailsServiceImpl implements BuyDetailsService {

	@Autowired
	BuyDetailsDao dao;
	
	@Override
	public List<BuyDetails> selectList() throws Exception {
		List<BuyDetails> list = dao.selectList();
		return list;
	}
	
	@Override
	public BuyDetails selectOne(BuyDetailsVo vo) throws Exception {
		BuyDetails result = dao.selectOne(vo);
		System.out.println("service result : " + result);
		return result;
	}

}
