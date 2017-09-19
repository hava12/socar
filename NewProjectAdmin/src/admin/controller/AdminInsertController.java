package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminDto;
import admin.service.DeptDto;
import admin.service.impl.AdminDao;

public class AdminInsertController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		AdminDao dao = new AdminDao(req.getServletContext());
		List<DeptDto> list = null;
		try {
			list = dao.selectDeptList(1,2);
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/admin/admin/AdminInsert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		AdminDao dao = new AdminDao(req.getServletContext());
		AdminDto dto = new AdminDto();
		int affected = 0;
		dto.setAd_id(req.getParameter("ad_id"));
		dto.setDept_no(req.getParameter("dept_no"));
		dto.setAd_name(req.getParameter("ad_name"));
		dto.setAd_pwd(req.getParameter("ad_pwd"));
		try {
			affected = dao.insertAdmin(dto);
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("SUC_FAIL", affected);
		req.setAttribute("WHERE", "ADMIN_INSERT");
		
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}

}
