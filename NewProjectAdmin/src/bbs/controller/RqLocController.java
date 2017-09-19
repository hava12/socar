package bbs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.RqCarDTO;
import bbs.service.RqLocDTO;
import bbs.service.impl.BbsDao;

public class RqLocController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BbsDao dao = new BbsDao(req.getServletContext());
		try {
			List<RqLocDTO> list = dao.select_RqLocList();
			req.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/admin/bbs/RqLocList.jsp").forward(req, resp);
	}
}
