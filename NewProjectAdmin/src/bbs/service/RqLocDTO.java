package bbs.service;

public class RqLocDTO {
	
	private String rql_code;
	private String rql_content;
	private String rql_loc;
	private String smem_id;
	private java.sql.Date rql_date;
	
	//프로그램 효율성을 위해
	private String rql_like_code;
	private String rql_dis_code;
	
	private String rql_like_count;
	private String rql_dis_count;
	
	
	public String getRql_like_count() {
		return rql_like_count;
	}
	public void setRql_like_count(String rql_like_count) {
		this.rql_like_count = rql_like_count;
	}
	public String getRql_dis_count() {
		return rql_dis_count;
	}
	public void setRql_dis_count(String rql_dis_count) {
		this.rql_dis_count = rql_dis_count;
	}
	public java.sql.Date getRql_date() {
		return rql_date;
	}
	public void setRql_date(java.sql.Date rql_date) {
		this.rql_date = rql_date;
	}
	public String getRql_like_code() {
		return rql_like_code;
	}
	public void setRql_like_code(String rql_like_code) {
		this.rql_like_code = rql_like_code;
	}
	public String getRql_dis_code() {
		return rql_dis_code;
	}
	public void setRql_dis_code(String rql_dis_code) {
		this.rql_dis_code = rql_dis_code;
	}
	public String getRql_code() {
		return rql_code;
	}
	public void setRql_code(String rql_code) {
		this.rql_code = rql_code;
	}
	public String getRql_content() {
		return rql_content;
	}
	public void setRql_content(String rql_content) {
		this.rql_content = rql_content;
	}
	public String getRql_loc() {
		return rql_loc;
	}
	public void setRql_loc(String rql_loc) {
		this.rql_loc = rql_loc;
	}
	public String getSmem_id() {
		return smem_id;
	}
	public void setSmem_id(String smem_id) {
		this.smem_id = smem_id;
	}
	
	
}
