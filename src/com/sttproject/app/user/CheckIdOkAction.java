package com.sttproject.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.UserDAO;

public class CheckIdOkAction implements Action{

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String userid = req.getParameter("userid");
		System.out.println(userid);
		
		UserDAO udao = new UserDAO();
		PrintWriter out = resp.getWriter();
		
		if(udao.checkid(userid)) {
			out.print("O");
		} else {
			out.print("X");
		}
		
		out.close();
		return null;
	}

}
