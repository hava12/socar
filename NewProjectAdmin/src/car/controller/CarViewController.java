package car.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.CarDTO;
import car.service.impl.CarDAO;

public class CarViewController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarDAO dao = new CarDAO(req.getServletContext());
		CarDTO dto=null;
		try {dto = dao.selectOne(req.getParameter("car_name_code"));
		} catch (Exception e) {e.printStackTrace();}
		req.setAttribute("dto", dto);
		
		req.getRequestDispatcher("/admin/car/CarView.jsp").forward(req, resp);
	}
}
