package com.sttproject.app.user;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.ActionTo;

public class UserFrontController extends HttpServlet{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		doProcess(req,resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		doProcess(req,resp);
	}
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//길나누는 코드
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionTo transfer = null;
		
		switch(command) {
		
			
		case "/user/userlogin.us":
			transfer = new ActionTo();
			transfer.setPath("/");
			transfer.setRedirect(false);
			break;
			
			
		case "/user/userjoinok.us": 
			try {
				transfer = new UserJoinOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/userjoinok : "+e);
				transfer = new ActionTo();
				transfer.setPath("/error.jsp");
				transfer.setRedirect(false);
			}
			break;
			
		case "/user/userloginok.us":
			try {
				transfer = new UserLoginOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/userloginok.us : "+e);
			}
			break;
		case "/user/kakaologinok.us":
			try {
				transfer = new KakaoLoginOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/kakaologinok.us : "+e);
			}
			break;
		case "/user/naverloginok.us":
			try {
				transfer = new NaverLoginOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/user/naverloginok.us : "+e);
			}
			break;
			
			
		case "/user/checkidok.us":
			try {
				new CheckIdOkAction().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
		case "/user/userlogout.us":
			req.getSession().removeAttribute("loginUser");
			transfer = new ActionTo();
			transfer.setPath("/");
			transfer.setRedirect(false);
			break;
		
		case "/user/expertjoin.us":
			try {
			transfer = new ExpertProfileOkAction().execute(req, resp);
			}catch(Exception e) {
				System.out.println("user/expertjoin.us 오류" + e );
			}
			break;	
			
		/*
		 * case "/user/expertprofile.us": transfer = new ActionTo();
		 * transfer.setPath("/app/user/expertprofile.jsp"); transfer.setRedirect(false);
		 * break;
		 * 
		 * 
		 * case "/user/expertprofileok.us": try { transfer = new
		 * ExpertProfileOkAction().execute(req,resp); } catch (Exception e) {
		 * System.out.println("/user/expertprofileok : "+e); }
		 * 
		 * break;
		 */
			
			

		
		}
		if(transfer != null) {
			if(transfer.isRedirect()) {
				resp.sendRedirect(transfer.getPath());
			} else {
				req.getRequestDispatcher(transfer.getPath()).forward(req, resp);
			}
		}
		
		
	}
}
