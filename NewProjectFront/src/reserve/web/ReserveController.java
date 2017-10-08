package reserve.web;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.service.MemDto;
import mypage.service.impl.MyPageDao;
import reserve.service.CarSearchResultDTO;
import reserve.service.Car_IssueDTO;
import reserve.service.ReserveDto;
import reserve.service.ZoneDTO;
import reserve.service.impl.CarDAO;
import reserve.service.impl.ReserveServiceImpl;
import reserve.service.impl.ZoneDAO;

@Controller
public class ReserveController {
	
	@Resource(name="zoneDAO")
	private ZoneDAO dao;
	
	@Resource(name="carDAO")
	private CarDAO car_dao;
	
	@Resource(name="reserveServiceImpl")
	private ReserveServiceImpl res_service;
	
	@Resource(name="myPageDao")
	private MyPageDao my_service;
	
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
		
		List<ReserveDto> res_list = res_service.select_soz_res(soz_code);
		
		
		ZoneDTO zone_dto = dao.selectOne(soz_code);
		
		model.addAttribute("zone_dto",zone_dto);
		model.addAttribute("car_list",car_list);
		model.addAttribute("list", list);
		model.addAttribute("res_list",res_list);
		return "/reserve/Reserve";
	}
	
	@RequestMapping("/Reserve/ReserveConfirm.do")
	public String reserveConfirm(HttpServletRequest req,Model model) throws Exception{
		
		Car_IssueDTO car_i_dto = res_service.selectIssue_CarIssue(req.getParameter("car_i_code"));
	
		
		Date startTime = new Date();
		startTime.setTime(Long.parseLong(req.getParameter("startTime")));
		
		Date endTime = new Date();
		endTime.setTime(Long.parseLong((req.getParameter("endTime"))));
		
		
		int ms_change =  my_service.gomypage(req.getSession().getAttribute("smem_id").toString()).getMs_change();
		
		
		model.addAttribute("price",req.getParameter("price"));
		model.addAttribute("startTime",startTime);
		model.addAttribute("endTime",endTime);
		model.addAttribute("car_i_dto",car_i_dto);
		model.addAttribute("ms_change",ms_change);
		
		
		return "/reserve/Confirm";
	};
}


