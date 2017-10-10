package bbs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.InquiryDTO;
import bbs.service.impl.BbsDao;

public class InquiryDetailController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String i_no = req.getParameter("i_no");
		BbsDao dao = new BbsDao(req.getServletContext());
		
		try {
			InquiryDTO dto = dao.selectInquiryDetail(i_no);
			req.setAttribute("dto", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.getRequestDispatcher("/admin/bbs/InquiryDetail.jsp").forward(req, resp);

	}
}
