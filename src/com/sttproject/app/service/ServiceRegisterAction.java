package com.sttproject.app.service;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dto.FileDTO;
import com.sttproject.dto.ServiceDTO;

public class ServiceRegisterAction implements Action {

	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ServiceDTO register = new ServiceDTO();

		register.setServicetitle(req.getParameter("servicetitle"));
		register.setServicecategory(Integer.parseInt(req.getParameter("servicecategory")));
		register.setServicetype(Integer.parseInt(req.getParameter("servicetype")));
		register.setServiceteamscale(Integer.parseInt(req.getParameter("serviceteamscale")));
		register.setServiceresident(req.getParameter("serviceresident"));
		register.setServiceprice(Integer.parseInt(req.getParameter("serviceprice")));
		register.setSerivceperiod(req.getParameter("serviceperiod"));
		register.setServiceinfo(req.getParameter("serviceeinfo"));

		FileDAO fdao = new FileDAO();

		String saveFolder = req.getServletContext().getRealPath("file");
		System.out.println(saveFolder);

		int size = 1024 * 1024 * 5;

		MultipartRequest multi = new MultipartRequest(req, saveFolder, size, "UTF-8", new DefaultFileRenamePolicy());

		boolean fcheck = false;
		String systemname = multi.getFilesystemName("chooseFile");
			if (systemname == null) {
				fcheck = true;
			}
		String filename = multi.getOriginalFileName("chooseFile");

		ServiceDAO sdao = new ServiceDAO();
		PrintWriter out = resp.getWriter();

		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
			if (sdao.serviceregister(register)) {
				if (!fcheck) {
					FileDTO file = new FileDTO();
					file.setFilename(filename);
					file.setSystemname(systemname);
	
					fcheck = fdao.insertFile(file);
				}
			if (fcheck) {
				transfer.setPath(req.getContextPath() + "/service/servicedetail.jsp");
			} else {
				// DB에 추가했던 게시글 데이터 다시 삭제
				transfer.setPath(req.getContextPath() + "/service/servicelist.jsp");
				Cookie cookie = new Cookie("w", "f");
				resp.addCookie(cookie);
			}
		} else {
			out.print("<script>");
			out.print("alter('다시 시도해주세요!';");
			out.print("<script>");
			transfer.setPath(req.getContextPath() + "/service/service_register.jsp");
		}
		return transfer;
	}

}