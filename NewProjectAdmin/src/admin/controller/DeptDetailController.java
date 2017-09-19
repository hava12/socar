package admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.DeptDto;
import admin.service.impl.AdminDao;

public class DeptDetailController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String dept_no = req.getParameter("dept_no");
	
		AdminDao dao = new AdminDao(req.getServletContext());
		DeptDto dto = null;
		try {dto = dao.selectDeptOne(dept_no);
		} catch (Exception e) {e.printStackTrace();}
		
		dto.setDept_desc(dto.getDept_desc().replaceAll("\r\n", "<br/>"));
		
		req.setAttribute("dto",dto);
		
		req.getRequestDispatcher("/admin/admin/DeptDetail.jsp").forward(req, resp);
	}
}
