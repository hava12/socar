package coupon.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coupon.service.CouponDto;
import coupon.service.impl.CouponDao;
import zone.service.impl.ZoneDAO;

public class CouponFindController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			CouponDao c_dao = new CouponDao(req.getServletContext());
			List<CouponDto> list = null;
			try {
				System.out.println(req.getParameter("smem_id"));
				list = c_dao.selectCouponList(req.getParameter("smem_id"));
			} catch (Exception e) {e.printStackTrace();}
			req.setAttribute("list", list);
			req.getRequestDispatcher("/admin/coupon/CouponFind.jsp").forward(req, resp);
	}
	
	
	
}
