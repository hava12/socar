package reservation.controller;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.PagingUtil;
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
		
		//페이징을 위한 로직 시작
				//전체 레코드 수
						int totalRecordCount=dao.getTotalRecordCount();
						//페이지 사이즈
						int pageSize  =Integer.parseInt(req.getServletContext().getInitParameter("PAGE_SIZE"));
						//블락페이지
						int blockPage =Integer.parseInt(req.getServletContext().getInitParameter("BLOCK_PAGE"));
						//전체 페이지수]
						int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);		
						//현재 페이지를 파라미터로 받기]
						int nowPage=req.getParameter("nowPage")==null ? 1 :	Integer.parseInt(req.getParameter("nowPage"));		
						//시작 및 끝 ROWNUM구하기]
						int start= (nowPage-1)*pageSize+1;
						int end = nowPage*pageSize;	
		
		
		try {
			list = dao.selectReserveList(start,end);
			dao = new ReserveDao(req.getServletContext());
			rent_s_list = dao.selectRent_SList();
			dao = new ReserveDao(req.getServletContext());
			canc_list = dao.selectCancList();
			dao = new ReserveDao(req.getServletContext());
			rent_e_list = dao.selectRent_EList();
			
		} catch (Exception e) {e.printStackTrace();}
		
		//페이지용 문자열 생성]
		String pagingString=PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage,req.getServletContext().getContextPath()+"/Reservation/ReserveList.do?");
		
		
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
		req.setAttribute("pagingString", pagingString);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("totalRecordCount", totalRecordCount);
		req.setAttribute("pageSize", pageSize);
		
		
		req.getRequestDispatcher("/admin/reservation/Reserve.jsp").forward(req, resp);
	}
	
}
