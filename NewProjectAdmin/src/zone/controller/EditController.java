package zone.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class EditController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ZoneDAO dao;
		try {
			dao = new ZoneDAO(req.getServletContext());
			ZoneDTO dto = dao.selectOne(req.getParameter("soz_code"));
			req.setAttribute("dto", dto);
		} catch (Exception e) {e.printStackTrace();}
		req.getRequestDispatcher("/admin/zone/ZoneEdit.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		ZoneDAO dao;
		try {dao = new ZoneDAO(req.getServletContext());
		
			ZoneDTO dto = new ZoneDTO();
			dto.setSoz_code(req.getParameter("soz_code"));
			dto.setSoz_name(req.getParameter("soz_name"));
			dto.setSoz_loc(req.getParameter("soz_loc"));
			dto.setSoz_maxcar(req.getParameter("soz_maxcar"));
			dto.setSoz_latitude(req.getParameter("soz_latitude"));
			dto.setSoz_longitude(req.getParameter("soz_longitude"));
			
			
			int flag = dao.edit(dto);
			
			req.setAttribute("WHERE","PARKING_EDIT");
			req.setAttribute("SUC_FAIL", flag);
			req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
		} 
		catch (Exception e) {e.printStackTrace();}
		
		
	}
}
