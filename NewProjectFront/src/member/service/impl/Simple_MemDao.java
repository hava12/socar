package member.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import member.service.Simple_MemDto;
import member.service.Simple_MemService;
@Repository
public class Simple_MemDao implements Simple_MemService {

	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public int createSimple_Mem(Map map) throws Exception {
		int affected = 0;		
		affected = template.insert("createSimple_Mem",map);
		return affected;
	}

	@Override
	public Simple_MemDto loginMem(Map map) throws Exception {
		Simple_MemDto dto = null;
		dto = template.selectOne("login",map);
		return dto;
	}

	@Override
	public int confirmId(String smem_id) throws Exception {
		int affected = 0 ;
		affected = template.selectOne("confirmId",smem_id);
		return affected;
	}

}
