package member.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.CardDto;
import member.service.MemDto;
import member.service.impl.MemberDao;

public class CardInsertController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		MemberDao dao = new MemberDao(req.getServletContext());
		List<MemDto> list = null;
		
		try {
			list = dao.selectMemList(1,2);
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/admin/member/IdFind.jsp").forward(req, resp);
			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CardDto dto = new CardDto();
		int affected = 0;
		dto.setCard_code(req.getParameter("card_code"));
		dto.setSmem_id(req.getParameter("smem_id"));
		
		try {
		dto.setCard_expdate(new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("card_exp_year")+"-"+req.getParameter("card_exp_month")+"-"+req.getParameter("card_exp_date")));
		dto.setCard_birth(new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("card_birth_year")+"-"+req.getParameter("card_birth_month")+"-"+req.getParameter("card_birth_date")));
		} catch (ParseException e) {e.printStackTrace();}
		dto.setCard_type(req.getParameter("card_type").equals("법인")?"b":"p");
		
		dto.setCard_pwd(req.getParameter("card_pwd_one")+req.getParameter("card_pwd_two"));
	
		MemberDao dao = new MemberDao(req.getServletContext());
		
		try {affected = dao.insertCard(dto);
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("WHERE", "CARD_INSERT");
		req.setAttribute("SUC_FAIL", affected);
		
		req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
	}
	
	
}
