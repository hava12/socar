package zone.controller;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class FindZoneController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ZoneDAO dao = new ZoneDAO(req.getServletContext());
		List<ZoneDTO> list = new Vector<ZoneDTO>();
		try {list = dao.selectList(1,2);}
		catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/admin/zone/ZoneFind.jsp").forward(req, resp);
		
	}
}
