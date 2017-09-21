package reserve.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import reserve.service.ZoneDTO;
import reserve.service.impl.ZoneDAO;

@Controller
public class ReserveController {
	
	@Resource(name="ZoneDAO")
	private ZoneDAO dao;
	
	@RequestMapping("/Reserve/Reserve.do")
	public String reserve(Model model) throws Exception{
		List<ZoneDTO> list = dao.selectEveryList();
		
		model.addAttribute("list", list);
		return "/reserve/Reserve"; 
	}
	
	@RequestMapping("/Reserve/SearchResult.do")
	public String searchResult(@RequestParam("soz_code") String soz_code, Model model) throws Exception{
		List<ZoneDTO> list = dao.selectEveryList();
		ZoneDTO dto = dao.selectOne(soz_code);
		model.addAttribute("dto",dto);
		model.addAttribute("list", list);
		return "/reserve/ReserveSearchResult";
	}
	
	
}
