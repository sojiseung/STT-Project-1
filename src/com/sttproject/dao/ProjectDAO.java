package com.sttproject.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.ExpertDTO;
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

	public ProjectDTO getdetail(int projectidx) {
		return sqlsession.selectOne("Project.getdetail",projectidx);
	}

	public int getProjectCnt(String keyword) {
		if(keyword == null || keyword.equals("")) {
			return sqlsession.selectOne("Project.projectcnt");
		}else {
			// title과 keyword 비교
			return sqlsession.selectOne("Project.projectcntwithkey", keyword);
		}
	}

	public List<ProjectDTO> getprojectlist(int startRow, int pageSize, String keyword) {
		List<ProjectDTO> list;
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		if(keyword == null || keyword.equals("")) {
			list = sqlsession.selectList("Project.getprojectlist",datas);
		}else {
			datas.put("keyword",keyword);
			list = sqlsession.selectList("Project.getprojectlistwithkey",datas);
		}
		return list;
	}

}
