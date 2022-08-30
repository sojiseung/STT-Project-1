package com.sttproject.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sttproject.dto.ExpertDTO;
import com.sttproject.dto.ServiceDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class ServiceDAO {
	SqlSession sqlsession;

	public ServiceDAO() {

		sqlsession=SqlMapConfig.getFactory().openSession(true);
	}

	
	public int getserviceCnt(String keyword) {//total page 계산
		if(keyword == null || keyword.equals("")) {
			return sqlsession.selectOne("Service.servicecnt");
		}else {
			// title과 keyword 비교
			return sqlsession.selectOne("Service.servicecntwithkey", keyword);
		}
	}

	public List<ServiceDTO> getservicelist(int startRow, int pageSize, String keyword) {
		List<ServiceDTO> list;
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		if(keyword == null || keyword.equals("")) {
			list = sqlsession.selectList("Service.getservicelist",datas);
		}else {
			datas.put("keyword",keyword);
			list = sqlsession.selectList("Service.getservicelistwithkey",datas);
		}
		return list;
	}

	public boolean serviceregister(ServiceDTO register) {

		return sqlsession.insert("Service.register", register) == 1;
	}

	
	
	public ServiceDTO getdetail(int serviceidx) {
		return sqlsession.selectOne("Service.getdetail",serviceidx);
	}


	public int getLastidx(int expertidx) {
		return sqlsession.selectOne("Service.getlastnum",expertidx);
	}


	public boolean removeService(int serviceidx) {
		return sqlsession.delete("Service.removeService",serviceidx) == 1;
	}


	public ExpertDTO getexpert(int serviceidx) {
		return sqlsession.selectOne("Service.getexpert",serviceidx);
	}

}



