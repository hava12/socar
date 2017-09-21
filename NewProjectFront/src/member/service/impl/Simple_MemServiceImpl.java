package member.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import member.service.Simple_MemDto;
import member.service.Simple_MemService;

@Service
public class Simple_MemServiceImpl implements Simple_MemService{

	@Resource(name="simple_MemDao")
	private Simple_MemDao dao;
	
	@Override
	public int createSimple_Mem(Map map) throws Exception {
		return dao.createSimple_Mem(map);
	}/////////////////////////////////////////////////////////////

	@Override
	public Simple_MemDto loginMem(Map map) throws Exception {
		return dao.loginMem(map);
	}///////////////////////////////////////////////////////////////

	@Override
	public int confirmId(String smem_id) throws Exception {
		
		return dao.confirmId(smem_id);
	}///////////////////////////////////////////////////////////////

	public Simple_MemDto selectOne(String smem_id) throws Exception {
		return dao.selectOne(smem_id);
	}

}
