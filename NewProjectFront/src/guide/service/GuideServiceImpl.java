package guide.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import guide.service.Car_ModelDto;
import guide.service.GuideService;
import guide.service.impl.GuideDao;

@Service("guideService")
public class GuideServiceImpl implements GuideService {

	
	@Resource(name="guideDao")
	public GuideDao dao;
	
	
	@Override
	public List<Car_ModelDto> selectCar_ModelList() throws Exception {
		return dao.selectCar_ModelList();
	}
	
	

	
	
}
