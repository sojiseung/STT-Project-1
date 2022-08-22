package com.sttproject.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.sttproject.dto.ServiceDTO;
import com.sttproject.mybatis.SqlMapConfig;

public class ServiceDAO {
	SqlSession sqlsession;
	
	public ServiceDAO() {
		sqlsession=SqlMapConfig.getFactory().openSession(true);
	}

	
	public int getserviceCnt() {//total page 계산
		return sqlsession.selectOne("Service.servicecnt");
	}

	public List<ServiceDTO> getservicelist(int startRow, int pageSize) {
		HashMap<String, Integer> datas = new HashMap<String, Integer>();
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		return sqlsession.selectList("Service.getservicelist",datas);
	}
	public boolean serviceregister(ServiceDTO register) {
		
		return sqlsession.insert("Service.register",register)==1;
	}
	
	
	public ServiceDTO getdetail(int serviceidx) {
		return sqlsession.selectOne("Service.getdetail",serviceidx);
	}


	public int getLastidx(int expertidx) {
		return sqlsession.selectOne("Service.getlastnum",expertidx);
	}

}

