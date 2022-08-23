package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dto.ReplyDTO;

public class ReplyWriteAction implements Action{
//?? 
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		ReplyDTO rdto = new ReplyDTO();
		
		String userid = (String)req.getSession().getAttribute("loginUser");
		int serviceidx = (Integer)req.getSession().getAttribute("serviceidx");
		
		rdto.setUserid(userid);
		rdto.setServiceidx(serviceidx);
		rdto.setReplycontents(req.getParameter("replycontents"));
		
		return null;
	}

}
