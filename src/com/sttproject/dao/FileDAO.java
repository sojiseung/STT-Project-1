package com.sttproject.dao;


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
	
}
