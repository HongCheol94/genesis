package com.hongcheol.march.modules.main;

import java.util.List;

public interface MainService {

	public List<Main> selectList(MainVo vo) throws Exception;
	public List<Main> searchMadeCountry(Main dto) throws Exception;
	public List<Main> searchMadeby(Main dto) throws Exception;
	public List<Main> searchModel(Main dto) throws Exception;
	
}
