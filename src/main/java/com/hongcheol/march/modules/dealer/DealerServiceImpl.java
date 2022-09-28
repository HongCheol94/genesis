package com.hongcheol.march.modules.dealer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DealerServiceImpl implements DealerService{

	@Autowired
	DealerDao dao;
	
	@Override
	public List<Dealer> selectList(DealerVo vo) throws Exception{
		List<Dealer> list = dao.selectList(vo);
		return list;
	}
	
	

	
}
