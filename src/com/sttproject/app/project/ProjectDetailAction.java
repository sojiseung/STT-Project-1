package com.sttproject.app.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dao.ProjectDAO;
import com.sttproject.dto.ExpertDTO;
import com.sttproject.dto.ProjectDTO;

public class ProjectDetailAction implements Action {
	
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int projectidx = Integer.parseInt(req.getParameter("projectidx"));
		ProjectDAO pdao = new ProjectDAO();
		
		ProjectDTO project = pdao.getdetail(projectidx);
		
		FileDAO fdao = new FileDAO();
		
		req.setAttribute("project", project);
		req.setAttribute("file", fdao.getFilewithpi(projectidx));
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/project/projectdetail.jsp");
		return transfer;
	}

}
