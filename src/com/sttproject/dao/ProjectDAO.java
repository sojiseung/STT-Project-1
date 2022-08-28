package com.sttproject.dao;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.mybatis.SqlMapConfig;

public class ProjectDAO {
	SqlSession sqlsession;
	
	public ProjectDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
}
