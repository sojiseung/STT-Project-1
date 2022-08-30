package com.sttproject.app.project;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.FileDAO;
import com.sttproject.dao.ProjectDAO;
import com.sttproject.dto.FileDTO;
import com.sttproject.dto.ProjectDTO;

public class ProjectrequestOkAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// 파일 등록 =================================>
		
		// 저장될 파일의 최대 크기
		int size = 1024 * 1024 * 5; // 5MB
		
		// 웹 컨테이너 경로
		// 파일 저장 경로
		String saveFolder = req.getSession().getServletContext().getRealPath("file");
		System.out.println(saveFolder);
		
		// 업로드 파일명
		String uploadFilename = "";
		// 저장할 파일명
		String saveFilename = "";
		
		// cos 라이브러리 이용
		// 파일 업로드
		MultipartRequest multi = new MultipartRequest(req, saveFolder, size, "UTF-8", new DefaultFileRenamePolicy());
		// 기본파일 이름 변경
		boolean fcheck1 = false;
		// 파일이 들어왔는지 확인하는 장치
		
		// 실제저장할파일
		// input[type=file] 태그의 name을 써주면 시스템상 이름을 받아올 수 있음
		saveFilename = multi.getFilesystemName("chooseFile");
		System.out.println(saveFilename);
		
		if (saveFilename == null) {
			// 업로드x
			fcheck1 = true; // 파일이 담기지 않았다
		}
		uploadFilename = multi.getOriginalFileName("chooseFile");
		System.out.println(uploadFilename);
		
		// project 정보 저장
		ProjectDAO pdao = new ProjectDAO();
		ProjectDTO project = new ProjectDTO();
		String userid = (String)req.getSession().getAttribute("userid");
		
		project.setProjecttitle(multi.getParameter("projecttitle"));
		project.setProjectresident(multi.getParameter("projectresident"));
		project.setUserid(userid);
		project.setProjectdetail(multi.getParameter("projectdetail"));
		project.setProjectpersonal(multi.getParameter("projectpersonal"));
		project.setProjectdeadline(multi.getParameter("projectdeadline"));
		project.setProjectoutline(multi.getParameter("projectoutline"));
		project.setProjectbudget(Integer.parseInt(multi.getParameter("projectbudget")));
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(true);
		if(pdao.projectrequest(project)) {
			FileDAO fdao = new FileDAO();
			System.out.println(userid);
			int projectidx = fdao.getProjectNum(userid);
			System.out.println(projectidx);
			
			if(!fcheck1) {
				FileDTO savefile = new FileDTO();
				savefile.setProjectidx(projectidx);
				savefile.setSaveFilename(saveFilename);
				savefile.setUploadFilename(uploadFilename);
				fcheck1 =  fdao.insertFile(savefile);
			}	
			System.out.println(project.getProjectdeadline());
			if(fcheck1) {
				transfer.setPath(req.getContextPath() + "/project/projectdetail.pj?projectidx="+ projectidx);
			}else {
			transfer.setPath(req.getContextPath() + "/project/projectlist.pj");
			Cookie cookie = new Cookie("w", "f");
			resp.addCookie(cookie);
			}
		}
		
		
		
		return transfer;
		
		
		
		
		
	}
}
