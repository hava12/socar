package mypage.service;

import java.util.List;

import member.service.MemDto;

public interface MyPageService {

	public MemDto gomypage(String smem_id) throws Exception;
	
	public List<CouponDto> goCouponBook() throws Exception;
	
	
	
}
