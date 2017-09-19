package car.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.CarDTO;
import car.service.impl.CarDAO;

public class CarEditController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarDAO dao = new CarDAO(req.getServletContext());
		CarDTO dto = null;
		try {dto = dao.selectOne(req.getParameter("car_name_code"));
		} catch (Exception e) {e.printStackTrace();}
		req.setAttribute("dto", dto);
		
		req.getRequestDispatcher("/admin/car/CarEdit.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		CarDTO dto = new CarDTO();
		dto.setCar_name_code(req.getParameter("car_name_code"));
		dto.setCar_type_code(req.getParameter("car_type_code"));
		dto.setCar_name(req.getParameter("car_name"));
		dto.setCar_img(req.getParameter("car_img"));
		dto.setCar_desc(req.getParameter("car_desc"));
		dto.setCar_land_price(req.getParameter("car_land_price"));
		dto.setCar_jeju_price(req.getParameter("car_jeju_price"));
		dto.setCar_price_so_wd(req.getParameter("car_price_so_wd"));
		dto.setCar_price_so_we(req.getParameter("car_price_so_we"));
		dto.setCar_drive_price(req.getParameter("car_drive_price"));
		dto.setCar_com(req.getParameter("car_com"));
		dto.setCar_fuel(req.getParameter("car_fuel"));
		dto.setCar_trans(req.getParameter("car_trans"));
		dto.setCar_max_per(req.getParameter("car_max_per"));
		
		CarDAO dao = new CarDAO(req.getServletContext());
		int flag = 0;
		try {flag = dao.edit(dto);
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("WHERE","CAR_EDIT");
		req.setAttribute("SUC_FAIL", flag);
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
	
}
