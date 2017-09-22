package member.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.descriptor.web.LoginConfig;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	
	
	@RequestMapping("/Join/Join.do")
	public String join()throws Exception{
		return "/member/Join";
	}//////////////////////////////////////////////////
	
	
	
	@RequestMapping("/Member/JoinResult.do")
	public String joinResult(@RequestParam Map map,HttpServletRequest req) throws Exception{
		System.out.println(map.get("smem_id"));
		System.out.println(map.get("smem_pwd"));
		
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
	public String completeSoJoin(@RequestParam Map map) throws Exception{
		
		System.out.println(map.get("smem_id"));
		System.out.println(map.get("mem_c_type"));
		System.out.println(map.get("mem_c_num"));
		System.out.println(map.get("mem_c_idate"));
		System.out.println(map.get("mem_c_expdate"));
		System.out.println(map.get("mem_gender"));
		System.out.println(map.get("card_expdate_y"));
		System.out.println(map.get("card_expdate_m"));
		System.out.println(map.get("card_type"));
		System.out.println(map.get("card_birth"));
		System.out.println(map.get("card_pwd"));
		System.out.println(map.get("card_c_num"));
		System.out.println(map.get("card_default"));
		System.out.println(map.get("card_create_date"));
		System.out.println(map.get("card_code"));
		
		CardDto c_dto = new CardDto();
		c_dto.setCard_code(map.get("card_code").toString());
		c_dto.setSmem_id(map.get("smem_id").toString());
		Calendar card_expdate = Calendar.getInstance();
		card_expdate.set(Integer.parseInt(map.get("mem_expdate_y").toString()),Integer.parseInt(map.get("mem_expdate_y").toString()),1);
		c_dto.setCard_expdate(card_expdate.getTime());
		c_dto.setCard_type(map.get("card_type").toString());
		c_dto.setCard_birth(map.get("card_birth").toString());
		c_dto.setCard_c_num(map.get("card_c_num").toString());
		c_dto.setCard_default(map.get("card_default").toString());
		
		MemDto m_dto = new MemDto();
		
		m_dto.setSmem_id(map.get("smem_id").toString());
		m_dto.setMem_c_type(map.get("mem_c_type").toString());
		m_dto.setMem_c_num(map.get("mem_c_num").toString());
		
		SimpleDateFormat f = new SimpleDateFormat();
		
		m_dto.setMem_c_idate(f.parse(map.get("mem_c_idate").toString()));
		m_dto.setMem_c_expdate(f.parse(map.get("mem_c_expdate").toString()));
		m_dto.setMem_gender(map.get("mem_gender").toString());
		
		int affected =  0;
		affected = service.completeSoJoin(m_dto,c_dto);
		
		return "forward:/Mypage/Mypage.do";
	};
	
	
	@RequestMapping("/Member/CreateMem.do")
	public String createMem(@RequestParam Map map,Model model) throws Exception{
		
		int affected = 0;
		mem_dto.setSmem_id(map.get("smem_id").toString());
		mem_dto.setMem_addr_num(map.get("mem_addr_num").toString());
		mem_dto.setMem_addr_fir(map.get("mem_addr_fir").toString());
		mem_dto.setMem_addr_sec(map.get("mem_addr_sec").toString());
		mem_dto.setMem_mainarea(map.get("mem_mainarea").toString());
		
		System.out.println(map.get("smem_id").toString());
		System.out.println(map.get("mem_addr_num").toString());
		System.out.println(map.get("mem_addr_fir").toString());
		System.out.println(map.get("mem_addr_sec").toString());
		System.out.println(map.get("mem_mainarea").toString());
		
		affected = service.CreateMem(mem_dto);
		if(map.get("base_file").equals("sojone_one")) {
			return "/member/SoJoin_Two";			
		}
		return "forward:/Mypage/Mypage.do";
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
	
	
	
	
	
	
	
}
