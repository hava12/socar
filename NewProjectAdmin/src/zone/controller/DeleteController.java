package zone.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zone.service.impl.ZoneDAO;

public class DeleteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		ZoneDAO dao = new ZoneDAO(req.getServletContext());
		int flag = dao.delete(req.getParameter("soz_code"));
		req.setAttribute("WHERE", "PARKING_DELETE");
		req.setAttribute("SUC_FAIL", flag);
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
	
}
