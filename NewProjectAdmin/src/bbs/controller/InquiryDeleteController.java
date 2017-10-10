package bbs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.impl.BbsDao;

public class InquiryDeleteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BbsDao dao = new BbsDao(req.getServletContext());
		String i_no=req.getParameter("i_no");
		int sucorfail=0;
		try {
			sucorfail = dao.deleteInquiry(i_no);
		} catch (Exception e) {			
			e.printStackTrace();
		}
		req.setAttribute("WHERE", "DELETEINQUIRY");
		req.setAttribute("SUC_FAIL", sucorfail);
		
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
}
