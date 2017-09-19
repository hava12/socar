package guide.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import guide.service.Car_ModelDto;
import guide.service.GuideServiceImpl;

@Controller
public class GuideController {

	@Resource(name="guideService")
	public GuideServiceImpl service;
	
	@RequestMapping("/Guide/Guide.do")
	public String guide() throws Exception{
		return "/guide/Guide";
	}
	@RequestMapping("/Guide/Fare.do")
	public String fair(Model model) throws Exception{
		
		List<Car_ModelDto> model_list =  service.selectCar_ModelList();
		
		model.addAttribute("model_list",model_list);
		
		return "/guide/Fare";
	}
}
