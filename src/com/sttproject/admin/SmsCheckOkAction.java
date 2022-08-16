package com.sttproject.admin;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;

public class SmsCheckOkAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String smscheck = req.getParameter("smscheck");
		String result = (String) req.getSession().getAttribute("result");
		String userid = (String) req.getSession().getAttribute("userid");
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		if(result.equals(smscheck)) {
			transfer.setPath("/app/user/findview2.jsp");
		} else {
			transfer.setPath("/app/user/findinfo.jsp");
		}
		
		
		
		return transfer;
	}
}
