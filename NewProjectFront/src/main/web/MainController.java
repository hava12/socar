package main.web;

import java.net.InetAddress;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.service.Rq_carDto;
import main.service.Rq_carServiceImpl;

@Controller
public class MainController {

	@Resource(name="rq_carService")
	private Rq_carServiceImpl service;
	
	
	@RequestMapping("/Main/Main.do")
	public String main(HttpServletRequest req) throws Exception{

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

	@RequestMapping("Main/InsertRqCar.do")
	public String write(@RequestParam Map map,//파라미터받기용
			            @ModelAttribute("id") String id//세션영역에서 읽기용
			            ) throws Exception{
		
		//서비스호출]
		Rq_carDto dto = new Rq_carDto();
		dto.setRqc_loc(map.get("search_ask_address").toString());
		dto.setRqc_content(map.get("search_ask_content").toString());
		dto.setSmem_id(id);
		
		service.insert(dto);
		//뷰 정보 반환
		return "forward:/view/main/Main.do";
	}//////////////////list()
	
	
	
	
}
