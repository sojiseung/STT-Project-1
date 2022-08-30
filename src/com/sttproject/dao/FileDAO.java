package com.sttproject.dao;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.FileDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class FileDAO {
	SqlSession sqlsession;
	
	public FileDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
		
	}

	public boolean insertFile(FileDTO savefile) {
		return sqlsession.insert("File.insertfile",savefile) == 1;
	}

	public int getServiceNum(int expertidx) {
		
		return sqlsession.selectOne("File.servicenum", expertidx);
	}

	public FileDTO getFile(int serviceidx) {

		return sqlsession.selectOne("File.getFile",serviceidx);
	}
	

	public List<FileDTO> getfilelist(int startRow, int pageSize, String keyword) {
		List<FileDTO> list;
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		if(keyword == null || keyword.equals("")) {
			list = sqlsession.selectList("File.getFileList",datas);
		}
		else {
			datas.put("keyword", keyword);
			list = sqlsession.selectList("File.getFileWithKey", datas);
		}
		return list;
	}

	public int getProjectNum(String userid) {
		return sqlsession.selectOne("File.getprojectnum", userid);
	}

	public void deleteByName(String saveFilename) {
		sqlsession.delete("File.deleteByName",saveFilename);
		
	}
	
}
