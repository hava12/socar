package car.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.impl.CarDAO;

public class CarDeleteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarDAO dao = new CarDAO(req.getServletContext());
		int flag=0;
		try {
			flag = dao.delete(req.getParameter("car_name_code"));
		} catch (Exception e) {e.printStackTrace();}
		req.setAttribute("WHERE", "CAR_DELETE");
		req.setAttribute("SUC_FAIL", flag);
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
	
}
