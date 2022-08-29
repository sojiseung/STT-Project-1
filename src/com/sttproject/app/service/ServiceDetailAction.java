package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dto.ServiceDTO;

public class ServiceDetailAction implements Action { //boardview
	//게시글에 대한 정보 ( 댓글이나 좋아요 카운트 등등 )을 긁어가려면 detailaction에서수행 
	//등록된 서비스 디테일 정보 select ,  title , price, period, info, readcount  
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//select, forward, boardview.jsp, BoardDTO
		int serviceidx = Integer.parseInt(req.getParameter("serviceidx"));
		ServiceDAO sdao = new ServiceDAO ();
		String userid = (String)req.getSession().getAttribute("userid");
	//게시글정보 		
		ServiceDTO service = sdao.getdetail(serviceidx);

	//파일정보 	
		FileDAO fdao = new FileDAO();
	
	//servicedetail.jsp 로 가져갈 내용	
		/* req.setAttribute("files", fdao.getFiles(serviceidx)); */
		req.setAttribute("service", service);
		req.setAttribute("file", fdao.getFile(serviceidx));
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/service/servicedetail.jsp");
		return transfer;
	}
}

