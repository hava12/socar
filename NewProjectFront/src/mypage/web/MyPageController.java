package mypage.web;

import java.lang.ref.ReferenceQueue;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.service.CardDto;
import member.service.MemDto;
import member.service.Simple_MemDto;
import member.service.impl.Simple_MemServiceImpl;
import mypage.service.Cou_createDto;
import mypage.service.CouponDto;
import mypage.service.impl.MyPageServiceImpl;

@Controller
public class MyPageController {

	@Resource(name="myPageServiceImpl")
	 MyPageServiceImpl service;
	
	@Resource(name="simple_MemServiceImpl")
	 Simple_MemServiceImpl s_service;
	
	
	@RequestMapping("/Mypage/Mypage.do")
	public String mypage(HttpServletRequest req,Model model) throws Exception{
		
		MemDto dto = null;
		
		dto = service.gomypage(req.getSession().getAttribute("smem_id").toString());
		
		if(dto == null) {
			Simple_MemDto s_dto = s_service.selectOne(req.getSession().getAttribute("smem_id").toString());
			dto = new MemDto();
			dto.setSmem_id(s_dto.getSmem_id());
			dto.setSmem_name(s_dto.getSmem_name());
			dto.setSmem_pwd(s_dto.getSmem_pwd());
			dto.setSmem_tel(s_dto.getSmem_tel());
		}

		List<CardDto> card_list = null;
		
		card_list = s_service.selectOneMemCard(req.getSession().getAttribute("smem_id").toString());
		model.addAttribute("card_list",card_list);
		
		model.addAttribute("dto",dto);
		
		return "/mypage/Mypage";
	}
	
	
	@RequestMapping("/Mypage/Mypagereserve.do")
	public String mypagereserve() throws Exception{
		return "/mypage/Mypagereserve";
	}
	@RequestMapping("/Mypage/Mypagepayment.do")
	public String mypagepayment() throws Exception{
		return "/mypage/Mypagepayment";
	}
	
	
	@RequestMapping("/Mypage/Mypagecoupon.do")
	public String mypagecoupon(HttpServletRequest req) throws Exception{
		

		service.myPageCouponBook(req.getSession().getAttribute("smem_id").toString());
		
		
		
		
		
		return "/mypage/Mypagecoupon";
	}
	
	
	
	//쿠폰 북으로 가기
	@RequestMapping("/Mypage/Couponbook.do")
	public String couponbook(Model model) throws Exception{
		
		List<CouponDto> list = null;
		
		
		list = service.goCouponBook();
		
		model.addAttribute("list",list);
		
		
		
		return "/mypage/Couponbook";
	}
	
	
	
	
	///////AJAX/////////////////
	
	
	@ResponseBody
	@RequestMapping("/Mypage/CouponIssueToMem.do")
	public String couponIssueToMem(HttpServletRequest req) throws Exception{
		
		String smem_id = req.getSession().getAttribute("smem_id").toString();
		String cou_c_code = req.getParameter("cou_c_code");
		
		Map map = new HashMap();
		map.put("smem_id", smem_id);
		map.put("cou_c_code", cou_c_code);
		int affected = 0;
		
		System.out.println(map.get("smem_id"));
		System.out.println(map.get("cou_c_code"));
		
		Cou_createDto c_c_dto = null;
		
		c_c_dto = service.selectTopOneC_C(map.get("cou_c_code").toString());
		
		
		
		affected = service.couponIssueToMem(map);
		
		JSONObject json = new JSONObject();
		json.put("result", affected);
		
		return json.toJSONString();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
