package bbs.service;

import java.util.List;

public interface BBSService {

	//리스트 받아오기
	public List<NoticeDto> selectNoticeList(int start,int end) throws Exception;
	
	//dto받아오기
	public NoticeDto selectNoticeOne(String not_no) throws Exception;
	
	//공지 등록하기
	public int insertNotice(NoticeDto dto, String[] srcs) throws Exception;
	
	//차량 신청 게시판 리스트
	public List<RqCarDTO> select_RqCarList() throws Exception;
	
	//차량 신청 게시판 게시글 삭제
	public int delete_RqCarList(String rqc_code) throws Exception;
	
	//주차장 신청 게시판 리스트
	public List<RqLocDTO> select_RqLocList() throws Exception;
	//주차장 신청 게시판 게시글 삭제
	public int delete_RqLocList(String rql_code) throws Exception;
	
	public void close() throws Exception;
	
}
