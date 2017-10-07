package reserve.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import reserve.service.ReserveDto;
import reserve.service.ReserveService;
@Repository
public class ReserveDao implements ReserveService {
	
	@Resource(name="template")
	public SqlSessionTemplate template;
	
	@Override
	public List<ReserveDto> select_soz_res(String soz_code) throws Exception {
		return template.selectList("select_soz_res",soz_code);
	}

	
}
