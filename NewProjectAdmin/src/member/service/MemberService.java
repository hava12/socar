package member.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

public interface MemberService {	
	
	public int login(AdDto dto) throws Exception;
	
	//SimpleMember관련 메소드들
	public List<SimpleMemDto> selectSimpleMemlist(Map<String,Object> map) throws Exception;
	
	public SimpleMemDto selectSimpleMemOne(String smem_id) throws Exception;
	
	public int updateSmemPwd(String smem_id,String smem_pwd) throws Exception;
	
	//Member 관련 메소드들
	public List<MemDto> selectMemList(Map<String,Object> map) throws Exception;
	
	public MemDto selectMemOne(String smem_id) throws Exception;
	
	public int updateMem(String smem_id,String smem_pwd,String mem_addr_num,String mem_addr_fir,String mem_addr_sec) throws Exception;
	
	
	//Membership관련 메소드
	public int insertPoint(String smem_id,int point) throws Exception;
	
	public List<MembershipDto> selectMembershipList(Map<String,Object> map) throws Exception;
	

	//Card관련 메소드
	public List<CardDto> selectCardList(String smem_id,Map<String,Object> map) throws Exception;	
	
	public List<MemDto> searchMemberList(String mem , String where,Map<String,Object> map) throws Exception;
	
	public int insertCard(CardDto dto) throws Exception; 
	
	//close
	public void close() throws Exception;
}
