package reservation.service;

import java.util.List;
import java.util.Map;

public interface ReserveService {

	
	//예약 리스트 출력
	public List<ReserveDto> selectReserveList(Map<String,Object> map) throws Exception;
	
	//예약 입력
	public int insertReserve(ReserveDto dto) throws Exception;
	
	//예약 시작
	public int insertsRent_S(String[] res_codes) throws Exception; 
	//예약 시작 리스트
	public List<Rent_S_Dto> selectRent_SList() throws Exception;
	
	
	//예약 취소
	public int insertsCanc(String[] res_codes) throws Exception;
	//예약 취소 리스트
	public List<Canc_Dto> selectCancList() throws Exception;
	
	
	//렌트 종료
	public int insertRent_E(Rent_E_Dto dto) throws Exception;
	//렌트 종료 리스트
	public List<Rent_E_Dto> selectRent_EList() throws Exception;
	
	//예약 시간 가져오는 dto
	public List<ReserveDto> SelectReserveListForTimeSelect(String car_i_code) throws Exception;
	
	//클로즈
	public void close() throws Exception;
}
