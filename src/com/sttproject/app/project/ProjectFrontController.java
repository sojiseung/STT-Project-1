package com.sttproject.app.project;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.ActionTo;
import com.sttproject.app.service.ReplyWriteAction;
import com.sttproject.app.service.ServiceDetailAction;
import com.sttproject.app.service.ServiceListAction;
import com.sttproject.app.service.ServiceOrderAction;
import com.sttproject.app.service.ServiceRegisterAction;

public class ProjectFrontController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		doProcess(req, resp);
	}

	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 길나누는 코드
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionTo transfer = null;

		switch (command) {
		case "/project/projectrequest.pj" :
			transfer = new ActionTo();
			transfer.setPath("/app/project/project_request.jsp");
			transfer.setRedirect(false);
			break;
		case "/project/projectrequestok.pj" :
			try {
				transfer = new ProjectrequestOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/project/projectrequestok : " + e);
			}
			break;
		case "/project/projectdetail.pj":
			try {
				transfer = new ProjectDetailAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/project/projectdetail.pj : " + e);
			}
			break;
		case "/project/projectlist.pj" :
			try {
				transfer = new ProjectListAction().execute(req,resp);
			}catch (Exception e) {
				System.out.println("/service/servicelist.sv"+e);
			}
			break;
		}
		
		if (transfer != null) {
			if (transfer.isRedirect()) {
				resp.sendRedirect(transfer.getPath());
			} else {
				req.getRequestDispatcher(transfer.getPath()).forward(req, resp);
			}
		}

	}
}
