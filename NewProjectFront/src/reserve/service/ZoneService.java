package reserve.service;

import java.util.List;
import java.util.Map;


public interface ZoneService {
	
	public int insert(ZoneDTO dto) throws Exception;
	public List<ZoneDTO> selectList(Map map) throws Exception;
	public ZoneDTO selectOne(String soz_code) throws Exception;
	public int edit(ZoneDTO dto) throws Exception;
	public int delete(String soz_code) throws Exception;
	public void close() throws Exception;
	public List<ZoneDTO> selectEveryList() throws Exception;
	public int getTotalRecordCount() throws Exception;
}
