package bbs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.NoticeDto;
import bbs.service.impl.BbsDao;

public class NoticeDetailController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String not_no = req.getParameter("not_no");
			
			BbsDao dao = new BbsDao(req.getServletContext());
			NoticeDto dto =null;
			try {
				dto = dao.selectNoticeOne(not_no);
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("dto", dto);
			
			req.getRequestDispatcher("/admin/bbs/NoticeDetail.jsp").forward(req, resp);
	}
}
