package com.sttproject.dao;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.mybatis.SqlMapConfig;

public class ServiceDAO {
	SqlSession sqlsession;
	
	public ServiceDAO() {
		sqlsession=SqlMapConfig.getFactory().openSession(true);
	}
}
