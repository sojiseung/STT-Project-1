package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dto.ServiceDTO;
import com.sttproject.dto.UserDTO;

public class ServicePaymentAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int serviceidx = Integer.parseInt(req.getParameter("serviceidx"));
		System.out.println(serviceidx);
		ServiceDAO sdao = new ServiceDAO();
		String userid = (String)req.getSession().getAttribute("userid");
		String saveFilename = req.getParameter("saveFilename"); 
		UserDTO user = (UserDTO)req.getSession().getAttribute("loginUser");

		ServiceDTO service = sdao.getdetail(serviceidx);
		req.setAttribute("service", service);
		req.setAttribute("saveFilename", saveFilename);
		req.setAttribute("user", user);
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/service/payment.jsp");
		return transfer;
	}

}
