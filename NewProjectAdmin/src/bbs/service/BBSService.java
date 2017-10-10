package bbs.service;

import java.util.List;
import java.util.Map;

public interface BBSService {

	//리스트 받아오기
	public List<NoticeDto> selectNoticeList(Map<String,Object> map) throws Exception;
	
	//dto받아오기
	public NoticeDto selectNoticeOne(String not_no) throws Exception;
	
	//공지 등록하기
	public int insertNotice(NoticeDto dto, String[] srcs) throws Exception;
	
	//차량 신청 게시판 리스트
	public List<RqCarDTO> select_RqCarList(Map<String,Object> map) throws Exception;
	
	//차량 신청 게시판 게시글 삭제
	public int delete_RqCarList(String rqc_code) throws Exception;
	
	//주차장 신청 게시판 리스트
	public List<RqLocDTO> select_RqLocList(Map<String, Object> map) throws Exception;
	//주차장 신청 게시판 게시글 삭제
	public int delete_RqLocList(String rql_code) throws Exception;
	
	//1:1받아오기
	public List<InquiryDTO> selectInquiryList() throws Exception;
	
	//1:1상세보기
	public InquiryDTO selectInquiryDetail(String i_no) throws Exception;
	
	//1:1삭제
	public int deleteInquiry(String i_no) throws Exception;
	
	public void close() throws Exception;
	
}
