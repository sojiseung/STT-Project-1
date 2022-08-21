package com.sttproject.app.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.ServiceDAO;
import com.sttproject.dto.ServiceDTO;

public class ServiceListAction implements Action{
	//등록된 서비스를 모두 볼 수 있는 리스트 뷰 service title, price , file img, paging 작업 
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ServiceDAO sdao = new ServiceDAO();
		
		int page = 1;		
		
//전체 게시글의 개수 ( 총 페이지를 알기 위해서 필요 )
		int totalCnt =	sdao.getserviceCnt();
		
//한페이지에 보여줄 게시글 수
		int pageSize = 10;
		
//페이징처리 		
		int startPage = (page-1)/10*10+1;
		int endPage = startPage + 9;
		int totalPage = (totalCnt-1)/pageSize + 1;
		
		//가장 마지막 페이지 번호(totalPage)보다 연산으로 구해진 endPage가 더 큰 경우도 있다.(허구의 페이지 번호가 존재할 수 있다)
		//그때는 endPage를 가장 마지막 페이지 번호로 바꿔주어야 한다.
		endPage = endPage>totalPage ? totalPage : endPage;
		
		int startRow = (page - 1)*pageSize;
		
		List<ServiceDTO> list = sdao.getservicelist(startRow,pageSize);

		//데이터를 들고 servicelist로 이동 
		req.setAttribute("list", list);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		transfer.setPath("/app/board/boardlist.jsp");
		return transfer;
	}
}