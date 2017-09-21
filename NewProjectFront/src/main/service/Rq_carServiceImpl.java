package main.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import main.service.impl.Rq_carDao;

@Service("rq_carService")
public class Rq_carServiceImpl implements Rq_carService{

	@Resource(name="rq_carDao")
	private Rq_carDao dao;
	
	
	@Override
	public List<Rq_carDto> selectRq_car_List() throws Exception {
		
		return dao.selectRq_car_List();
	}

	@Override
	public int insert(Rq_carDto dto) throws Exception {
		
		return dao.insert(dto);
	}


	
	
}
