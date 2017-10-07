package reserve.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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

	
	
	
}
