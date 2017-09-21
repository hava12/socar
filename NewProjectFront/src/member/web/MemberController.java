package member.web;

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

import member.service.Simple_MemDto;
import member.service.impl.Simple_MemServiceImpl;

@Controller
public class MemberController {

	
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
	
	
	@RequestMapping("/Member/CreateMem.do")
	public String createMem() throws Exception{
		
		
		
		return "";
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
