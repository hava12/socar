package bbs.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.NoticeDto;
import bbs.service.impl.BbsDao;

public class NoticeInsertController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/admin/bbs/NoticeInsert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    req.setCharacterEncoding("UTF-8");
			BbsDao dao = new BbsDao(req.getServletContext());
			int affected = 0;
			try {
			NoticeDto dto = new NoticeDto();
			
			dto.setAd_id(req.getSession().getAttribute("ad_id").toString());
			dto.setNot_title(req.getParameter("not_title"));
			dto.setNot_content(req.getParameter("not_content"));
			
			
			affected = dao.insertNotice(dto, req.getParameterValues("not_img_src"));
			
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("WHERE", "INSERTNOTICE");
			req.setAttribute("SUC_FAIL", affected);
			
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
		
	}
	
}
