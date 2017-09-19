package member.service;

public class AdDto {
	
	private String ad_id;
	private String dept_no;
	private String ad_name;
	private String ad_pwd;
	private java.util.Date ad_regidate;
	
	
	// 게터 세터
	public String getAd_id() {
		return ad_id;
	}
	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	public String getDept_no() {
		return dept_no;
	}
	public void setDept_no(String dept_no) {
		this.dept_no = dept_no;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	public String getAd_pwd() {
		return ad_pwd;
	}
	public void setAd_pwd(String ad_pwd) {
		this.ad_pwd = ad_pwd;
	}
	public java.util.Date getAd_regidate() {
		return ad_regidate;
	}
	public void setAd_regidate(java.util.Date ad_regidate) {
		this.ad_regidate = ad_regidate;
	}
	

	
	
}
