package reserve.service;

import java.util.List;

public interface ReserveService {
	
	public List<ReserveDto> select_soz_res(String soz_code) throws Exception;
	
}
