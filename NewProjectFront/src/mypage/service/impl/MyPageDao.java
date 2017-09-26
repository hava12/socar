package mypage.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import member.service.MemDto;
import member.service.Simple_MemDto;
import mypage.service.CouponDto;
import mypage.service.MyPageService;


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
	
}
