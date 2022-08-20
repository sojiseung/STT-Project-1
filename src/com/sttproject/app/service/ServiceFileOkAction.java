package com.sttproject.app.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dto.FileDTO;

public class ServiceFileOkAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		FileDAO fdao = new FileDAO();
		
		String saveFolder = req.getServletContext().getRealPath("file");
		System.out.println(saveFolder);
		
		int size = 1024*1024*5;
		
		MultipartRequest multi = new MultipartRequest(req,saveFolder,size,"UTF-8",new DefaultFileRenamePolicy());
		
		boolean fcheck = false;
		String systemname = multi.getFilesystemName("chooseFile");
			if(systemname == null) {
			fcheck = true;
		}

		String filename = multi.getOriginalFileName("chooseFile");
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
			if(!fcheck) {
				FileDTO file = new FileDTO();
				file.setServiceidx(Integer.parseInt("serviceidx"));
				file.setFilename("filename");
				file.setSystemname("systemname");
				
				fcheck = fdao.insertFile(file);
			} else if (fcheck) {
				transfer.setPath(req.getContextPath()+"/service/servicelist.jsp");
			} else {
				//DB에 추가했던 게시글 데이터 다시 삭제
				transfer.setPath(req.getContextPath()+"/board/boardlist.bo");
				Cookie cookie = new Cookie("w", "f");
				resp.addCookie(cookie);
			} 
	}else {
				transfer.setPath(req.getContextPath()+"/board/boardlist.bo");
				Cookie cookie = new Cookie("w", "f");
				resp.addCookie(cookie);
		}
		return transfer;
	}
}
