package reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.service.impl.ReserveDao;

public class RentStartController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] res_codes = req.getParameterValues("res_codes");
		int affected=0;
		ReserveDao dao = new ReserveDao(req.getServletContext());
		
		try {
			affected = dao.insertsRent_S(res_codes);
		} catch (Exception e) {e.printStackTrace();
		}
		
		req.setAttribute("WHERE","INSERT_RENT_S");
		req.setAttribute("SUC_FAIL",affected);
		
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
		
		
	}/////////////////////////////////////////////////////
	
}
