package com.sttproject.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.UserDAO;

public class KakaoLoginOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String userid = req.getParameter("userid");
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		
		
		if(userid != null) {
			req.getSession().setAttribute("userid", userid);
			System.out.println(userid);
			transfer.setPath("/");
		} else {
			transfer.setPath("/");
			
		}
				
				
		
		return transfer;
	}

}
