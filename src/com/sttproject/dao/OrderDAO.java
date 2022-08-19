package com.sttproject.dao;


import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.OrderDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class OrderDAO {
	SqlSession sqlsession;
	
	public OrderDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public boolean serviceorder(OrderDTO order) {
		return sqlsession.insert("Order.service", order) ==1 ;
		
	
	}
	
	
}