package bbs.service;

public class NoticeDto {

	
	private String not_no;
	private String ad_id;
	private String not_title;
	private String not_content;
	private java.util.Date not_postdate;
	
	
	
	//게터 세터
	
	public String getNot_no() {
		return not_no;
	}
	public void setNot_no(String not_no) {
		this.not_no = not_no;
	}
	public String getAd_id() {
		return ad_id;
	}
	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	public String getNot_title() {
		return not_title;
	}
	public void setNot_title(String not_title) {
		this.not_title = not_title;
	}
	public String getNot_content() {
		return not_content;
	}
	public void setNot_content(String not_content) {
		this.not_content = not_content;
	}
	public java.util.Date getNot_postdate() {
		return not_postdate;
	}
	public void setNot_postdate(java.util.Date not_postdate) {
		this.not_postdate = not_postdate;
	}
	


}
