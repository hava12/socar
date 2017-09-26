package mypage.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import member.service.MemDto;
import mypage.service.Cou_createDto;
import mypage.service.CouponDto;
import mypage.service.MyPageService;

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

}
