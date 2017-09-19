package car.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_IssueDTO;
import car.service.impl.CarDAO;

public class CarIssueViewController extends HttpServlet{
	
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			CarDAO dao = new CarDAO(req.getServletContext());
			try {
				List<Car_IssueDTO> list = dao.car_issue_view(req.getParameter("soz_code"));
				req.setAttribute("list",list);
			} catch (Exception e) {
				e.printStackTrace();
			}
			req.getRequestDispatcher("/admin/car/CarIssueView.jsp").forward(req, resp);
			
		}
}
