package com.sttproject.dao;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.ProjectDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class ProjectDAO {
	SqlSession sqlsession;
	
	public ProjectDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}

	public boolean projectrequest(ProjectDTO project) {
		return sqlsession.insert("Project.request", project) == 1; 
	}
}
