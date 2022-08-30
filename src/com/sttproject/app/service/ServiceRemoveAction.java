package com.sttproject.app.service;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dto.FileDTO;

public class ServiceRemoveAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int serviceidx = Integer.parseInt(req.getParameter("serviceidx"));
		ActionTo transfer = new ActionTo();
		
		ServiceDAO sdao = new ServiceDAO();
		FileDAO fdao = new FileDAO();
		
		String saveFolder = req.getServletContext().getRealPath("file");
		
		FileDTO files = fdao.getFile(serviceidx);
		if(sdao.removeService(serviceidx)) {
			File file = new File(saveFolder,files.getSaveFilename());
			if(file.exists()) {
				file.delete();
				fdao.deleteByName(files.getSaveFilename());
			}
			
			transfer.setPath(req.getContextPath()+"/service/servicelist.sv");
		}else {
			transfer.setPath(req.getContextPath()+"/service/servicedetaile.sv?serviceidx="+serviceidx);
		}
		
		return transfer;
	}

}
