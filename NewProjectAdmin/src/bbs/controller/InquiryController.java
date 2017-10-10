package bbs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.InquiryDTO;
import bbs.service.impl.BbsDao;

public class InquiryController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		BbsDao dao = new BbsDao(req.getServletContext());		
		try {
			List<InquiryDTO> list = dao.selectInquiryList();
			req.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/admin/bbs/Inquiry.jsp").forward(req, resp);
	}
}	
