package main.service;

import java.util.List;

import notice.service.Noti_ModelDto;

public interface Rq_carService {

	public List<Rq_carDto> selectRq_car_List() throws Exception;
	
	int insert(Rq_carDto dto) throws Exception;
}
