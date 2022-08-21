package com.sttproject.app.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dto.ServiceDTO;

public class ServiceRegisterAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ServiceDTO register = new ServiceDTO();
		ServiceDAO sdao = new ServiceDAO();
		
		register.setServicetitle(req.getParameter("servicetitle"));
		register.setServicecategory(Integer.parseInt(req.getParameter("servicecategory")));
		register.setServicetype(Integer.parseInt(req.getParameter("servicetype")));
		register.setServiceteamscale(Integer.parseInt(req.getParameter("serviceteamscale")));
		register.setServiceresident(req.getParameter("serviceresident"));
		register.setServiceprice(Integer.parseInt(req.getParameter("serviceprice")));
		register.setServiceperiod(req.getParameter("serviceperiod"));
		register.setServiceinfo(req.getParameter("serviceeinfo"));
		
		
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		PrintWriter out = resp.getWriter();
		if(sdao.serviceregister(register)){
			transfer.setPath(req.getContextPath()+"/app/service/servicelist.jsp");
		}else {
			out.print("<script>");
			out.print("alter('다시 시도해주세요!';");
			out.print("<script>");
			transfer.setPath(req.getContextPath()+"/app/service/service_register.jsp");
		}
		return transfer;
	}

}