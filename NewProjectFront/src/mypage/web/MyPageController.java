package mypage.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.service.CardDto;
import member.service.MemDto;
import member.service.Simple_MemDto;
import member.service.impl.Simple_MemServiceImpl;
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
		else {
			System.out.println(dto.getSmem_id());
			System.out.println(dto.getSmem_name());
			System.out.println(dto.getSmem_pwd());
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
	public String mypagecoupon() throws Exception{
		return "/mypage/Mypagecoupon";
	}
	@RequestMapping("/Mypage/Couponbook.do")
	public String couponbook() throws Exception{
		return "/mypage/Couponbook";
	}
}
