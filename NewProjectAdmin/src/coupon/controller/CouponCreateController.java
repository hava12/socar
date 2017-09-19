package coupon.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coupon.service.Cou_createDto;
import coupon.service.CouponDto;
import coupon.service.impl.CouponDao;

public class CouponCreateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
			
			CouponDao dao = new CouponDao(req.getServletContext());
			List<CouponDto> list = null;
			try {
				list = dao.couponList(1,2);
			} catch (Exception e) {e.printStackTrace();}
		
			req.setAttribute("list", list);
			
			req.getRequestDispatcher("/admin/coupon/CouponCreate.jsp").forward(req, resp);
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		req.setCharacterEncoding("UTF-8");
			CouponDao dao = new CouponDao(req.getServletContext());
			Cou_createDto dto = new Cou_createDto();
			int count = 0 ;
			
			dto.setCou_code(req.getParameter("cou_code"));
			
			try {dto.setCou_c_expdate(new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("cou_exp_year")+"-"+req.getParameter("cou_exp_month")+"-"+req.getParameter("cou_exp_date")));
			} catch (ParseException e1) {e1.printStackTrace();}
			
			dto.setCou_c_t_start(req.getParameter("cou_c_t_start"));
			dto.setCou_c_t_end(req.getParameter("cou_c_t_end"));
			dto.setCou_c_count(Integer.parseInt(req.getParameter("cou_c_count")));
	
			try {
				count = dao.createCoupon(dto);
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("WHERE", "COUCREATE");
			if(count == dto.getCou_c_count()) {
				req.setAttribute("SUC_FAIL", 1 );
			}
			else {
				req.setAttribute("SUC_FAIL", 0 );	
			}
			req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
	
	
}
