package notice.service.impl;

import java.util.List;
import java.util.Map;

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
	public List<Noti_ModelDto> selectNoti_ModelList(Map map) throws Exception {
		List<Noti_ModelDto> list = template.selectList("selectNoti_ModelList",map);
		return list;
	}

	@Override
	public Noti_ModelDto selectOne(Map map) throws Exception {
		
		return template.selectOne("Noticeone",map);
	}

	@Override
	public int getTotalCount(Map map) throws Exception {
		return template.selectOne("Noticetotal",map); 
	}
	
	
}
