package reserve.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import reserve.service.Car_IssueDTO;
import reserve.service.ReserveDto;
import reserve.service.ReserveService;

@Service
public class ReserveServiceImpl implements ReserveService {

	@Resource(name="reserveDao")
	public ReserveDao dao;
	
	@Override
	public List<ReserveDto> select_soz_res(String soz_code) throws Exception {
		return dao.select_soz_res(soz_code);
	}

	@Override
	public Car_IssueDTO selectIssue_CarIssue(String car_i_code) throws Exception {
		return dao.selectIssue_CarIssue(car_i_code);
	}

	@Override
	public int insertReserve(ReserveDto dto) throws Exception {
		return dao.insertReserve(dto);
	}

	@Override
	public int insert_ms_change(Map<String,String> map) throws Exception {
		return dao.insert_ms_change(map);
	}

	@Override
	public String getms_code_lastNum() throws Exception {
		return dao.getms_code_lastNum();
	}
	
	@Override
	public int insertCou_use(String cou_i_code) throws Exception {
		return dao.insertCou_use(cou_i_code);
	}

	
	
	
}
