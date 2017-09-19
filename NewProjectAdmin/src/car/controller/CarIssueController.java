package car.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.CarDTO;
import car.service.Car_IssueDTO;
import car.service.impl.CarDAO;
import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class CarIssueController extends HttpServlet{
   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      //
      CarDAO car_dao = new CarDAO(req.getServletContext());
      ZoneDAO zone_dao = new ZoneDAO(req.getServletContext());
      try {
         List<CarDTO> car_list =  car_dao.selectList(1,2);
         
         //List<ZoneDTO> zone_list = zone_dao.selectList();
         
         ZoneDTO dto = zone_dao.selectOne(req.getParameter("soz_code"));
         req.setAttribute("car_list", car_list);
         //req.setAttribute("zone_list", zone_list);
         req.setAttribute("dto", dto);
      } catch (Exception e) {
         e.printStackTrace();
      }
      req.getRequestDispatcher("/admin/car/CarIssue.jsp").forward(req, resp);
   }/////////////
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      CarDAO dao = new CarDAO(req.getServletContext());
      Car_IssueDTO dto = new Car_IssueDTO();
      dto.setCar_name_code(req.getParameter("car_name_code"));
      dto.setSoz_code(req.getParameter("soz_code"));
      
      try {
         java.sql.Date selected_date = new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("car_i_date_year")+"-"+req.getParameter("car_i_date_month")+"-"+req.getParameter("car_i_date_day")).getTime());
         dto.setCar_i_date(selected_date);
      } catch (ParseException e) {
         e.printStackTrace();
      }
      dto.setCar_i_num(req.getParameter("car_i_num"));
      dto.setCar_i_safe_option(req.getParameter("car_i_safe_option"));
      dto.setCar_i_add_option(req.getParameter("car_i_add_option"));
      dto.setCar_nick(req.getParameter("car_nick"));
      
      int flag =0;
      try {
         flag = dao.car_issue(dto);
         
      } catch (Exception e) {
         e.printStackTrace();
      }
      req.setAttribute("soz_code", req.getParameter("soz_code"));
      
      req.setAttribute("WHERE","CAR_ISSUE");
      req.setAttribute("SUC_FAIL", flag);
      req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
   }
}