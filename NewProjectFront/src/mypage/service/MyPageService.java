package mypage.service;

import java.util.List;

import member.service.MemDto;

public interface MyPageService {

	public MemDto gomypage(String smem_id) throws Exception;
	
	public List<CouponDto> goCouponBook() throws Exception;
	
	public List<CouponDto> myPageCouponBook(String smem_id) throws Exception;

	//회원에게 쿠폰을 발급해주는 메소드
	public int couponIssueToMem(java.util.Map map) throws Exception; 

	//발급 된 쿠폰 중 하나를 선택해주는 메소드
	public Cou_createDto selectTopOneC_C(String cou_code) throws Exception;
	
	//쿠폰 보유 갯수를 출력해주는 메소드
	public int selectCouponCount(String smem_id) throws Exception;
	//쿠폰 보유 여부를 알려주는 메소드
	public int couponAlreadyHave(java.util.Map map) throws Exception; 
}
