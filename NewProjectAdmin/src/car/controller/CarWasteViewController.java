package car.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_WasteDTO;
import car.service.impl.CarDAO;

public class CarWasteViewController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarDAO dao = new CarDAO(req.getServletContext());
		try {
			Car_WasteDTO dto = dao.car_waste_view(req.getParameter("car_i_code"));
			req.setAttribute("dto", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		req.getRequestDispatcher("/admin/car/CarWasteView.jsp").forward(req, resp);
	}
}
