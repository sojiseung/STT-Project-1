package com.sttproject.dao;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.OrderDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class OrderDAO {

	SqlSession sqlsession;
	
	public OrderDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public boolean orderservice(OrderDTO order) {
		return sqlsession.insert("Service.orderservice",order)==1;
	}
	
}
