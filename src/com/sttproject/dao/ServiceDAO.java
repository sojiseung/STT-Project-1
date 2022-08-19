package com.sttproject.dao;


import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.ServiceDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class ServiceDAO {
	SqlSession sqlsession;
	
	public ServiceDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public boolean serviceorder(ServiceDTO order) {
		return sqlsession.insert("Order.service", order) ==1 ;
		
	
	}
	
	
}