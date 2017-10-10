package bbs.controller;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import bbs.service.InquiryDTO;
import bbs.service.impl.BbsDao;


public class InquiryReplyController extends HttpServlet{
	

private JavaMailSenderImpl mailSender;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String i_no = req.getParameter("i_no");
		BbsDao dao = new BbsDao(req.getServletContext());		
		try {
			InquiryDTO dto = dao.selectInquiryDetail(i_no);
			req.setAttribute("dto", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.getRequestDispatcher("/admin/bbs/InquiryReply.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		InetAddress addr = InetAddress.getLocalHost();
		String i_no = req.getParameter("i_no");
	    String setfrom = "jpark4653@gmail.com";         
	    String tomail  =  req.getParameter("receiver");    // 받는 사람 이메일
	    String title   = req.getParameter("title");      // 제목
	    //StringBuffer bufferContent = new StringBuffer();
	    //bufferContent.append("안녕하세요 쏘카입니다.</br>");
	    String content = req.getParameter("content");
	    		/*"<div style='width:300px; height:380px; vertical-align:middle; text-align:center; display:table-cell; background-color:deepskyblue' >"
	    				+ "<div style='width:200px; display:inline-block; height:280px; background-color:white;'>"
	    				+ "<br/><img width=\"110\" src='https://web-assets.socar.kr/template/asset/images/common/header_logo.png?v=20160823' alt=\"SOCAR\"/><br/><br/><br/>"
	    				+ "안녕하세요 쏘카입니다.<br/><br/>본인인증을 마치시려면<br/> "
	    				+ "<a href='http://"+addr.getHostAddress()+":"+req.getLocalPort()+"/NewProjectFront/Member/Verify.do?smem_id="+map.get("smem_id").toString()+"'>여기를 눌러주세요</a>"
	    				+ "</div></div>";    // 내용
*/	   
	    try {
	    mailSender = new JavaMailSenderImpl();
	    mailSender.setHost("smtp.gmail.com");
	    mailSender.setPort(587);
	    mailSender.setUsername("jpark4653@gmail.com");
	    mailSender.setPassword("46532615");
	    
	    Properties mailProperties = new Properties();
	    mailProperties.put("mail.transport.protocol", "smtp");
	    mailProperties.put("mail.smtp.auth", true);
	    mailProperties.put("mail.smtp.starttls.enable",true);
	    mailProperties.put("mail.debug", true);
	    mailSender.setJavaMailProperties(mailProperties);	    
	    MimeMessage message = mailSender.createMimeMessage(); 
	    message.setFrom(new InternetAddress(setfrom));  // 보내는사람 생략하거나 하면 정상작동을 안함
	    message.addRecipient(RecipientType.TO,new InternetAddress(tomail));     // 받는사람 이메일
	    message.setSubject(title); // 메일제목은 생략이 가능하다 
	    message.setText(content,"UTF-8","html");  // 메일 내용	 
	    mailSender.send(message);
	    } catch(Exception e){
	      System.out.println(e);
	    }
	   
		
	    req.getRequestDispatcher("/admin/bbs/Inquiry.jsp").forward(req, resp);		
	
	}
	
}
