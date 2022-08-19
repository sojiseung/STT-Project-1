package com.sttproject.app.service;

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
		register.setSerivceperiod(req.getParameter("serviceperiod"));
		register.setServiceinfo(req.getParameter("serviceeinfo"));
		
		
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if(sdao.serviceregister(register)){
			transfer.setPath("");
		}
		return transfer;
	}

}