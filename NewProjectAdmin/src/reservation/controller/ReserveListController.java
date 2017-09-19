package reservation.controller;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_IssueDTO;
import car.service.impl.CarDAO;
import member.service.MemDto;
import member.service.impl.MemberDao;
import reservation.service.Canc_Dto;
import reservation.service.Rent_E_Dto;
import reservation.service.Rent_S_Dto;
import reservation.service.ReserveDto;
import reservation.service.impl.ReserveDao;

public class ReserveListController extends HttpServlet {
 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ReserveDao dao = new ReserveDao(req.getServletContext());
		List<ReserveDto> list = null;
		List<Rent_S_Dto> rent_s_list = null;
		List<Canc_Dto> canc_list = null;
		List<Rent_E_Dto> rent_e_list = null;
		
		try {
			list = dao.selectReserveList();
			dao = new ReserveDao(req.getServletContext());
			rent_s_list = dao.selectRent_SList();
			dao = new ReserveDao(req.getServletContext());
			canc_list = dao.selectCancList();
			dao = new ReserveDao(req.getServletContext());
			rent_e_list = dao.selectRent_EList();
			
		} catch (Exception e) {e.printStackTrace();}
		
		for(ReserveDto dto : list) {
			dto.setStatus("렌트 전");
			dto.setStatus_color("coral");
			
			for(Rent_S_Dto r_s_dto : rent_s_list) {
				if(dto.getRes_code().equals(r_s_dto.getRes_code())) {
					dto.setStatus("렌트 시작");
					dto.setStatus_color("blue");
					break;
				}
			}
			for(Canc_Dto c_dto : canc_list) {
				if(dto.getRes_code().equals(c_dto.getRes_code())) {
					dto.setStatus("예약 취소");
					dto.setStatus_color("red");
					break;
				}
			}
			for(Rent_E_Dto r_e_dto : rent_e_list) {
				if(dto.getRes_code().equals(r_e_dto.getRes_code())) {
					dto.setStatus("반납 완료");
					dto.setStatus_color("black");
					break;
				}
			}
			
			
		}/////////////for///////////////
		
		req.setAttribute("list", list);
		
		
		req.getRequestDispatcher("/admin/reservation/Reserve.jsp").forward(req, resp);
	}
	
}
