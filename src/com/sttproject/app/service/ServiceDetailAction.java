package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dto.ServiceDTO;
import com.sttproject.dto.UserDTO;

public class ServiceDetailAction implements Action { //boardview
	//게시글에 대한 정보 ( 댓글이나 좋아요 카운트 등등 )을 긁어가려면 detailactionc에서수행 
	//등록된 서비스 디테일 정보 select ,  title , price, period, info, readcount  
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//select, forward, boardview.jsp, BoardDTO
		
		ServiceDAO sdao = new ServiceDAO ();
		int serviceidx = Integer.parseInt(req.getParameter("serviceidx"));
		int expertidx = Integer.parseInt(req.getParameter("expertidx"));
	//게시글정보 		
		ServiceDTO service = sdao.getdetail(serviceidx);

	//좋아요카운트 	
		if(!(service.getExpertidx()==expertidx)) {
			service.setLikecnt(service.getLikecnt()+1);
		}

	//파일정보 	
		FileDAO fdao = new FileDAO();
		
		req.setAttribute("service", service);
		req.setAttribute("files", fdao.getFiles(serviceidx));
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/service/servicedetail.jsp");
		return transfer;
	}
}

