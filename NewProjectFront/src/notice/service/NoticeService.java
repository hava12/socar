package notice.service;

import java.util.List;
import java.util.Map;

public interface NoticeService {

		//목록
		List<Noti_ModelDto> selectNoti_ModelList(Map map) throws Exception;
		
		//상세보기 
		Noti_ModelDto selectOne(Map map) throws Exception;
		
		//전체 레코드수
		int getTotalCount(Map map) throws Exception;
	
}
