package mypage.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import member.service.MemDto;
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

}
