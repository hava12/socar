package reserve.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReserveController {

	@RequestMapping("/Reserve/Reserve.do")
	public String reserve() throws Exception{
		return "/reserve/Reserve";
	}
	
}
