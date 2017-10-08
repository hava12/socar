package reserve.service.impl;

import java.util.List;

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

	
	
	
}
