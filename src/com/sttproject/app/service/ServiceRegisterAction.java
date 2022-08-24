	package com.sttproject.app.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dao.UserDAO;
import com.sttproject.dto.ExpertDTO;
import com.sttproject.dto.FileDTO;
import com.sttproject.dto.ServiceDTO;
import com.sttproject.dto.UserDTO;

public class ServiceRegisterAction implements Action { //boardwrite
//serviceidx useridx  expertidx중 무엇을 받아올건지 생각. 
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ServiceDTO register = new ServiceDTO();
		ServiceDAO sdao = new ServiceDAO();
		
		// service 정보 저장
		register.setServicetitle(req.getParameter("servicetitle"));
		register.setServicecategory(Integer.parseInt(req.getParameter("servicecategory")));
		register.setServicetype(Integer.parseInt(req.getParameter("servicetype")));
		register.setServiceteamscale(Integer.parseInt(req.getParameter("serviceteamscale")));
		register.setServiceresident(req.getParameter("serviceresident"));
		register.setServiceprice(Integer.parseInt(req.getParameter("serviceprice")));

		register.setSerivceperiod(req.getParameter("serviceperiod"));
		register.setServiceinfo(req.getParameter("serviceinfo"));
		register.setServicereadyto(req.getParameter("servicereadyto"));
			

		System.out.println("서비스등록 ");
		
		
//파일 등록 =================================> 
		PrintWriter out = resp.getWriter();
		
		String fsl = File.separator;

		int size = 1024 * 1024 * 5;
		//웹 컨테이너 경로 
		String root = req.getSession().getServletContext().getRealPath(fsl);
		// 파일 저장 경로 
		String rootPath = root +"Uploads" + fsl;
		// 업로드 파일명 
		String uploadFile = "";
		//실제 저장할 파일명 
		String newfilename = "";
	
		int read =0;
		byte[] buf = new byte[1024];
		FileInputStream fin = null;
		FileOutputStream fout = null;
		long currentTime = System.currentTimeMillis();
		SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");
	
		
		try {
			MultipartRequest multi = new MultipartRequest(req, rootPath, size, "UTF-8", new DefaultFileRenamePolicy());
			
			//파일 업로드	
			uploadFile = multi.getFilesystemName("chooseFile");
			//실제저장할파일	
			newfilename = simDf.format(new Date(currentTime)) + 
						"."+ uploadFile.substring(uploadFile.lastIndexOf(".")+1);
			
			System.out.println(newfilename);
			//객체생성	
			File oldfile = new File(rootPath+uploadFile);
			File newfile = new File(rootPath+newfilename);
			
			if(!oldfile.renameTo(newfile)) {
				buf=new byte[1024];
				fin = new FileInputStream(oldfile);
				fout = new FileOutputStream(newfile);
				read = 0;
				while((read=fin.read(buf,0,buf.length))!=-1) {
					fout.write(buf,0,read);
				}
				fin.close();
				fout.close();
				oldfile.delete();
			}
		}	catch (Exception e) {
			System.out.println("파일 추가 실패 ");
		}
//========================== 등록
		
		int serviceidx = 0;
		boolean fcheck = false;
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if (uploadFile != null ) {//서비스 등록 
			FileDAO fdao = new FileDAO();
			// 등록이 되자마자 서비스idx를다시한번 찾아준다.
			serviceidx = sdao.getLastidx(expertidx);
			if(!fcheck) {
				
			FileDTO file = new FileDTO();
				file.setServiceidx(serviceidx);
				file.setFilename(uploadFile);
				file.setSystemname(newfilename);

				fdao.insertFile(file);
				req.getSession().setAttribute("serviceidx", serviceidx);
			}
		
			if (fcheck) { //서비스등록 + 파일추가 추가성공
				transfer.setPath(req.getContextPath() + "/service/servicedetail.sv?expertidx=" + expertidx);
			} else {
				// 파일 추가 실패
				transfer.setPath(req.getContextPath() + "/service/servicelist.sv");
				Cookie cookie = new Cookie("w", "f");
				resp.addCookie(cookie);
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
