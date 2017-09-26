package mypage.service;

import java.util.List;

import member.service.MemDto;

public interface MyPageService {

	public MemDto gomypage(String smem_id) throws Exception;
	
	public List<CouponDto> goCouponBook() throws Exception;
	
	public List<CouponDto> myPageCouponBook(String smem_id) throws Exception;

	public int couponIssueToMem(java.util.Map map) throws Exception; 

	public Cou_createDto selectTopOneC_C(String cou_code) throws Exception;
	
	public int selectCouponCount(String smem_id) throws Exception;
}
