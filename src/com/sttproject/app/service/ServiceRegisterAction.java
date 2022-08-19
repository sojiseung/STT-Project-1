package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.OrderDAO;
import com.sttproject.dto.ExpertDTO;
import com.sttproject.dto.OrderDTO;
import com.sttproject.dto.UserDTO;

public class ServiceRegisterAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		OrderDTO 
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if(odao.serviceorder(order)){
			
		}
		return null;
	}

}