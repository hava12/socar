package reserve.service;

import java.util.List;
import java.util.Map;

public interface CarService {
	
	public int insert(CarDTO dto) throws Exception;
	
	public List selectList(Map map) throws Exception;
	
	public int getCarListTotalRecordCount() throws Exception;
	
	public int getCarTypeTotalRecordCount() throws Exception;
	
	public CarDTO selectOne(String car_name_code) throws Exception;
	
	public int edit(CarDTO dto) throws Exception;
	
	public int delete(String car_name_code) throws Exception;
	
	public List<Car_ModelDto> selectCar_TypeList(Map map) throws Exception;
	
	public int insert_type(Car_ModelDto dto) throws Exception;
	
	public int car_issue(Car_IssueDTO dto) throws Exception;
	
	public List<Car_IssueDTO> car_issue_view(Map map) throws Exception;
	
	public int car_waste(Car_WasteDTO dto) throws Exception;
	
	public List<Car_WasteDTO> car_waste_list(Map map) throws Exception;
	
	public Car_WasteDTO car_waste_view(String car_i_code) throws Exception;
	
	public List<CarSearchResultDTO> car_search_result(String soz_code) throws Exception;
	
	public void close() throws Exception;

	public int getTotalRecordCount(String soz_code) throws Exception;
	

	
	
}
