package com.sttproject.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.UserDAO;
import com.sttproject.dto.UserDTO;

public class UserJoinOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		UserDTO user = new UserDTO();
		
		String userid = req.getParameter("userid");
		user.setUserid(userid);
		user.setUserpw(req.getParameter("userpw"));
		user.setUsername(req.getParameter("username"));
		user.setUsergender(req.getParameter("usergender"));
		user.setUserphone(req.getParameter("userphone"));
		
		UserDAO udao = new UserDAO();
		
		PrintWriter out = resp.getWriter();
		
		if(udao.userjoin(user)) {
			//회원가입 후 캐쉬증정
			user.setUsercash(user.getUsercash()+10000);
			out.print("<script>");
			//alert('apple님 어서오세요~!');
			out.print("alert('회원가입 성공!!');");
			//location.href = '???/app/board/main.jsp';
			out.print("location.href = '"+req.getContextPath()+"/user/userlogin.us?userid=" + userid + "';");
			out.print("</script>");
			
		} else {
			out.print("<script>");
			out.print("alert('회원가입 실패ㅜㅜ 다시 시도해주세요!');");
			out.print("location.href = '"+req.getContextPath()+"/';");
			out.print("</script>");
		}
		
		
		return null;
	}
}
