package com.hongcheol.march.modules.code;

import java.util.List;

public interface CodeService {

	public List<Code> selectList(codeVo vo) throws Exception;
	public int insert(Code dto) throws Exception;
	public Code selectOne(codeVo vo) throws Exception;
	public int update(Code dto) throws Exception;
	public int uelete(Code dto) throws Exception;
	public int delete(codeVo vo) throws Exception;
	public int selectOneCount(codeVo vo) throws Exception;
	public List<Code> selectListPaging(codeVo vo) throws Exception;
}
