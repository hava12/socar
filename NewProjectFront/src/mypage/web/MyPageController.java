package mypage.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {

	
	@RequestMapping("/Mypage/Mypage.do")
	public String mypage() throws Exception{
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
}
