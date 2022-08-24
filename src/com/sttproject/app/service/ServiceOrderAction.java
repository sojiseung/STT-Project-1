package com.sttproject.app.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.OrderDAO;
import com.sttproject.dto.OrderDTO;
import com.sttproject.dto.ServiceDTO;
import com.sttproject.dto.UserDTO;

public class ServiceOrderAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		UserDTO loginUser = (UserDTO) req.getSession().getAttribute("loginUser");
		ServiceDTO orderservice = (ServiceDTO) req.getSession().getAttribute("service");
		int serviceidx = orderservice.getServiceidx();

	// loginuser orderuser 같은지 확인
		int useridx = loginUser.getUseridx();
	System.out.println(useridx);
		int buyeridx = orderservice.getUseridx();
	System.out.println(buyeridx);

	// 총 결제금액 계산
		int usercash = loginUser.getUsercash();
	System.out.println(usercash);
		int serviceprice = orderservice.getServiceprice();
	System.out.println(serviceprice);
		int totalcash;

		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if (useridx == buyeridx) {// 사용자가 일치하면
			// 구매정보 셋팅
				OrderDTO order = new OrderDTO();
				OrderDAO odao = new OrderDAO();
	
				order.setUseridx(useridx);
				order.setServiceidx(serviceidx);
				order.setServicecnt(Integer.parseInt(req.getParameter("servicecnt")));
				order.setServicetitle(orderservice.getServicetitle());
				order.setServiceperiod(orderservice.getServiceperiod());
				order.setServiceprice(orderservice.getServiceprice());
	
				totalcash = serviceprice - usercash;
			System.out.println(totalcash);
				order.setUsercash(usercash);
				
					if (odao.orderservice(order)) { // 등록
						// 결제하기 어케하지 .
						transfer.setPath(req.getContextPath() + "결제완료경로");
					} else {
						transfer.setPath(req.getContextPath() + "/app/servie/servicedetail.jsp");
					}
			}else {
				transfer.setPath(req.getContextPath() + "/app/servie/servicedetail.jsp");
			}
		return transfer;

	}

}
