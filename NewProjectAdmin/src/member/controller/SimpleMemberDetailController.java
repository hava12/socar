package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.SimpleMemDto;
import member.service.impl.MemberDao;

public class SimpleMemberDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			
			MemberDao dao = new MemberDao(req.getServletContext());
			SimpleMemDto dto = null;
			try {
				dto = dao.selectSimpleMemOne(req.getParameter("smem_id"));
			} catch (Exception e) {e.printStackTrace();}
		
			req.setAttribute("smem", dto);
			
			req.getRequestDispatcher("/admin/member/SmemView.jsp").forward(req, resp);
	}
	
}
