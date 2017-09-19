package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.impl.MemberDao;

public class InputPointController extends HttpServlet {
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberDao dao = new MemberDao(req.getServletContext());
		
		int point = Integer.parseInt(req.getParameter("option")+req.getParameter("point"));
		int affected=0;
		try {
			affected = dao.insertPoint(req.getParameter("smem_id"),point);
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("WHERE","INPUTPOINT");
		req.setAttribute("SUC_FAIL", affected);
		
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
	
	
}
