package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.AdDto;
import member.service.impl.MemberDao;

public class LoginController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		resp.setContentType("text/html; charset=UTF-8");
		String ad_id = req.getParameter("ad_id");
		String ad_pwd =req.getParameter("ad_pwd");
		int affected = 0;
		
		AdDto dto = new AdDto();
		dto.setAd_id(ad_id);
		dto.setAd_pwd(ad_pwd);
		
		MemberDao dao = new MemberDao(req.getServletContext());
		
		
		try {
			affected = dao.login(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(affected == 1){
			
			req.getSession().setAttribute("ad_id", ad_id);
			req.getRequestDispatcher("/admin/Main.jsp").forward(req, resp);
		}
		else{
			PrintWriter out = resp.getWriter();	
			out.println("<script>");
			out.println("alert('아디 또는 비번이 틀립니다')");
			out.println("history.back()");
			out.println("</script>");
		}
	
		
		
		
		
		
		
	}
	
}
