package reservation.controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_IssueDTO;
import car.service.impl.CarDAO;
import member.service.MemDto;
import member.service.impl.MemberDao;
import reservation.service.ReserveDto;
import reservation.service.impl.ReserveDao;
import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class ReserveInsertController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/admin/reservation/ReserveInsert.jsp").forward(req, resp);
	}/////////////////get
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			String smem_id = req.getParameter("smem_id");
			String soz_code = req.getParameter("soz_code");
			String car_i_code = req.getParameter("car_i_code");
			String card_code = req.getParameter("card_code");
			Calendar res_date_start = Calendar.getInstance();
			res_date_start.set(Integer.parseInt(req.getParameter("rs_year")),
								Integer.parseInt(req.getParameter("rs_month"))-1,
								Integer.parseInt(req.getParameter("rs_date")),
							    Integer.parseInt(req.getParameter("rs_time").split(":")[0]),
							    Integer.parseInt(req.getParameter("rs_time").split(":")[1]),
							    0);
			
			Calendar res_date_end = Calendar.getInstance();
			res_date_end.set(Integer.parseInt(req.getParameter("re_year")),
								Integer.parseInt(req.getParameter("re_month"))-1,
								Integer.parseInt(req.getParameter("re_date")),
							    Integer.parseInt(req.getParameter("re_time").split(":")[0]),
							    Integer.parseInt(req.getParameter("re_time").split(":")[1]),
							    0);
			String res_instype = req.getParameter("res_instype");
			String res_inscost = req.getParameter("res_inscost");
			
			String res_price = req.getParameter("res_price");
			String res_cardkey = req.getParameter("res_cardkey");
			String pay_article = req.getParameter("pay_article");
			String cou_c_code = req.getParameter("cou_c_code");
			
			ReserveDto dto = new ReserveDto();
			dto.setSmem_id(smem_id);
			
			dto.setCar_i_code(car_i_code);
			dto.setCard_code(card_code);
			dto.setRes_price(res_price);
			dto.setRes_date_start(res_date_start.getTime());
			dto.setRes_date_end(res_date_end.getTime());
			dto.setReserve_type("c");
			dto.setRes_instype(res_instype);
			dto.setRes_inscost(res_inscost);
			dto.setRes_cardkey(res_cardkey);
			dto.setRes_article(pay_article);
			if(req.getParameter("res_sale_type").equals("c")) {
				dto.setCou_c_code(cou_c_code);
			}
			else if(req.getParameter("res_sale_type").equals("p")) {
				dto.setMs_code("입력");
				dto.setSale_price(req.getParameter("sale_price"));
			}
			
			ReserveDao dao = new ReserveDao(req.getServletContext());
			
			int affected = 0 ;
			try {
				affected = dao.insertReserve(dto);
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("WHERE", "RES_INSERT");
			req.setAttribute("SUC_FAIL", affected);
			
			req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
			
			
	}/////////////////////////post
	
	
}////////////컨트롤러
