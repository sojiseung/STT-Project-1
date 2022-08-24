package com.sttproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.FileDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class FileDAO {
	SqlSession sqlsession;
	
	public FileDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
		
	}

	public boolean insertFile(FileDTO file) {
		return sqlsession.insert("File.insertfile",file) == 1;
	}

	public List<FileDTO> getFiles(int serviceidx) {
		return sqlsession.selectList("File.getfile", serviceidx);
	}
	
}
