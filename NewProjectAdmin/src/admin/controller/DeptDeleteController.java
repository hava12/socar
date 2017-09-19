package admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.impl.AdminDao;

public class DeptDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String dept_no = req.getParameter("dept_no");
		int affected =0;
		AdminDao dao = new AdminDao(req.getServletContext());
		
		try {
			affected = dao.deleteDept(dept_no);
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("WHERE", "DEPT_DELETE");
		req.setAttribute("SUC_FAIL", affected);
		
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
}
