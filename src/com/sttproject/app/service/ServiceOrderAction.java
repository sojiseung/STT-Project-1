//package com.sttproject.app.service;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.sttproject.action.Action;
//import com.sttproject.action.ActionTo;
//import com.sttproject.dao.ServiceDAO;
//import com.sttproject.dto.ExpertDTO;
//import com.sttproject.dto.ServiceDTO;
//import com.sttproject.dto.UserDTO;
//
//public class ServiceOrderAction implements Action {
//
//	@Override
//	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
//		ServiceDTO order = new ServiceDTO();
//		ServiceDAO odao = new ServiceDAO();
//		UserDTO user = (UserDTO)req.getSession().getAttribute("loginUser");
//		ExpertDTO expert = new ExpertDTO();
//		
//		
//		//구매 유저 세션 받아오기 
//		int buyeridx = user.getUseridx();
//		System.out.println(buyeridx);
//		int expertidx = expert.getExpertidx();
//		System.out.println(expertidx);
//		
//}