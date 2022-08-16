package com.sttproject.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.UserDAO;
import com.sttproject.dto.ExpertDTO;
import com.sttproject.dto.UserDTO;

public class ExpertProfileOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ExpertDTO expert= new ExpertDTO();
		
		UserDTO user = (UserDTO)req.getSession().getAttribute("loginUser");
		System.out.println("룰루");
		System.out.println(user.getUseridx());
		System.out.println("룰루");
		int useridx = user.getUseridx();
		
		expert.setUseridx(useridx);
		expert.setExpertnickname(req.getParameter("expertnickname"));
		expert.setExpertintro(req.getParameter("expertintro"));
		expert.setExpertworkplace(req.getParameter("expertworkplace"));
		expert.setExpertmajor(req.getParameter("expertmajor"));
		expert.setExpertmajorpart(req.getParameter("expertmajorpart"));
		expert.setExpertmajortechnic(req.getParameter("expertmajortechnic"));
		expert.setFreelancercheck(req.getParameter("freelancercheck"));
		expert.setExpertedu(req.getParameter("expertedu"));
		expert.setExpertcertificate(req.getParameter("expertcertificate"));
		expert.setDesiredsalary(Integer.parseInt(req.getParameter("desiredsalary")));
		expert.setExpertresident(req.getParameter("expertresident"));
		
		UserDAO udao = new UserDAO();
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if(udao.expertjoin(expert)) {
			transfer.setPath(req.getContextPath()+"/app/main.jsp");
			
		} else {
			transfer.setPath(req.getContextPath());
		}
		
		
		return transfer;
	}
}
