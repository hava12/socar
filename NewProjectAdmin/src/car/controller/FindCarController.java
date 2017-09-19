package car.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import car.service.Car_IssueDTO;
import car.service.impl.CarDAO;

public class FindCarController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Car_IssueDTO> list = null;
		CarDAO dao = new CarDAO(req.getServletContext());
		
		try {
			list = dao.car_issue_view(req.getParameter("soz_code"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/admin/car/Car_I_Find.jsp").forward(req, resp);
		
	}

}
