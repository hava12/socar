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

import member.service.CardDto;
import member.service.MemDto;
import member.service.Simple_MemDto;
import member.service.impl.Simple_MemDao;
import member.service.impl.Simple_MemServiceImpl;
import mypage.service.CouponDto;
import mypage.service.impl.MyPageDao;
import mypage.service.impl.MyPageServiceImpl;
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
	
	@Resource(name="myPageServiceImpl")
	private MyPageServiceImpl my_service;
	
	@Resource(name="simple_MemServiceImpl")
	private Simple_MemServiceImpl mem_service;
	
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
		
		List<CouponDto> my_coupon = res_service.reserve_CouponList(req.getSession().getAttribute("smem_id").toString());
		List<CardDto> card_list = mem_service.selectOneMemCard(req.getSession().getAttribute("smem_id").toString());
		
		model.addAttribute("my_coupon",my_coupon);
		model.addAttribute("price",req.getParameter("price"));
		model.addAttribute("startTime",startTime);
		model.addAttribute("endTime",endTime);
		model.addAttribute("car_i_dto",car_i_dto);
		model.addAttribute("ms_change",ms_change);
		model.addAttribute("card_list",card_list);
		
		return "/reserve/Confirm";
	};
	
	
	@RequestMapping("/Reserve/ReserveComplete.do")
	public String reserveComplete(HttpServletRequest req) throws Exception{
		int affected = 0;
		
		ReserveDto dto = new ReserveDto();
		String ms_code="";
		dto.setSmem_id(req.getSession().getAttribute("smem_id").toString());
		dto.setCar_i_code(req.getParameter("car_i_code"));
		dto.setCard_code(req.getParameter("card_code"));
		dto.setRes_price(req.getParameter("res_price"));
 
		dto.setRes_date_start(new Date(Long.parseLong(req.getParameter("res_date_start"))));
		dto.setRes_date_end(new Date(Long.parseLong(req.getParameter("res_date_end"))));
		
		dto.setReserve_type(req.getParameter("reserve_type"));
		dto.setRes_instype(req.getParameter("res_instype"));
		dto.setRes_inscost(req.getParameter("res_inscost"));
		dto.setCou_i_code(req.getParameter("cou_i_code"));
		dto.setSale_price(req.getParameter("sale_price"));
		
		if(dto.getReserve_type().equals("p")) {
			Map map = new HashMap();
			map.put("sale_price", Integer.parseInt(req.getParameter("sale_price"))*-1);
			map.put("smem_id", dto.getSmem_id());
			

			affected = res_service.insert_ms_change(map);
			
			ms_code = res_service.getms_code_lastNum();
		}
		else if(dto.getReserve_type().equals("n")) {
			affected = 1;
		}
		dto.setMs_code(ms_code);
		
//		System.out.println(req.getParameter("car_i_code"));
//		System.out.println(req.getParameter("card_code"));
//		System.out.println(req.getParameter("res_price"));
//		System.out.println(req.getParameter("res_date_start"));
//		System.out.println(req.getParameter("res_date_end"));
//		System.out.println(req.getParameter("reserve_type"));
//		System.out.println(req.getParameter("res_instype"));
//		System.out.println(req.getParameter("res_inscost"));
//		System.out.println(req.getParameter("cou_i_code"));
//		System.out.println(req.getParameter("sale_price"));
		
		if(affected==1 || dto.getReserve_type().equals("c")) {
			affected = res_service.insertReserve(dto);
			
				if(dto.getReserve_type().equals("c")) {
						affected = res_service.insertCou_use(dto.getCou_i_code());
				}
		}
		
		
		
		
		
		return "/main/Main";
	}
	
	
	
	
}///////////////////////////////////


