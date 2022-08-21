package com.sttproject.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.UserDAO;

public class KakaoLoginOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String email = req.getParameter("email");
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		
		
		if(email != null) {
			req.getSession().setAttribute("loginUser", email);
			System.out.println(email);
			transfer.setPath("/");
		} else {
			transfer.setPath("/");
			
		}
				
				
		
		return transfer;
	}

}
