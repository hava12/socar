package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.NoticeDto;
import bbs.service.impl.BbsDao;

public class AdminHomeController extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List<NoticeDto> list = null;	
		BbsDao dao = new BbsDao(req.getServletContext());
		try {
			list = dao.selectNoticeList(null);
		} catch (Exception e) {			
		}
		dao.close();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/admin/Main.jsp").forward(req, resp);
	}
}
	
