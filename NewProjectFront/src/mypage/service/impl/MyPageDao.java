package mypage.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import member.service.MemDto;
import member.service.Simple_MemDto;
import mypage.service.Cou_createDto;
import mypage.service.Cou_useDto;
import mypage.service.CouponDto;
import mypage.service.MyPageService;
import reserve.service.Rent_sDto;
import reserve.service.ReserveDto;


@Service
public class MyPageDao implements MyPageService {

	
	@Resource(name="template")
	SqlSessionTemplate template;
	
	
	@Override
	public MemDto gomypage(String smem_id) throws Exception {
		
		MemDto dto = null;
		dto = template.selectOne("myPageSelectOne",smem_id);
		return dto;			

	}


	@Override
	public List<CouponDto> goCouponBook() throws Exception {
		
		List<CouponDto> list  = null;
		
			list = template.selectList("selectCouponList");
		
		return list;
	}


	@Override
	public List<CouponDto> myPageCouponBook(String smem_id) throws Exception {
		
		List<CouponDto> list = null;
				list = template.selectList("selectMyCouponBook",smem_id);
		return list;
	}
	
	
	

	@Override
	public int couponIssueToMem(Map map) throws Exception {
		int affected = 0;
		affected = template.insert("couponIssueToMem",map);
		return affected;
	}


	@Override
	public Cou_createDto selectTopOneC_C(String cou_code) throws Exception {
		return template.selectOne("selectTopOneC_C",cou_code);
	}


	@Override
	public int selectCouponCount(String smem_id) throws Exception {
		return template.selectOne("selectCouponCount", smem_id);
	}


	@Override
	public int couponAlreadyHave(Map map) throws Exception {
		return template.selectOne("couponAlreadyHave",map);
	}


	@Override
	public String smem_Verify(String smem_id) throws Exception {
		return template.selectOne("smem_verify", smem_id);
	}


	@Override
	public List<Cou_useDto> cou_use_List(String smem_id) throws Exception {
		return template.selectList("cou_use_list",smem_id);
	}
	
	@Override
	public int countReserve(String smem_id) throws Exception {
		return template.selectOne("countReserve",smem_id);
	}
	
	@Override
	public List<ReserveDto> selectReserve_smem(String smem_id) throws Exception{
		return template.selectList("selectReserve_smem",smem_id);
	}


	@Override
	public int selectRent_s_Count(String res_code) throws Exception {
		return template.selectOne("selectRent_s_Count",res_code);
	}


	@Override
	public int select_e_Count(String res_code) throws Exception {
		return template.selectOne("select_e_Count",res_code);
	}


	@Override
	public List<ReserveDto> selectpaymemt_reserve(String smem_id) throws Exception {
		return template.selectList("selectpaymemt_reserve",smem_id);
	}


	@Override
	public List<ReserveDto> selectpaymemt_rent_s(String smem_id) throws Exception {
		return template.selectList("selectpaymemt_rent_s",smem_id);
	}



}
