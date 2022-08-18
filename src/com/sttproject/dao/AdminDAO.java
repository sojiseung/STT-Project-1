package com.sttproject.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.ExpertDTO;
import com.sttproject.dto.UserDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class AdminDAO {
	SqlSession sqlsession;
	
	public AdminDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public String findid(String username, String userphone) {
		HashMap<String,Object> datas = new HashMap<String,Object>();
		datas.put("username", username);
		datas.put("userphone", userphone);
		return (String)sqlsession.selectOne("Admin.findid",datas);
	}

	public boolean findpw(String userid) {
		
		return (Integer)sqlsession.selectOne("Admin.findpw",userid) == 1;
	}


	

}
