package main.service;

public class Rq_carDto {

	private String rqc_code;
	private String rqc_content;
	private String rqc_loc;
	private String smem_id;
	private java.sql.Date rqc_date;
	
	
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
	public java.sql.Date getRqc_date() {
		return rqc_date;
	}
	public void setRqc_date(java.sql.Date rqc_date) {
		this.rqc_date = rqc_date;
	}
	
}
