package admin.service;

import java.util.List;

public interface AdminService {

	
	//부서 생성하기
	public int insertDept(DeptDto dto) throws Exception;
	
	
	//부서 리스트 가져오기
	public List<DeptDto> selectDeptList(int start,int end) throws Exception;
	
	//부서 디테일 가져오기 
	public DeptDto selectDeptOne(String dept_no) throws Exception;
	
	//부서 수정하기
	public int editDept(DeptDto dto) throws Exception;
	
	//부서 삭제하기
	public int deleteDept(String dept_no) throws Exception;
	
	
	
	//어드민 입력하기
	public int insertAdmin(AdminDto dto) throws Exception;
	//어드민 리스트 가져오기
	public List<AdminDto> selectAdminList(int start,int end) throws Exception;
	//어드민 하나 가져오기
	public AdminDto selectAdminOne(String ad_id) throws Exception;
	//어드민 수정하기
	public int editAdmin(AdminDto dto) throws Exception;
	//어드민 삭제하기
	public int deleteAdmin(String ad_id) throws Exception;
	
	
	
	
	
	
	//연결 종료하기 
	public void close() throws Exception;
	
	
}
