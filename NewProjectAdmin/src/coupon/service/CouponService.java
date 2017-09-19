package coupon.service;

import java.util.List;

import member.service.MemDto;

public interface CouponService {

	//쿠폰 관련 메소드
	public int insertCoupon(CouponDto dto) throws Exception;
	
	public List<CouponDto> couponList(int start,int end) throws Exception;
	
	public CouponDto selectOneCoupon(String cou_code) throws Exception; 
	
	public int editCoupon(CouponDto dto) throws Exception;
	
	//쿠폰 생성 관련 메소드
	
	public int createCoupon(Cou_createDto dto) throws Exception;
	
	//쿠폰 발급 관련 메소드
	
	
	
	//CLOSE
	public void close() throws Exception;
}
