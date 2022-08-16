package com.sttproject.admin;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;

public class SmsCheckOkAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String smscheck = req.getParameter("smscheck");
		System.out.println(smscheck);
		System.out.println(smscheck);
		String result = (String) req.getSession().getAttribute("result");
		System.out.println(result);
		String userid = (String) req.getSession().getAttribute("userid");
		System.out.println(userid);
		
		
		
		if(result.equals(smscheck)) {
			System.out.println(userid + result);
		}
		
		
		
		return null;
	}
}
