package member.web;

import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.descriptor.web.LoginConfig;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.net.httpserver.HttpServer;

import member.service.CardDto;
import member.service.MemDto;
import member.service.Simple_MemDto;
import member.service.impl.Simple_MemServiceImpl;

@Controller
public class MemberController {

	@Resource(name="memDto")
	private MemDto mem_dto;
	@Resource(name="simple_MemServiceImpl")
	private Simple_MemServiceImpl service;
	
	  @Autowired
	  private JavaMailSender mailSender;
	

	
	
	@RequestMapping("/Join/Join.do")
	public String join()throws Exception{
		return "/member/Join";
	}//////////////////////////////////////////////////
	
	
	
	@RequestMapping("/Member/JoinResult.do")
	public String joinResult(@RequestParam Map map,HttpServletRequest req) throws Exception{
		System.out.println(map.get("smem_id"));
		System.out.println(map.get("smem_pwd"));
		
		InetAddress addr = InetAddress.getLocalHost();
		
	    String setfrom = "hava0682@gmail.com";         
	    String tomail  = map.get("smem_id").toString();     // 받는 사람 이메일
	    String title   = "[쏘카] 본인인증 메일이 도착했습니다.";      // 제목
	    String content = "<div style='width:300px; height:380px; vertical-align:middle; text-align:center; display:table-cell; background-color:deepskyblue' >"
	    				+ "<div style='width:200px; display:inline-block; height:280px; background-color:white;'>"
	    				+ "<br/><img width=\"110\" src='https://web-assets.socar.kr/template/asset/images/common/header_logo.png?v=20160823' alt=\"SOCAR\"/><br/><br/><br/>"
	    				+ "안녕하세요 쏘카입니다.<br/><br/>본인인증을 마치시려면<br/> "
	    				+ "<a href='http://"+addr.getHostAddress()+":"+req.getLocalPort()+"/NewProjectFront/Member/Verify.do?smem_id="+map.get("smem_id").toString()+"'>여기를 눌러주세요</a>"
	    				+ "</div></div>";    // 내용
	   
	    try {
	      MimeMessage message = mailSender.createMimeMessage();
//	      MimeMessageHelper messageHelper 
//	                        = new MimeMessageHelper(message, true, "UTF-8");
//	      
	      message.setFrom(new InternetAddress(setfrom));  // 보내는사람 생략하거나 하면 정상작동을 안함
	      message.addRecipient(RecipientType.TO,new InternetAddress(tomail));     // 받는사람 이메일
	      message.setSubject(title); // 메일제목은 생략이 가능하다
	      message.setText(content,"UTF-8","html");  // 메일 내용
	     
	      mailSender.send(message);
	    } catch(Exception e){
	      System.out.println(e);
	    }
	   
		
		
		Simple_MemDto dto = null;
		dto = service.loginMem(map);
		
		req.getSession().setAttribute("smem_id", req.getParameter("smem_id"));
		req.getSession().setAttribute("smem_name", dto.getSmem_name());
		
		return "forward:" + req.getParameter("stage").toString();
		
	}///////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping("/Member/Login.do")
	public String loginConfig(@RequestParam Map map,Model model,HttpServletRequest req) throws Exception{
		Simple_MemDto dto = null;
		dto = service.loginMem(map);
		
		if(dto != null) {			
			req.getSession().setAttribute("smem_id", map.get("smem_id"));
			req.getSession().setAttribute("smem_name", dto.getSmem_name());
			return "forward:/Reserve/Reserve.do";
		}
		else {
			model.addAttribute("WHERE","Login");
			model.addAttribute("SUC_FAIL",1);
			
			return "/message/Message";	
		}
		
	}///////////////////////////////////////////////////////////////////////
	
	@RequestMapping("/Member/Logout.do")
	public String logout(HttpServletRequest req,Model model) throws Exception{
		req.getSession().invalidate();
		
		model.addAttribute("WHERE","Logout");
		model.addAttribute("SUC_FAIL",1);
		
		return "/message/Message";
	}/////////////////////////////////////////////
	
	
	@RequestMapping("/Member/SoJoin_One.do")
	public String soJoin_One(HttpServletRequest req,Model model) throws Exception{
		Simple_MemDto dto = null;

		dto = service.selectOne(req.getSession().getAttribute("smem_id").toString());
		
		
		dto.getSmem_name();
		model.addAttribute("dto",dto);
		
		return "/member/SoJoin_One";
	}////////////////////////////////////////////////
	
	
	
	@RequestMapping("/Member/SoJoin_Two.do")
	public String soJoin_Two() throws Exception{
		return "/member/SoJoin_Two";
	}////////////////////////////////////////////////
	
	
	@RequestMapping("/Member/CompleteSoJoin.do")
	public String completeSoJoin(@RequestParam Map map,Model model) throws Exception{
		
//		System.out.println(map.get("smem_id"));
//		System.out.println(map.get("mem_c_type"));
//		System.out.println(map.get("mem_c_num"));
//		System.out.println(map.get("mem_c_idate"));
//		System.out.println(map.get("mem_c_expdate"));
//		System.out.println(map.get("mem_gender"));
//		System.out.println(map.get("card_expdate_y"));
//		System.out.println(map.get("card_expdate_m"));
//		System.out.println(map.get("card_type"));
//		System.out.println(map.get("card_birth"));
//		System.out.println(map.get("card_pwd"));
//		System.out.println(map.get("card_c_num"));
//		System.out.println(map.get("card_default"));
//		System.out.println(map.get("card_code"));
		
		CardDto c_dto = new CardDto();
		c_dto.setCard_code(map.get("card_code").toString());
		c_dto.setSmem_id(map.get("smem_id").toString());
		Calendar card_expdate = Calendar.getInstance();
		card_expdate.set(Integer.parseInt(map.get("card_expdate_y").toString()),Integer.parseInt(map.get("card_expdate_m").toString())-1,1);
		c_dto.setCard_expdate(card_expdate.getTime());
		c_dto.setCard_type(map.get("card_type").toString());
		c_dto.setCard_birth(map.get("card_birth").toString());
		c_dto.setCard_c_num(map.get("card_c_num").toString());
		c_dto.setCard_default(map.get("card_default").toString());
		
		MemDto m_dto = new MemDto();
		
		m_dto.setSmem_id(map.get("smem_id").toString());
		m_dto.setMem_c_type(map.get("mem_c_type").toString());
		m_dto.setMem_c_num(map.get("mem_c_num").toString());
		
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		
		m_dto.setMem_c_idate(f.parse(map.get("mem_c_idate").toString()));
		m_dto.setMem_c_expdate(f.parse(map.get("mem_c_expdate").toString()));
		m_dto.setMem_gender(map.get("mem_gender").toString());
		
		int affected =  0;
		affected = service.completeSoJoin(m_dto,c_dto);
		
		model.addAttribute("WHERE","COMPLETESOJOIN");
		model.addAttribute("SUC_FAIL",affected);
		
		return "/message/Message";
	};
	
	
	@RequestMapping("/Member/CreateMem.do")
	public String createMem(@RequestParam Map map,Model model) throws Exception{
		
		int affected = 0;
		mem_dto.setSmem_id(map.get("smem_id").toString());
		mem_dto.setMem_addr_num(map.get("mem_addr_num").toString());
		mem_dto.setMem_addr_fir(map.get("mem_addr_fir").toString());
		mem_dto.setMem_addr_sec(map.get("mem_addr_sec").toString());
		mem_dto.setMem_mainarea(map.get("mem_mainarea").toString());
		
		
		
		affected = service.CreateMem(mem_dto);
		if(map.get("base_file").equals("sojone_one")) {
			return "/member/SoJoin_Two";			
		}
		return "forward:/Mypage/Mypage.do";
	}
	
	
	
	@RequestMapping("/Member/Verify.do")
	public String verify(HttpServletRequest req,Model model) throws Exception{
		
		int affected = 0 ;
		
		affected = service.verifyMem(req.getParameter("smem_id"));
		
		model.addAttribute("WHERE","VERIFY_MEM");
		model.addAttribute("SUC_FAIL",affected);
		
		return "/message/Message";
	}
	
	
	
	
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////AJAX 쓰는 곳//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/Member/ConfirmId.do",produces="text/html;charset=UTF-8")
	public String confirmId(@RequestParam Map map) throws Exception{
		
		int affected = 0 ;
		affected = service.confirmId(map.get("smem_id").toString());
		
		JSONObject json = new JSONObject();
		
		json.put("confirm_result", affected);
		
		return json.toJSONString();
	}
	
	
	@ResponseBody
	@RequestMapping(value="/Member/CreateSimpleMem.do",produces="text/html;charset=UTF-8")
	public String createMem(@RequestParam Map map) throws Exception{
		int affected = service.createSimple_Mem(map);
		
		JSONObject json = new JSONObject();
		json.put("retCode", affected);
		
		return json.toJSONString();
	}/////////////////////////////////////////////////////////////////////////
	
	@ResponseBody
	@RequestMapping(value="/Member/VerifyToMyPage.do",produces="text/html;charset=UTF-8")
	public String VerifyToMyPage(@RequestParam Map map) throws Exception{
		
		String verify = "N";
		System.out.println(map.get("smem_id").toString());
		verify = service.verifyToMyPage(map.get("smem_id").toString());
		JSONObject json = new JSONObject();
		json.put("verify", verify);
		System.out.println(verify);
		return json.toJSONString();
	}/////////////////////////////////////////////////////////////////////////
	
	
	@ResponseBody
	@RequestMapping(value="/Member/InsertCard.do",produces="text/html;charset=UTF-8")
	public String InsertCard(HttpServletRequest req) throws Exception{
		
		CardDto c_dto = new CardDto();
		c_dto.setCard_code(req.getParameter("card_code"));
		c_dto.setSmem_id(req.getSession().getAttribute("smem_id").toString());
		Calendar card_expdate = Calendar.getInstance();
		card_expdate.set(Integer.parseInt(req.getParameter("exp_y").toString()),Integer.parseInt(req.getParameter("exp_m"))-1,1);
		c_dto.setCard_expdate(card_expdate.getTime());
		c_dto.setCard_type(req.getParameter("card_type"));
		c_dto.setCard_birth(req.getParameter("card_birth"));
		c_dto.setCard_default("N");
		
		int affected = service.insertCard(c_dto);
		
		JSONObject json = new JSONObject();
		json.put("affected", affected);
		
		return json.toJSONString();
	}

	
	
}
