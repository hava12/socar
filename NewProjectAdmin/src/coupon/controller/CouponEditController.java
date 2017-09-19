package coupon.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coupon.service.CouponDto;
import coupon.service.impl.CouponDao;

public class CouponEditController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String cou_code = req.getParameter("cou_code");
			
			CouponDao dao = new CouponDao(req.getServletContext());
			CouponDto dto = null;
			try {dto = dao.selectOneCoupon(cou_code);
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("dto", dto);
			
			req.getRequestDispatcher("/admin/coupon/CouponEdit.jsp").forward(req, resp);
			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		CouponDto dto = new CouponDto();
		
		dto.setCou_code(req.getParameter("cou_code"));
		dto.setCou_name(req.getParameter("cou_name"));
		dto.setCou_desc(req.getParameter("cou_desc"));
		dto.setCou_sale(req.getParameter("cou_sale"));
		dto.setCou_mintime(req.getParameter("cou_mintime"));
		dto.setCou_maxtime(req.getParameter("cou_maxtime"));
		dto.setCou_minage(req.getParameter("cou_minage"));
		dto.setCou_minuse(req.getParameter("cou_minuse"));
		
		Date d=null;
		try {d = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("cou_exp"));} 
		catch (ParseException e1) {e1.printStackTrace();}
		dto.setCou_exp(d);
		dto.setMax_sale_per(req.getParameter("max_sale_per"));
		dto.setCou_only_new(req.getParameter("cou_only_new"));
		
		CouponDao dao = new CouponDao(req.getServletContext());
		int affected = 0;
		try {affected = dao.editCoupon(dto);} 
		catch (Exception e){e.printStackTrace();}
		
		req.setAttribute("WHERE", "COUEDIT");
		req.setAttribute("SUC_FAIL", affected );
		
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	
	}
}
