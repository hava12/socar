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
	
}
