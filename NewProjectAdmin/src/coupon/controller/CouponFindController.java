package coupon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coupon.service.impl.CouponDao;
import zone.service.impl.ZoneDAO;

public class CouponFindController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			CouponDao c_dao = new CouponDao(req.getServletContext());
			
			req.getParameter("smem_id");
			
			
			req.getRequestDispatcher("/admin/coupon/CouponFind.jsp").forward(req, resp);
	}
	
	
	
}
