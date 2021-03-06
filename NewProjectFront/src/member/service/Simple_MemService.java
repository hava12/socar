package member.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

public interface Simple_MemService {
	//회원가입
	public int createSimple_Mem(Map map) throws Exception;
	//로그인
	public Simple_MemDto loginMem(Map map) throws Exception;
	//아이디 확인
	public int confirmId(String smem_id) throws Exception;
	//아이디 정보 가져오기
	public Simple_MemDto selectOne(String smem_id) throws Exception;
	//MEM테이블 생성
	public int CreateMem(MemDto dto) throws Exception;
	//Card테이블 있는지 확인
	public List<CardDto> selectOneMemCard(String smem_id) throws Exception;
	
	//So멤버 카드/면허 등록
	public int completeSoJoin(MemDto m_dto,CardDto c_dto) throws Exception;
	
	//본인인증 메일 확인
	public int verifyMem(String smem_id) throws Exception;
	
	//마이페이지 연결 시 확인
	public String verifyToMyPage(String smem_id) throws Exception;
	
	public int insertCard(CardDto c_dto) throws Exception;
}
