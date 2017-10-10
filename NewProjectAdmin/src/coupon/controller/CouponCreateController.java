package coupon.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("cou_create", "cou_create");
				list = dao.couponList(map);
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
