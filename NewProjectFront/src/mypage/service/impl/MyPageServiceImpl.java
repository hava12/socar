package mypage.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import member.service.MemDto;
import mypage.service.Cou_createDto;
import mypage.service.Cou_useDto;
import mypage.service.CouponDto;
import mypage.service.MyPageService;
import reserve.service.Rent_sDto;
import reserve.service.ReserveDto;

@Repository
public class MyPageServiceImpl implements MyPageService {

	
	@Resource(name="myPageDao")
	MyPageDao dao;
	
	
	@Override
	public MemDto gomypage(String smem_id) throws Exception {
		return dao.gomypage(smem_id);
	}


	@Override
	public List<CouponDto> goCouponBook() throws Exception {
		return dao.goCouponBook();
	}


	@Override
	public List<CouponDto> myPageCouponBook(String smem_id) throws Exception {
		return dao.myPageCouponBook(smem_id);
	}


	@Override
	public int couponIssueToMem(Map map) throws Exception {
		return dao.couponIssueToMem(map);
	}


	@Override
	public Cou_createDto selectTopOneC_C(String cou_code) throws Exception {
		return dao.selectTopOneC_C(cou_code);
	}


	@Override
	public int selectCouponCount(String smem_id) throws Exception {
		return dao.selectCouponCount(smem_id);
	}


	@Override
	public int couponAlreadyHave(Map map) throws Exception {
		return dao.couponAlreadyHave(map);
	}


	@Override
	public String smem_Verify(String smem_id) throws Exception {
		return dao.smem_Verify(smem_id);
	}


	@Override
	public List<Cou_useDto> cou_use_List(String smem_id) throws Exception {
		return dao.cou_use_List(smem_id);
	}
	
	@Override
	public int countReserve(String smem_id) throws Exception {
		return dao.countReserve(smem_id);
	}

	@Override
	public List<ReserveDto> selectReserve_smem(String smem_id) throws Exception{
		return dao.selectReserve_smem(smem_id);
	}


	@Override
	public int selectRent_s_Count(String res_code) throws Exception {
		return dao.selectRent_s_Count(res_code);
	}


	@Override
	public int select_e_Count(String res_code) throws Exception {
		return dao.select_e_Count(res_code);
	}


	@Override
	public List<ReserveDto> selectpaymemt_rent_s(String smem_id) throws Exception {
		return dao.selectpaymemt_rent_s(smem_id);
	}


	@Override
	public List<ReserveDto> selectpaymemt_reserve(String smem_id) throws Exception {
		return dao.selectpaymemt_reserve(smem_id);
	}



}
