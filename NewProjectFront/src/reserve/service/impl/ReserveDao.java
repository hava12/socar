package reserve.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import mypage.service.CouponDto;
import reserve.service.Car_IssueDTO;
import reserve.service.ReserveDto;
import reserve.service.ReserveService;
import reserve.service.ZoneDTO;
@Repository
public class ReserveDao implements ReserveService {
	
	@Resource(name="template")
	public SqlSessionTemplate template;
	
	@Override
	public List<ReserveDto> select_soz_res(String soz_code) throws Exception {
		return template.selectList("select_soz_res",soz_code);
	}

	@Override
	public Car_IssueDTO selectIssue_CarIssue(String car_i_code) throws Exception {
		return template.selectOne("selectOne_CarIssue",car_i_code);
	}

	@Override
	public int insertReserve(ReserveDto dto) throws Exception {
		return template.insert("insertReserve",dto);
	}

	@Override
	public int insert_ms_change(Map<String,String> map) throws Exception {
		return template.insert("insert_ms_change",map);
	}

	@Override
	public String getms_code_lastNum() throws Exception {
		return template.selectOne("getms_code_lastNum");
	}

	@Override
	public int insertCou_use(String cou_i_code) throws Exception {
		return template.insert("insertCou_use",cou_i_code);
	}

	@Override
	public List<CouponDto> reserve_CouponList(String smem_id) throws Exception {
		return template.selectList("reserve_couponlist",smem_id);
	}

	@Override
	public ZoneDTO getSoz_code(String soz_name) throws Exception {
		return template.selectOne("getsoz_code",soz_name);
	}


	
}
