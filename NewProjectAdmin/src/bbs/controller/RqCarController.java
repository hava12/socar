package bbs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.RqCarDTO;
import bbs.service.impl.BbsDao;

public class RqCarController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BbsDao dao = new BbsDao(req.getServletContext());
		try {
			List<RqCarDTO> list = dao.select_RqCarList();
			req.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/admin/bbs/RqCarList.jsp").forward(req, resp);
	}
}
