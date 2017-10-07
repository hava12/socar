package car.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.sun.corba.se.impl.orbutil.RepositoryIdUtility;

import car.service.CarDTO;
import car.service.Car_ModelDto;
import car.service.impl.CarDAO;
import car.service.impl.FileUtils;
import zone.service.ZoneDTO;

public class CarAddController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Car_ModelDto> list = null;
		CarDAO dao = new CarDAO(req.getServletContext());
		try {list = dao.selectCar_TypeList(null);} 
		catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		
		//차량 등록 페이지로 이동
		req.getRequestDispatcher("/admin/car/CarAdd.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		MultipartRequest mr=FileUtils.upload(req,req.getServletContext().getRealPath("/Upload"));
		int sucorfail=0;//DB입력 성공시에는 1,실패시 0, 파일용량 초과시에는 -1]
	      
	    if(mr!=null) {  
		CarDAO dao = new CarDAO(req.getServletContext());
		CarDTO dto = new CarDTO();
		dto.setCar_type_code(mr.getParameter("car_type_code"));
		dto.setCar_name(mr.getParameter("car_name"));
		dto.setCar_img(mr.getFilesystemName("car_img"));	
		dto.setCar_desc(mr.getParameter("car_desc"));
		dto.setCar_land_price(mr.getParameter("car_land_price"));
		dto.setCar_jeju_price(mr.getParameter("car_jeju_price"));
		dto.setCar_price_so_wd(mr.getParameter("car_price_so_wd"));
		dto.setCar_price_so_we(mr.getParameter("car_price_so_we"));
		dto.setCar_drive_price(mr.getParameter("car_drive_price"));
		dto.setCar_com(mr.getParameter("car_com"));
		dto.setCar_fuel(mr.getParameter("car_fuel"));
		dto.setCar_trans(mr.getParameter("car_trans"));
		dto.setCar_max_per(mr.getParameter("car_max_per"));
		try {
			sucorfail = dao.insert(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
	    }
	    else sucorfail = -1;
		req.setAttribute("WHERE","CAR_INSERT");
		req.setAttribute("SUC_FAIL", sucorfail);
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
	
}
