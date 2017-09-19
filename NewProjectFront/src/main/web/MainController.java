package main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/Main/Main.do")
	public String main()throws Exception{
		return "/main/Main";
	}//////////////////////////////////////////////////
	
	
	
}
