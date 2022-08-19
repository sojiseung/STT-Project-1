package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.OrderDAO;
import com.sttproject.dto.ExpertDTO;
import com.sttproject.dto.OrderDTO;
import com.sttproject.dto.UserDTO;

public class ServiceOrderOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		OrderDTO order = new OrderDTO();
		OrderDAO odao = new OrderDAO();
		UserDTO user = (UserDTO)req.getSession().getAttribute("loginUser");
		ExpertDTO expert = new ExpertDTO();
		
		
		//구매 유저 세션 받아오기 
		int buyeridx = user.getUseridx();
		System.out.println(buyeridx);
		int expertidx = expert.getExpertidx();
		System.out.println(expertidx);
		
		
		//서비스 등록하기
		order.setUseridx(buyeridx); // 구매유저 세션불러와 저장.
		order.setServiceidx(Integer.parseInt(req.getParameter("serviceidx")));
		order.setExpertidx(expertidx); //전문가idx 해당 서비스에 등록.
		order.setServicetitle(req.getParameter("servicetitle"));
		order.setServicecategory(Integer.parseInt(req.getParameter("servicecategory")));
		order.setServiceteamscale(Integer.parseInt(req.getParameter("serviceteamscale")));
		order.setServiceresident(req.getParameter("setServiceresident"));
		order.setServiceprice(Integer.parseInt(req.getParameter("serviceprice")));
		order.setSerivceperiod(Integer.parseInt(req.getParameter("serviceperiod")));
		order.setServiceinfo(req.getParameter("serviceinfo"));
		
		
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if(odao.serviceorder(order)){
			
		}
		return null;
	}

}