package reserve.service;

import java.util.List;
import java.util.Map;

import mypage.service.CouponDto;

public interface ReserveService {
	
	public List<ReserveDto> select_soz_res(String soz_code) throws Exception;
	
	public Car_IssueDTO selectIssue_CarIssue(String car_i_code) throws Exception;
	
	public int insertReserve(ReserveDto dto) throws Exception;
	
	public int insert_ms_change(Map<String,String> map) throws Exception;
	
	public String getms_code_lastNum() throws Exception;
	
	public int insertCou_use(String cou_i_code) throws Exception;
	
	public List<CouponDto> reserve_CouponList(String smem_id) throws Exception;

	public ZoneDTO getSoz_code(String soz_name) throws Exception;
}
