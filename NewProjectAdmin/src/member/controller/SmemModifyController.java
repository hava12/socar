package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.impl.MemberDao;

public class SmemModifyController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		if(!req.getParameter("smem_pwd").equals(req.getParameter("smem_pwd_confirm"))){
			req.setAttribute("MSG","비밀번호가 서로 다릅니다.");
			req.getRequestDispatcher("/admin/util/ValidMessage.jsp").forward(req, resp);
		}
		
		else{
			MemberDao dao = new MemberDao(req.getServletContext());
			int affected=0;
			
			try {
				affected = dao.updateSmemPwd(req.getParameter("smem_id"), req.getParameter("smem_pwd"));
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("WHERE","SMEMMODIFY");
			req.setAttribute("SUC_FAIL", affected);
			
			req.getRequestDispatcher("/admin/util/Message.jsp").forward(req, resp);
			
		}
	}
	
}
