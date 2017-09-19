package bbs.service;

public class RqCarDTO {
	
	private String rqc_code;
	private String rqc_content;
	private String rqc_loc;
	private String smem_id;
	private java.sql.Date rqc_date;
	
	//프로그램 효율성을 위해 --
	private String rqc_like_code;
	private String rqc_dis_code;
	
	//
	private String rqc_like_count;
	private String rqc_dis_count;
	
	
	public String getRqc_like_count() {
		return rqc_like_count;
	}
	public void setRqc_like_count(String rqc_like_count) {
		this.rqc_like_count = rqc_like_count;
	}
	public String getRqc_dis_count() {
		return rqc_dis_count;
	}
	public void setRqc_dis_count(String rqc_dis_count) {
		this.rqc_dis_count = rqc_dis_count;
	}
	public java.sql.Date getRqc_date() {
		return rqc_date;
	}
	public void setRqc_date(java.sql.Date rqc_date) {
		this.rqc_date = rqc_date;
	}
	public String getRqc_like_code() {
		return rqc_like_code;
	}
	public void setRqc_like_code(String rqc_like_code) {
		this.rqc_like_code = rqc_like_code;
	}
	public String getRqc_dis_code() {
		return rqc_dis_code;
	}
	public void setRqc_dis_code(String rqc_dis_code) {
		this.rqc_dis_code = rqc_dis_code;
	}
	public String getRqc_code() {
		return rqc_code;
	}
	public void setRqc_code(String rqc_code) {
		this.rqc_code = rqc_code;
	}
	public String getRqc_content() {
		return rqc_content;
	}
	public void setRqc_content(String rqc_content) {
		this.rqc_content = rqc_content;
	}
	public String getRqc_loc() {
		return rqc_loc;
	}
	public void setRqc_loc(String rqc_loc) {
		this.rqc_loc = rqc_loc;
	}
	public String getSmem_id() {
		return smem_id;
	}
	public void setSmem_id(String smem_id) {
		this.smem_id = smem_id;
	}
	
	
}
