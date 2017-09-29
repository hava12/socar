package reserve.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import reserve.service.CarSearchResultDTO;
import reserve.service.ZoneDTO;
import reserve.service.impl.CarDAO;
import reserve.service.impl.ZoneDAO;

@Controller
public class ReserveController {
	
	@Resource(name="zoneDAO")
	private ZoneDAO dao;
	
	@Resource(name="carDAO")
	private CarDAO car_dao;
	
	@RequestMapping("/Reserve/Reserve.do")
	public String reserve(Model model) throws Exception{
		List<ZoneDTO> list = dao.selectEveryList();
		
		model.addAttribute("list", list);
		return "/reserve/Reserve"; 
	}
	@RequestMapping("/Reserve/SearchResult.do")
	public String searchResult(@RequestParam("soz_code") String soz_code, Model model) throws Exception{
		List<ZoneDTO> list = dao.selectEveryList();

		List<CarSearchResultDTO> car_list = car_dao.car_search_result(soz_code);

		ZoneDTO zone_dto = dao.selectOne(soz_code);
		
		model.addAttribute("zone_dto",zone_dto);
		model.addAttribute("car_list",car_list);
		model.addAttribute("list", list);
		return "/reserve/Reserve";
	}
	
	
}


