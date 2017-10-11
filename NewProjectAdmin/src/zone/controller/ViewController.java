package zone.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class ViewController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			ZoneDAO dao = new ZoneDAO(req.getServletContext());
			ZoneDTO dto = dao.selectOne(req.getParameter("soz_code"));
			//하드콛
			dao = new ZoneDAO(req.getServletContext());
			List<ZoneDTO> list = dao.selectEveryList();			
			req.setAttribute("list", list);
			req.setAttribute("dto", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.getRequestDispatcher("/admin/zone/ZoneView.jsp").forward(req, resp);
	}
}
