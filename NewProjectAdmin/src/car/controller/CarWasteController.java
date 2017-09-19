package car.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_WasteDTO;
import car.service.impl.CarDAO;

public class CarWasteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/admin/car/CarWaste.jsp").forward(req, resp);	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		CarDAO dao = new CarDAO(req.getServletContext());
		Car_WasteDTO dto = new Car_WasteDTO();
		dto.setCar_i_code(req.getParameter("car_i_code"));
		try {
			java.sql.Date selected_date = new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("car_waste_date_year")+"-"+req.getParameter("car_waste_date_month")+"-"+req.getParameter("car_waste_date_day")).getTime());
			dto.setCar_w_date(selected_date);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		dto.setCar_w_reason(req.getParameter("car_w_reason"));
		
		int flag = 0;
		try {
			flag = dao.car_waste(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.setAttribute("WHERE","CAR_WASTE");
		req.setAttribute("SUC_FAIL", flag);
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
}
