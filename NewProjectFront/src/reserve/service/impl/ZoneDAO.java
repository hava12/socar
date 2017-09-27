package reserve.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import reserve.service.CarSearchResultDTO;
import reserve.service.ZoneDTO;
import reserve.service.ZoneService;

@Repository
public class ZoneDAO implements ZoneService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public List<ZoneDTO> selectList(Map map){
		return template.selectList("zoneSelectList", map);
	}////////////////////////////////selectList()
	
	@Override
	public int insert(ZoneDTO dto){
		return template.insert("zoneInsert",dto);
	}////////////////////////insert()
	
	@Override
	public ZoneDTO selectOne(String soz_code){
		return template.selectOne("zoneSelectOne",soz_code);
	}
	
	@Override
	public List<ZoneDTO> selectEveryList() throws Exception {
		return template.selectList("zoneSelectEveryList");
	}
	
	@Override
	public int delete(String soz_code){
		return template.delete("zoneDelete",soz_code);
	
	}//////////////////////////////delete()
	
	@Override
	public int edit(ZoneDTO dto){
		return template.update("zoneUpdate",dto);
	}

	@Override
	public void close() throws Exception {}
	
	//총 레코드 수 얻기용]
	@Override
	public int getTotalRecordCount(){
		return template.selectOne("zoneTotalRecordCount");	
	}///////////////////getTotalRecordCount

	
	
}


