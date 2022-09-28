package com.hongcheol.march.modules.dealer;

import java.util.List;

public interface DealerService {

	public List<Dealer> selectList(DealerVo vo) throws Exception;
}
