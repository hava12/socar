package main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/Main/Main.do")
	public String main() throws Exception{
		return "/main/Main";
	}//////////////////////////////////////////////////
	
	@RequestMapping("/Main/Garage.do")
	public String garage() throws Exception{
		return "/main/Garage";
	}//////////////////////////////////////////////////
	
	@RequestMapping("/Main/Company.do")
	public String company() throws Exception{
		return "/main/Company";
	}//////////////////////////////////////////////////
	
	@RequestMapping("/Main/About.do")
	public String about() throws Exception{
		return "/main/About";
	}//////////////////////////////////////////////////
	
	
	
	
}
