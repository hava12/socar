package zone.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class ViewController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ZoneDAO dao = new ZoneDAO(req.getServletContext());
		ZoneDTO dto = dao.selectOne(req.getParameter("soz_code"));
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/admin/zone/ZoneView.jsp").forward(req, resp);
	}
}
