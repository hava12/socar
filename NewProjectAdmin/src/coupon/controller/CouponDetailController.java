package coupon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coupon.service.CouponDto;
import coupon.service.impl.CouponDao;

public class CouponDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String cou_code = req.getParameter("cou_code");
	
		CouponDao dao = new CouponDao(req.getServletContext());
		CouponDto dto = null;
		try {dto = dao.selectOneCoupon(cou_code);} 
		catch (Exception e) {e.printStackTrace();}
		
		dto.setCou_only_new(dto.getCou_only_new().equals("y")?"신규존 전용":"-");
		
		
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/admin/coupon/CouponDetail.jsp").forward(req, resp);
		
	}
	
	
}
