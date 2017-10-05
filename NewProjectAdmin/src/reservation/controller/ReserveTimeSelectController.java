package reservation.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.service.ReserveDto;
import reservation.service.impl.ReserveDao;

public class ReserveTimeSelectController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			String car_i_code = req.getParameter("car_i_code");
			List<ReserveDto> list = null;
			ReserveDao dao = new ReserveDao(req.getServletContext());
			try {
				list = dao.SelectReserveListForTimeSelect(car_i_code);
			}
			catch (Exception e) {e.printStackTrace();}

			req.setAttribute("list", list);
			
			req.getRequestDispatcher("/admin/reservation/ReserveTimeSelect.jsp").forward(req, resp);
	}
	
}
