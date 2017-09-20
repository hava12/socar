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
	public String joinResult(HttpServletRequest req) throws Exception{
		
		req.getSession().setAttribute("smem_id", req.getParameter("smem_id"));
		return "forward:" + req.getParameter("stage").toString();
	}///////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping("/Member/Login.do")
	public String LoginConfig(@RequestParam Map map,Model model,HttpServletRequest req) throws Exception{
		int affected = 0 ;
		affected = service.loginMem(map);
		
		if(affected==1) {			
			req.getSession().setAttribute("smem_id", map.get("smem_id"));
			return "forward:/Reserve/Reserve.do";
		}
		else {
			model.addAttribute("WHERE","Login");
			model.addAttribute("SUC_FAIL",1);
			
			return "/message/Message";	
		}
		
	}///////////////////////////////////////////////////////////////////////
	
	
	
	@ResponseBody
	@RequestMapping(value="/Member/CreateSimpleMem.do",produces="text/html;charset=UTF-8")
	public String CreateMem(@RequestParam Map map) throws Exception{
		int affected = service.createSimple_Mem(map);
		
		JSONObject json = new JSONObject();
		json.put("retCode", affected);
		
		return json.toJSONString();
	}/////////////////////////////////////////////////////////////////////////
	
	
	
}
