package mypage.service;

import java.util.List;
import java.util.Map;

import member.service.MemDto;
import reserve.service.Rent_sDto;
import reserve.service.ReserveDto;

public interface MyPageService {

	public MemDto gomypage(String smem_id) throws Exception;
	
	public List<CouponDto> goCouponBook() throws Exception;
	
	public List<CouponDto> myPageCouponBook(String smem_id) throws Exception;

	//회원에게 쿠폰을 발급해주는 메소드
	public int couponIssueToMem(java.util.Map map) throws Exception; 

	//발급 된 쿠폰 중 하나를 선택해주는 메소드
	public Cou_createDto selectTopOneC_C(String cou_code) throws Exception;
	
	//쿠폰 보유 갯수를 출력해주는 메소드
	public int selectCouponCount(String smem_id) throws Exception;
	//쿠폰 보유 여부를 알려주는 메소드
	public int couponAlreadyHave(java.util.Map map) throws Exception; 
	
	//본인인증 되었는지 여부 묻는 메소드
	public String smem_Verify(String smem_id) throws Exception;

	public List<Cou_useDto> cou_use_List(String smem_id) throws Exception;
	
	public int countReserve(String smem_id) throws Exception;
	
	public List<ReserveDto> selectReserve_smem(String smem_id) throws Exception;
	
	public int selectRent_s_Count(String res_code) throws Exception;

	public int select_e_Count(String res_code) throws Exception;

	public List<ReserveDto> selectpaymemt_reserve(String smem_id) throws Exception;
	public List<ReserveDto> selectpaymemt_rent_s(String smem_id) throws Exception;
	
}
