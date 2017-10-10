package main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import main.service.Rq_carDto;
import main.service.Rq_carService;

@Repository
public class Rq_carDao implements Rq_carService{

	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public List<Rq_carDto> selectRq_car_List() throws Exception {
		List<Rq_carDto> list = template.selectList("selectRq_car_List");
		return list;
	}

	@Override
	public int insert(Rq_carDto dto) throws Exception {

		int count = template.insert("Rq_carinsert",dto);
		return count;
		
	}

	
}
