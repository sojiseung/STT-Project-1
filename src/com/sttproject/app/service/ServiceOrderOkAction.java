package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dto.UserDTO;

public class ServiceOrderOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			
		UserDTO loginUser = (UserDTO)req.getSession().getAttribute("loginUser");	
		String serviceprice = req.getParameter("serviceprice");
		int useridx = loginUser.getUseridx();
		
		
		
		
	
	
		return null;
	}

}
