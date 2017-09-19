package car.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_ModelDto;
import car.service.impl.CarDAO;

public class CarTypeAddController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarDAO dao = new CarDAO(req.getServletContext());
		try {
			List<Car_ModelDto> list = dao.selectCar_TypeList(1,2);
			req.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/admin/car/CarTypeAdd.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		CarDAO dao = new CarDAO(req.getServletContext());
		Car_ModelDto dto = new Car_ModelDto();
		dto.setCar_type_code(req.getParameter("car_type_code"));
		dto.setCar_type(req.getParameter("car_type"));
		dto.setCar_insurance_one_hour(req.getParameter("car_insurance_one_hour"));
		dto.setCar_insurance_one_day(req.getParameter("car_insurance_one_day"));
		dto.setCar_insurance_two_hour(req.getParameter("car_insurance_two_hour"));
		dto.setCar_insurance_two_day(req.getParameter("car_insurance_two_day"));
		
		int flag=0;
		try {
			flag = dao.insert_type(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.setAttribute("WHERE","CAR_TYPE_INSERT");
		req.setAttribute("SUC_FAIL", flag);
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
	
}
