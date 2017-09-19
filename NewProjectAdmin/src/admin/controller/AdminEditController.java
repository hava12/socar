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

public class AdminEditController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		AdminDao dao = new AdminDao(req.getServletContext());
		AdminDto dto = null;
		List<DeptDto> list = null;
		try {
			dto = dao.selectAdminOne(req.getParameter("ad_id"));
			dao = new AdminDao(req.getServletContext());
			list = dao.selectDeptList(1,2);
		} catch (Exception e) {e.printStackTrace();}
	
		
		req.setAttribute("list", list);
		req.setAttribute("dto", dto);
		
		req.getRequestDispatcher("/admin/admin/AdminEdit.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		AdminDao dao = new AdminDao(req.getServletContext());
		AdminDto dto = new AdminDto();
		
		dto.setAd_id(req.getParameter("ad_id"));
		dto.setDept_no(req.getParameter("dept_no"));
		dto.setAd_name(req.getParameter("ad_name"));
		dto.setAd_pwd(req.getParameter("ad_pwd"));
		
		int affected = 0;
		try {affected = dao.editAdmin(dto);}
		catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("WHERE", "ADMIN_EDIT");
		req.setAttribute("SUC_FAIL", affected);
		
		req.getRequestDispatcher("/admin/util/PopMessage.jsp").forward(req, resp);
		
		
		
		
	}
}
