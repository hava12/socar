package reserve.service.impl;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import reserve.service.CarDTO;
import reserve.service.CarSearchResultDTO;
import reserve.service.CarService;
import reserve.service.Car_IssueDTO;
import reserve.service.Car_ModelDto;
import reserve.service.Car_WasteDTO;


@Repository
public class CarDAO implements CarService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	

	//총 레코드 수 얻기용]
	@Override
	public int getCarListTotalRecordCount(){
			return template.selectOne("getCarListTotalRecordCount");
	}///////////////////getTotalRecordCount
	
	
	@Override
	public CarDTO selectOne(String car_name_code) throws Exception {
		return template.selectOne("carSelectOne",car_name_code);
	}//////////////////////selectOne()
	
	@Override
	public int insert(CarDTO dto) throws Exception{
		return template.insert("carInsert",dto);
	}////////////////////////////insert()
	
	@Override
	public int edit(CarDTO dto) throws Exception {
		return template.update("carUpdate",dto);		
	}//////////////////////////////////edit()
	
	@Override
	public int delete(String car_name_code) throws Exception { 
		return template.delete("carDelete",car_name_code);		
	}
	
	@Override
	public List<Car_ModelDto> selectCar_TypeList(Map map){
		return template.selectList("carSelectTypeList",map);
	}
	
	@Override
	public int getCarTypeTotalRecordCount(){
		return template.selectOne("getCarTypeTotalRecordCount");
	}
	
	@Override
	public void close() throws Exception {}

	@Override
	public int insert_type(Car_ModelDto dto) throws Exception {
		return template.insert("carInsertType",dto);
	}

	@Override
	public int car_issue(Car_IssueDTO dto) throws Exception {
		return template.insert("carIssue",dto);
	}

	@Override
	public List<Car_IssueDTO> car_issue_view(Map map) throws Exception {
		return template.selectList("carIssueView",map);
	}

	//총 레코드 수 얻기용]
	@Override
	public int getTotalRecordCount(String soz_code){
		return template.selectOne("getTotalRecordCount",soz_code);		
	}///////////////////getTotalRecordCount
	
	@Override
	public int car_waste(Car_WasteDTO dto) throws Exception {
		return template.insert("carWaste",dto);
	}

	@Override
	public List<Car_WasteDTO> car_waste_list(Map map){
		return template.selectList("carWasteDTOList",map);
	}
	
	//총 레코드 수 얻기용]
	public int getWasteTotalRecordCount(){
		return template.selectOne("getWasteTotalRecord");
	}///////////////////getTotalRecordCount
		
	@Override
	public Car_WasteDTO car_waste_view(String car_i_code) throws Exception {
		return template.selectOne("carWasteView",car_i_code);
	}

	@Override
	public List<CarDTO> selectList(Map map) throws Exception{
		return template.selectList("selectCarList",map);
	}

	@Override
	public List<CarSearchResultDTO> car_search_result(String soz_code) throws Exception {
		return template.selectList("carSearchResult",soz_code);
	}
	
	
}//////////////////////////
