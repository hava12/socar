package member.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	@RequestMapping("/Join/Join.do")
	public String join()throws Exception{
		return "/member/Join";
	}//////////////////////////////////////////////////
	
	
}
