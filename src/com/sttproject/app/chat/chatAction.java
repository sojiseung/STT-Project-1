package com.sttproject.app.chat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.ChatDAO;

public class chatAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int serviceidx = Integer.parseInt(req.getParameter("serviceidx"));
		ChatDAO cdao = new ChatDAO();
		String userid = (String)req.getSession().getAttribute("usreid");
		String servicecompany = req.getParameter("servicecompany");
		System.out.println(serviceidx);
		System.out.println(servicecompany);
		String toID = cdao.getID(serviceidx);
		System.out.println(toID);
		
		req.setAttribute("servicecompany", servicecompany);
		req.setAttribute("toid", toID);
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/chat/chat.jsp");
		return transfer;
	}

}
