package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.PagingUtil;
import member.service.MemDto;
import member.service.impl.MemberDao;

public class MemberListController extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberDao dao = new MemberDao(req.getServletContext());
		
		//페이징을 위한 로직 시작
		//전체 레코드 수
				int totalRecordCount=dao.getSOTotalRecordCount();
				//페이지 사이즈
				int pageSize  =Integer.parseInt(req.getServletContext().getInitParameter("PAGE_SIZE"));
				//블락페이지
				int blockPage =Integer.parseInt(req.getServletContext().getInitParameter("BLOCK_PAGE"));
				//전체 페이지수]
				int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);		
				//현재 페이지를 파라미터로 받기]
				int nowPage=req.getParameter("nowPage")==null ? 1 :	Integer.parseInt(req.getParameter("nowPage"));		
				//시작 및 끝 ROWNUM구하기]
				int start= (nowPage-1)*pageSize+1;
				int end = nowPage*pageSize;	
		
		List<MemDto> list = dao.selectMemList(start,end);
		
		//페이지용 문자열 생성]
				String pagingString=PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage,req.getServletContext().getContextPath()+"/Bbs/Notice.do?");
				
				
				//라]결과값이 있으면 리퀘스트 영역에 저장
				req.setAttribute("list", list);
				req.setAttribute("pagingString", pagingString);
				req.setAttribute("nowPage", nowPage);
				req.setAttribute("totalPage", totalPage);
				req.setAttribute("totalRecordCount", totalRecordCount);
				req.setAttribute("pageSize", pageSize);
				//마]결과값을 뿌려주거나 이동할 뷰(JSP페이지) 선택후 포워딩
		
		
				req.getRequestDispatcher("/admin/member/MemberList.jsp").forward(req, resp);
	
	}

	
	
	
	//페이징 전
	/*@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberDao dao = new MemberDao(req.getServletContext());
		List list=null;
		try {
			list = dao.selectMemList();
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/admin/member/MemberList.jsp").forward(req, resp);
	
	}*/
	
}
