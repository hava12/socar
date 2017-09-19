package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.CardDto;
import member.service.MemDto;
import member.service.impl.MemberDao;

public class MemberDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		MemberDao dao = new MemberDao(req.getServletContext());
		MemDto dto = null;
		List<CardDto> cardlist = null;
		try {
			dto =  dao.selectMemOne(req.getParameter("smem_id"));
			dao = new MemberDao(req.getServletContext());
			cardlist = dao.selectCardList(req.getParameter("smem_id"),1,2);
		} catch (Exception e) {e.printStackTrace();}
			
		req.setAttribute("mem", dto);
		req.setAttribute("cardlist", cardlist);
		
		
		req.getRequestDispatcher("/admin/member/MemView.jsp").forward(req, resp);
		
	}
}
