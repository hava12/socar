package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.impl.MemberDao;

public class MemModifyController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		if(!req.getParameter("smem_pwd").equals(req.getParameter("smem_pwd_confirm"))){
			req.setAttribute("MSG","비밀번호가 서로 다릅니다.");
			req.getRequestDispatcher("/admin/util/ValidMessage.jsp").forward(req, resp);
		}
		
		else{
			MemberDao dao = new MemberDao(req.getServletContext());
			int affected=0;
			
			try {
				affected = dao.updateMem(req.getParameter("smem_id"),
						                 req.getParameter("smem_pwd"),
						                 req.getParameter("mem_addr"));
				
			} catch (Exception e) {e.printStackTrace();}
			
			
			req.setAttribute("WHERE","MEMMODIFY");
			req.setAttribute("SUC_FAIL", affected);
			
			req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
			
		}
	}
	
}
