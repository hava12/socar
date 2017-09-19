package guide.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import guide.service.Car_ModelDto;
import guide.service.GuideService;

@Repository
public class GuideDao implements GuideService {

	@Resource(name="template")
	private SqlSessionTemplate template; 
	@Override
	public List<Car_ModelDto> selectCar_ModelList() throws Exception {
		List<Car_ModelDto> list = template.selectList("selectCar_ModelList");		
		return list;
	}

	
}
