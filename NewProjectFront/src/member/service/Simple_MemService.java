package member.service;

import java.util.Map;

public interface Simple_MemService {
	//회원가입
	public int createSimple_Mem(Map map) throws Exception;
	//로그인
	public Simple_MemDto loginMem(Map map) throws Exception;
	//아이디 확인
	public int confirmId(String smem_id) throws Exception;
	//아이디 정보 가져오기
	public Simple_MemDto selectOne(String smem_id) throws Exception;
	
	public int CreateMem(MemDto dto) throws Exception;
	
}
