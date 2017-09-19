package notice.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import notice.service.impl.NoticeDao;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	@Resource(name="noticeDao")
	public NoticeDao dao;

	@Override
	public List<Noti_ModelDto> selectNoti_ModelList() throws Exception {
		
		return dao.selectNoti_ModelList();
	}
	
	
	
}
