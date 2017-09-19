package bbs.service;

import java.util.List;

public interface NoticeService {

	//리스트 받아오기
	public List<NoticeDto> selectNoticeList(int start,int end) throws Exception;
	
	//dto받아오기
	public NoticeDto selectNoticeOne(String not_no) throws Exception;
	
	//공지 등록하기
	public int insertNotice(NoticeDto dto, String[] srcs) throws Exception;
	

	
	public void close() throws Exception;
	
}
