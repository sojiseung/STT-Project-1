package com.sttproject.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.ExpertDTO;
import com.sttproject.dto.UserDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	
	}

	public boolean userjoin(UserDTO user) {
		
		return sqlsession.insert("User.userjoin", user) == 1;
	}

	public UserDTO userlogin(String userid, String userpw) {
		HashMap<String,String> user = new HashMap<String, String>();
		user.put("userid", userid);
		user.put("userpw",userpw);
		
		return sqlsession.selectOne("User.userlogin",user) ;
	}

	public boolean expertjoin(ExpertDTO expert) {
		int useridx = expert.getUseridx();
			   sqlsession.update("User.expertupdate" , useridx);
		return sqlsession.insert("User.expertjoin",expert) == 1;
	}
	
	public boolean checkid(String userid) {
		
		return (Integer)sqlsession.selectOne("User.checkid", userid) == 0;
	}

	public ExpertDTO expertinfo(int useridx) {
		return sqlsession.selectOne("User.expertinfo", useridx);
	}

	

}
