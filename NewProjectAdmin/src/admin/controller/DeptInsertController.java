package admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.DeptDto;
import admin.service.impl.AdminDao;

public class DeptInsertController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/admin/admin/DeptInsert.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		int affected = 0;
		
		AdminDao dao = new AdminDao(req.getServletContext());
		DeptDto dto = new DeptDto();
		dto.setDept_no(req.getParameter("dept_no"));
		dto.setDept_name(req.getParameter("dept_name"));
		dto.setDept_desc(req.getParameter("dept_desc"));
		try {
			affected = dao.insertDept(dto);
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("WHERE","ADMIN_INSERT");
		req.setAttribute("SUC_FAIL", affected);
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
		
		
		
	}
	
	
}
