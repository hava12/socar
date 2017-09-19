package zone.service;

import java.util.List;


public interface ZoneService {
	
	public int insert(ZoneDTO dto) throws Exception;
	public List selectList(int start,int end) throws Exception;
	public ZoneDTO selectOne(String soz_code) throws Exception;
	public int edit(ZoneDTO dto) throws Exception;
	public int delete(String soz_code) throws Exception;
	public void close() throws Exception;
}
