package member.service;

public class MembershipDto {
	
	private String ms_code;
	private String smem_id;
	private String ms_change;
	private java.util.Date ms_date;
	
	//게터 세터
	
	
	public java.util.Date getMs_date() {
		return ms_date;
	}
	public void setMs_date(java.util.Date ms_date) {
		this.ms_date = ms_date;
	}
	public String getMs_code() {
		return ms_code;
	}
	public void setMs_code(String ms_code) {
		this.ms_code = ms_code;
	}
	public String getSmem_id() {
		return smem_id;
	}
	public void setSmem_id(String smem_id) {
		this.smem_id = smem_id;
	}
	public String getMs_change() {
		return ms_change;
	}
	public void setMs_change(String ms_change) {
		this.ms_change = ms_change;
	}
	
	
}
