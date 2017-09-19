package bbs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.impl.BbsDao;

public class RqCarDeleteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BbsDao dao = new BbsDao(req.getServletContext());
		int flag=0;
		try {
			flag = dao.delete_RqCarList(req.getParameter("rqc_code"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.setAttribute("WHERE", "RQC_DELETE");
		req.setAttribute("SUC_FAIL", flag);
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
}
