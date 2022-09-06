package com.hongcheol.march.modules.code;

import java.util.List;

public interface CodeService {

	public List<Code> selectList(codeVo vo) throws Exception;
//	public int insert(Code dto) throws Exception;
}
