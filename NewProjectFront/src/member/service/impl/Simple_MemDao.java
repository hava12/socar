package member.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.service.CardDto;
import member.service.MemDto;
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

	@Override
	public Simple_MemDto selectOne(String smem_id) throws Exception {
		
		Simple_MemDto dto = null;
		dto = template.selectOne("selectOneSimple_Mem",smem_id);
		return dto;
	}

	@Override
	public int CreateMem(MemDto dto) throws Exception {
		int affected = 0;
		affected = template.insert("insertMem",dto);
		
		return affected;
	}

	@Override
	public List<CardDto> selectOneMemCard(String smem_id) throws Exception {
		
		List<CardDto> list = null;
		
		list = template.selectList("selectOneMemCard",smem_id);

		return list;
	}

	@Override
	public int completeSoJoin(MemDto m_dto,CardDto c_dto) throws Exception {
		
		
		int affected = 0;
		
		affected = template.update("update_Mem_To_Certify",m_dto);
		
		if(affected == 1)affected = template.insert("insertCard",c_dto);
		
		return affected;
	}

	@Override
	public int verifyMem(String smem_id) throws Exception {
		return template.update("verifyMem",smem_id);
	}

	@Override
	public String verifyToMyPage(String smem_id) throws Exception {
		return template.selectOne("VerifyToMyPage",smem_id);
	}

}
