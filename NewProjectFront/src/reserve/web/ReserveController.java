package reserve.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import reserve.service.ZoneDTO;
import reserve.service.impl.ZoneDAO;

@Controller
public class ReserveController {
	
	@Resource(name="ZoneDAO")
	private ZoneDAO dao;
	
	@RequestMapping("/Reserve/Reserve.do")
	public String reserve(Model model) throws Exception{
		List<ZoneDTO> list = dao.selectEveryList();
		System.out.println(list.size());
		
		model.addAttribute("list", list);
		return "/reserve/Reserve"; 
	}
	
}
