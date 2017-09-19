package reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.service.Rent_E_Dto;
import reservation.service.impl.ReserveDao;

public class RentEndController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
			Rent_E_Dto dto = new Rent_E_Dto();
			int affected=0;
			ReserveDao dao = new ReserveDao(req.getServletContext());
			dto.setRes_code(req.getParameter("res_code"));
			dto.setRent_e_article(req.getParameter("rent_e_article"));
			dto.setRent_e_ectprice(req.getParameter("rent_e_ectprice"));
			dto.setRent_e_ectsale(req.getParameter("rent_e_ectsale"));
			dto.setRent_e_hipass(req.getParameter("rent_e_hipass"));
			dto.setRent_e_km(req.getParameter("rent_e_km"));
			dto.setRent_e_panalty(req.getParameter("rent_e_panalty"));
			
			
			try {affected = dao.insertRent_E(dto);
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("SUC_FAIL",affected);
			req.setAttribute("WHERE", "INSERT_RENT_E");
			req.setAttribute("MSG", "opener.location.reload()");
			
			req.getRequestDispatcher("/admin/util/PopMessage.jsp").forward(req, resp);
			
			
		}
}
