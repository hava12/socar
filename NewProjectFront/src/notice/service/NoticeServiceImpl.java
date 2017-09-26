package notice.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import notice.service.impl.NoticeDao;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	@Resource(name="noticeDao")
	public NoticeDao dao;

	@Override
	public List<Noti_ModelDto> selectNoti_ModelList(Map map) throws Exception {
		
		return dao.selectNoti_ModelList(map);
	}

	@Override
	public Noti_ModelDto selectOne(Map map) throws Exception {
		
		return dao.selectOne(map);
	}

	@Override
	public int getTotalCount(Map map) throws Exception {
		return dao.getTotalCount(map);
	}
	
	
	
}
