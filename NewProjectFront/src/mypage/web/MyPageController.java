package mypage.web;

import java.lang.ref.ReferenceQueue;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.service.CardDto;
import member.service.MemDto;
import member.service.Simple_MemDto;
import member.service.impl.Simple_MemServiceImpl;
import mypage.service.Cou_createDto;
import mypage.service.Cou_useDto;
import mypage.service.CouponDto;
import mypage.service.impl.MyPageServiceImpl;
import reserve.service.Rent_sDto;
import reserve.service.ReserveDto;

@Controller
public class MyPageController {

	@Resource(name="myPageServiceImpl")
	 MyPageServiceImpl service;
	
	@Resource(name="simple_MemServiceImpl")
	 Simple_MemServiceImpl s_service;
	
	
	@RequestMapping("/Mypage/Mypage.do")
	public String mypage(HttpServletRequest req,Model model) throws Exception{
		
		MemDto dto = null;
		int reserveCount = service.countReserve(req.getSession().getAttribute("smem_id").toString());
		
		int couponCount = 0;
		
		couponCount = service.selectCouponCount(req.getSession().getAttribute("smem_id").toString());
		model.addAttribute("couponCount",couponCount);
		
		dto = service.gomypage(req.getSession().getAttribute("smem_id").toString());
		
		if(dto == null) {
			Simple_MemDto s_dto = s_service.selectOne(req.getSession().getAttribute("smem_id").toString());
			dto = new MemDto();
			dto.setSmem_id(s_dto.getSmem_id());
			dto.setSmem_name(s_dto.getSmem_name());
			dto.setSmem_pwd(s_dto.getSmem_pwd());
			dto.setSmem_tel(s_dto.getSmem_tel());
		}

		List<CardDto> card_list = null;
		
		card_list = s_service.selectOneMemCard(req.getSession().getAttribute("smem_id").toString());
		model.addAttribute("card_list",card_list);
		model.addAttribute("reserveCount",reserveCount);
		model.addAttribute("dto",dto);
		
		return "/mypage/Mypage";
	}
	
	
	@RequestMapping("/Mypage/Mypagereserve.do")
	public String mypagereserve(HttpServletRequest req,Model model) throws Exception{
		
		int couponCount = 0;
		int reserveCount = service.countReserve(req.getSession().getAttribute("smem_id").toString());
		
		couponCount = service.selectCouponCount(req.getSession().getAttribute("smem_id").toString());
		
		List<ReserveDto> res_list = null;
			
		res_list = service.selectReserve_smem(req.getSession().getAttribute("smem_id").toString());
		
		for(ReserveDto r_dto : res_list) {
				r_dto.setRes_status("이용 전");
				int affected = service.selectRent_s_Count(r_dto.getRes_code());
						if(affected >= 1) {
							r_dto.setRes_status("이용 중");
								affected = 0;
								affected = service.select_e_Count(r_dto.getRes_code());
								if(affected == 1) {
									r_dto.setRes_status("완료");
									affected = 0;
								}
						}
						
		}
		
		model.addAttribute("couponCount",couponCount);
		model.addAttribute("reserveCount",reserveCount);
		model.addAttribute("res_list",res_list);
		
		return "/mypage/Mypagereserve";
	}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	
	@RequestMapping("/Mypage/Mypagepayment.do")
	public String mypagepayment(HttpServletRequest req,Model model) throws Exception{
		
		int couponCount = 0;
		int reserveCount = service.countReserve(req.getSession().getAttribute("smem_id").toString());
		couponCount = service.selectCouponCount(req.getSession().getAttribute("smem_id").toString());
		

		List <ReserveDto> res_list = service.selectpaymemt_reserve(req.getSession().getAttribute("smem_id").toString());
		List <ReserveDto> re_list = service.selectpaymemt_rent_s(req.getSession().getAttribute("smem_id").toString());
		for(ReserveDto res_dto : res_list) {
			res_dto.setRes_status("예약");
		}
		for(ReserveDto re_dto : re_list ) {
			re_dto.setRes_status("완료");
			res_list.add(re_dto);
		}
		
		for(int i = 0 ; i < res_list.size() ; i++) {
				for(int j=i+i ; j < res_list.size() ; j++) {
						if(res_list.get(i).getRes_date().getTime() < res_list.get(j).getRes_date().getTime()) {
								ReserveDto temp = null;
								temp = res_list.get(i);
								res_list.set(i, res_list.get(j));
								res_list.set(j, temp);
							}
				}
		}
		
		
		model.addAttribute("res_list",res_list);
		model.addAttribute("couponCount",couponCount);
		model.addAttribute("reserveCount",reserveCount);
		
		
		return "/mypage/Mypagepayment";
	}
		
	
	
	
	
	
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	@RequestMapping("/Mypage/Mypagecoupon.do")
	public String mypagecoupon(HttpServletRequest req,Model model) throws Exception{
		
		int couponCount = 0;
		couponCount = service.selectCouponCount(req.getSession().getAttribute("smem_id").toString());
		int reserveCount = service.countReserve(req.getSession().getAttribute("smem_id").toString());
		
		
		model.addAttribute("couponCount",couponCount);
		model.addAttribute("reserveCount",reserveCount);
		
		
		List<CouponDto> list = null;
		
		list = service.myPageCouponBook(req.getSession().getAttribute("smem_id").toString());
		List<Cou_useDto> use_list= null;
		use_list = service.cou_use_List(req.getSession().getAttribute("smem_id").toString());
		
		for(CouponDto dto : list) {
				dto.setCou_status("<td class='status' style='color:blue'>사용 가능</td>");
				for(Cou_useDto use_dto:use_list) {
					if(dto.getCou_i_code().equals(use_dto.getCou_i_code())) {
							dto.setCou_status("<td class='status' style='color:red;'>쿠폰 사용됨</td>");
							break;
					}
				}
		}
		
		
		model.addAttribute("list",list);
		
		
		
		
		return "/mypage/Mypagecoupon";
	}
	
	
	
	//쿠폰 북으로 가기
	@RequestMapping("/Mypage/Couponbook.do")
	public String couponbook(HttpServletRequest req, Model model) throws Exception{
		

		
		List<CouponDto> list = null;
		
		
		list = service.goCouponBook();
		
		model.addAttribute("list",list);
		
		
		
		return "/mypage/Couponbook";
	}
	
	
	
	
	///////AJAX/////////////////
	
	
	@ResponseBody
	@RequestMapping(value="/Mypage/CouponIssueToMem.do",produces="text/html;charset=UTF-8")
	public String couponIssueToMem(HttpServletRequest req) throws Exception{

		JSONObject json = new JSONObject();
		
		if(req.getSession().getAttribute("smem_id")==null) {

			json.put("result", "우선 로그인 해주세요");
			return json.toJSONString();
		}
		String smem_id = req.getSession().getAttribute("smem_id").toString();
		String cou_code = req.getParameter("cou_code");
		
		Map map = new HashMap();
		map.put("smem_id", smem_id);
		map.put("cou_code", cou_code);
		int affected = 0;
		
		System.out.println(map.get("smem_id"));
		System.out.println(map.get("cou_code"));
		
		affected = service.couponAlreadyHave(map);
		
		if(affected >= 1) {

			json.put("result", "이미 발급받은 쿠폰입니다.");
			return json.toJSONString();
		}
		
		
		Cou_createDto c_c_dto = null;
		
		c_c_dto = service.selectTopOneC_C(map.get("cou_code").toString());
		
		if(c_c_dto == null) {
			json.put("result", "쿠폰이 모두 소진되었습니다.");
			return json.toJSONString();
		}
		
		
		map.put("cou_c_code",c_c_dto.getCou_c_code());
		affected = service.couponIssueToMem(map);

		json.put("result", affected==1?"쿠폰이 발급되었습니다!":"쿠폰 발급 실패");
		
		return json.toJSONString();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
