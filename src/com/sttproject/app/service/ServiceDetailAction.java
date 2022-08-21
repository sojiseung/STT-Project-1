package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dto.ServiceDTO;
import com.sttproject.dto.UserDTO;

public class ServiceDetailAction implements Action {
	//등록된 서비스 디테일 정보 select ,  title , price, period, info, readcount  
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//select, forward, boardview.jsp, BoardDTO
		
		int serviceidx = Integer.parseInt(req.getParameter("serviceidx"));
		ServiceDAO sdao = new ServiceDAO();
//		UserDTO user = (UserDTO)req.getSession().getAttribute("loginUser");
//		int useridx = user.getUseridx();
		
		ServiceDTO service = sdao.getdetail(serviceidx);
		
//		if(!service.getServiceidx()d().equals(loginUser)) {
//			service.setReadcount(board.getReadcount()+1);
//			sdao.updateReadCount(boardnum);
//		}
//		
//		FileDAO fdao = new FileDAO();
		
		req.setAttribute("service", service);
		//req.setAttribute("files", fdao.getFiles(boardnum));
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/service/servicedetail.jsp");
		return transfer;
	}
}

