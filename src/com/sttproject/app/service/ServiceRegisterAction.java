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

public class ServiceRegisterAction implements Action { //boardwrite
//serviceidx useridx  expertidx중 무엇을 받아올건지 생각. 
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ServiceDTO register = new ServiceDTO();
		ServiceDAO sdao = new ServiceDAO();

		// service 정보 저장
		int expertidx = Integer.parseInt(req.getParameter("expertidx"));
		register.setExpertidx(expertidx);
		int useridx = Integer.parseInt(req.getParameter("useridx"));
		register.setUseridx(useridx);
		register.setServicetitle(req.getParameter("servicetitle"));
		register.setServicecategory(Integer.parseInt(req.getParameter("servicecategory")));
		register.setServicetype(Integer.parseInt(req.getParameter("servicetype")));
		register.setServiceteamscale(Integer.parseInt(req.getParameter("serviceteamscale")));
		register.setServiceresident(req.getParameter("serviceresident"));
		register.setServiceprice(Integer.parseInt(req.getParameter("serviceprice")));
		register.setSerivceperiod(req.getParameter("serviceperiod"));
		register.setServiceinfo(req.getParameter("serviceeinfo"));

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
		// 실제 사용자가 업로드한 당시의 이름

		PrintWriter out = resp.getWriter();

		// serviceidx는  등록이 된 후에 발급됨
	
		int serviceidx = 0;

		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if (sdao.serviceregister(register)) {//서비스 등록 
			FileDAO fdao = new FileDAO();
			// 등록이 되자마자 서비스idx를다시한번 찾아준다.
			serviceidx = sdao.getLastidx(expertidx);
			if (!fcheck) {//파일 추가 
				FileDTO file = new FileDTO();
				file.setServiceidx(serviceidx);
				file.setFilename(filename);
				file.setSystemname(systemname);

				fcheck = fdao.insertFile(file);
				//req.getSession().setAttribute("expertidx", expertidx);
			}
			if (fcheck) { //서비스등록 + 파일추가 추가성공
				transfer.setPath(req.getContextPath() + "/service/servicedetail.sv?expertidx=" + expertidx);
			} else {
				// 파일 추가 실패
				out.print("<script>");
				out.print("alter('다시 시도해주세요!';");
				out.print("<script>");
				transfer.setPath(req.getContextPath() + "/service/servicelist.sv");
			
//				transfer.setPath(req.getContextPath() + "/service/servicelist.sv");
//				Cookie cookie = new Cookie("w", "f");
//				resp.addCookie(cookie);
			}
		} else {
			// 게시글 추가 실패
			out.print("<script>");
			out.print("alter('다시 시도해주세요!';");
			out.print("<script>");
			transfer.setPath(req.getContextPath() + "/service/servicelist.sv");
		}

		return transfer;
	}
}
