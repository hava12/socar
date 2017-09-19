package bbs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.NoticeDto;
import bbs.service.impl.BbsDao;


public class NoticeEditController extends HttpServlet {

	/*@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BbsDao dao = new BbsDao(req.getServletContext());
		NoticeDto dto = dao.selectNoticeOne(req.getParameter("not_no"));
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/admin/bbs/NoticeEdit.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		BbsDao dao = new BbsDao(req.getServletContext());
		NoticeDto dto = new NoticeDto();
		dto.setNot_title(req.getParameter("not_title"));
		dto.setNot_content(req.getParameter("not_content"));
		dto.setNot_content(req.getParameter("not_img_src"));
		
		int sucorfail = dao.update(dto);
		
		req.setAttribute("SUC_FAIL", sucorfail);
		req.setAttribute("WHERE", "UPDATENOTICE");

		//6]포워드
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}*/
	
	@Override
	protected void service(
			HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		
		if(req.getMethod().toUpperCase().equals("GET")){//수정폼으로 이동
			String no = req.getParameter("not_no");
			String nowPage = req.getParameter("nowPage");
			//모델 호출 및 결과 값 받기]
			BbsDao dao = new BbsDao(req.getServletContext());
			NoticeDto dto= dao.selectNoticeOne(no);
			dao.close();
			//리퀘스트 영역에 저장]
			req.setAttribute("dto", dto);
			//포워드]
			req.getRequestDispatcher("/admin/bbs/NoticeEdit.jsp").forward(req, resp);
		}
		else{//수정처리-POST방식
			//한글처리]
			int sucorfail;
			
			req.setCharacterEncoding("UTF-8");
			//3]요청분석- 수정처리 요청
			//4]모델호출 및 결과값 받기
			//파일 업로드와 관련된 모델(비지니스 로직) 호출
			String nowPage = req.getParameter("nowPage");
			//수정성공:1,실패:0,용량초과:-1
			String no = req.getParameter("not_no");	
			
			req.setAttribute("not_no", no);
			req.setAttribute("nowPage", nowPage);
						
			
			String title = req.getParameter("title");
			String content= req.getParameter("contents");
			//데이타베이스 CRUD작업과 관련된 모델 호출]
			BbsDao dao = new BbsDao(req.getServletContext());
			NoticeDto dto = new NoticeDto();
			dto.setNot_no(no);
			dto.setNot_content(title);
			sucorfail = dao.update(dto);
			
			dao.close();
			
			req.setAttribute("SUC_FAIL", sucorfail);
			req.setAttribute("WHERE", "UPDATENOTICE");
	
		//6]포워드
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
		}/////////else
			

	}////////////service

}///////////////NoticeEditController
