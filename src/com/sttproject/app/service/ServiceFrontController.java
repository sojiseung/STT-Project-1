package com.sttproject.app.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.ActionTo;

public class ServiceFrontController extends HttpServlet {

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
		case "/service/serviceregister.sv":
			transfer = new ActionTo();
			transfer.setPath("/app/mypage/mytable_chef_myservice.jsp");
			transfer.setRedirect(false);
			break;
		case "/service/serviceregisterok.sv":
			try {
			 transfer = new ServiceRegisterAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/service/servieclist.sv" +e);
			}
			break;
		case "/service/servicedetail.sv":
			try {
				transfer = new ServiceDetailAction().execute(req, resp);
			}catch (Exception e) {
				System.out.println("/service/servicedetail.sv :" + e);
			}
			break;
			
		case "/service/servicelist.sv" :
			try {
				transfer = new ServiceListAction().execute(req,resp);
			}catch (Exception e) {
				System.out.println("/service/servicelist.sv"+e);
			}
			break;
		case "/reply/replywrite.sv" :
			try {
				new ReplyWriteAction().execute(req,resp);
			}catch (Exception e) {
				System.out.println("/reply/replywrite.sv오류 " +e);
			}
			break;
		case "/service/serviceorder.sv" :
			try {
				transfer = new ServiceOrderAction().execute(req, resp);
			} catch(Exception e) {
				System.out.println("serviceorder.sv 오류" + e);
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