package notice.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import notice.service.Noti_ModelDto;
import notice.service.NoticeService;

@Repository
public class NoticeDao implements NoticeService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<Noti_ModelDto> selectNoti_ModelList() throws Exception {
		List<Noti_ModelDto> list = template.selectList("selectNoti_ModelList");
		return list;
	}
	
	
}
