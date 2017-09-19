package bbs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.NoticeDto;
import bbs.service.impl.BbsDao;


public class NoticeDeleteController extends HttpServlet{

	@Override 
	protected void service(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException {
		
		//서비스 호출
		String no = req.getParameter("not_no");
		BbsDao dao = new BbsDao(req.getServletContext());
		
		NoticeDto dto= dao.selectNoticeOne(no);
		
		dao.delete(no);
		dao.close();
		
		req.getRequestDispatcher("/Bbs/Notice.do").forward(req, resp);
	
}
}
