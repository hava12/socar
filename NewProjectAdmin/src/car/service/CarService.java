package car.service;

import java.util.List;

public interface CarService {
	
	public int insert(CarDTO dto) throws Exception;
	
	public List selectList(int start,int end) throws Exception;
	
	public CarDTO selectOne(String car_name_code) throws Exception;
	
	public int edit(CarDTO dto) throws Exception;
	
	public int delete(String car_name_code) throws Exception;
	
	public List<Car_ModelDto> selectCar_TypeList(int start,int end) throws Exception;
	
	public int insert_type(Car_ModelDto dto) throws Exception;
	
	public int car_issue(Car_IssueDTO dto) throws Exception;
	
	public List<Car_IssueDTO> car_issue_view(String soz_code) throws Exception;
	
	public int car_waste(Car_WasteDTO dto) throws Exception;
	
	public List<Car_WasteDTO> car_waste_list(int start,int end) throws Exception;
	
	public Car_WasteDTO car_waste_view(String car_i_code) throws Exception;
	
	public void close() throws Exception;
	

	
	
}
