package coupon.service;

import java.util.List;
import java.util.Map;

import member.service.MemDto;

public interface CouponService {

	//쿠폰 관련 메소드
	public int insertCoupon(CouponDto dto) throws Exception;
	
	public List<CouponDto> couponList(Map<String, Object> map) throws Exception;
	
	public CouponDto selectOneCoupon(String cou_code) throws Exception; 
	
	public int editCoupon(CouponDto dto) throws Exception;
	
	//쿠폰 생성 관련 메소드
	
	public int createCoupon(Cou_createDto dto) throws Exception;
	
	//쿠폰 발급 관련 메소드
	
	
	public List<CouponDto> selectCouponList(String smem_id) throws Exception;
	
	//CLOSE
	public void close() throws Exception;
	
}
