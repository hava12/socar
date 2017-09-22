package mypage.service.impl;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import member.service.MemDto;
import member.service.Simple_MemDto;
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
	
}
