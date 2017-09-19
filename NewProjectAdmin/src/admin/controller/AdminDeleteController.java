package admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.impl.AdminDao;

public class AdminDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String ad_id = req.getParameter("ad_id");
			int affected = 0;
			
			AdminDao dao = new AdminDao(req.getServletContext());
			try {affected = dao.deleteAdmin(ad_id);}
			catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("WHERE", "ADMIN_DELETE");
			req.setAttribute("SUC_FAIL",affected);
			req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
			
	}
	
}
