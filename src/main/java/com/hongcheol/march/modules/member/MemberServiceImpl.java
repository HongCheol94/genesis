package com.hongcheol.march.modules.member;

import java.io.File;
import java.util.List;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.hongcheol.march.common.constants.Constants;
import com.hongcheol.march.common.util.UtilDateTime;
import com.hongcheol.march.common.util.UtilSecurity;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.insert(dto);
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member item = dao.selectOne(vo);
		return item;
	}
	
	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
//	id중복체크
	@Override
	public int idCheck(Member dto) throws Exception {
		return dao.idCheck(dto);
	}
//	암호화,로그인
	@Override
	public Member selectLogin(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.selectLogin(dto);
	}
	
//	파일첨부
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception {
	    
	    for(int i=0; i<multipartFiles.length; i++) {
	     
	        if(!multipartFiles[i].isEmpty()) {
	            
	            String className = dto.getClass().getSimpleName().toString().toLowerCase();
	            String fileName = multipartFiles[i].getOriginalFilename();
	            String ext = fileName.substring(fileName.lastIndexOf(".")+1);
	            String uuid = UUID.randomUUID().toString();
	            String uuidFileNmae = uuid + "." + ext;
	            String pathModule = className;
	            String nowString = UtilDateTime.nowString();
	            String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10);
	            String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
	            String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";

	            File uploadPath = new File(path);
	            
	            if (!uploadPath.exists()) {
	                uploadPath.mkdir();
	            } else {
	                // by pass
	            }
	            
	            multipartFiles[i].transferTo(new File(path + uuidFileNmae));
	            
	            dto.setPath(pathForView);
	            dto.setOriginalName(fileName);
	            dto.setUuidName(uuidFileNmae);
	            dto.setExt(ext);
	            dto.setSize(multipartFiles[i].getSize());
	            
	            dto.setTableName(tableName);
	            dto.setType(type);
//	            dto.setDefaultNy();
	            dto.setSort(maxNumber = i);
	            dto.setPseq(dto.getSeq());
	            
	            dao.insertUploaded(dto);
	        }
	        
	    }
	}
	
	
}	
	
