package reserve.service;

import java.util.List;

public interface ReserveService {
	
	public List<ReserveDto> select_soz_res(String soz_code) throws Exception;
	
	public Car_IssueDTO selectIssue_CarIssue(String car_i_code) throws Exception;
}
