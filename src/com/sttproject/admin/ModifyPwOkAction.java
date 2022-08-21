package com.sttproject.admin;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.AdminDAO;

public class ModifyPwOkAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		//MIME 타입
		
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		System.out.println(userid);
		System.out.println(userpw);
		AdminDAO adao = new AdminDAO();
		
		PrintWriter out = resp.getWriter();
		
		if(adao.modifypw(userid,userpw)){
			out.print("<script>");
			out.print("alert('비밀번호가 성공적으로 변경되었습니다.');");
			out.print("location.href = '"+req.getContextPath()+"/app/user/findinfo.jsp';");
			out.print("</script>");
			
		} else {
			out.print("<script>");
			out.print("alert('비밀번호 변경을 실패하였습니다.\\n다시 시도하여 주시기 바랍니다.');");
			out.write("location.href = '"+req.getContextPath()+"/app/user/findinfo.jsp';");
			out.print("</script>");
			
		}
		return null;
		
		
	}
}
