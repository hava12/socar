package coupon.service;

public class Cou_createDto {
	
	
	
	private String cou_c_code;
	private String cou_code;
	private java.util.Date cou_c_date;
	private java.util.Date cou_c_expdate;
	private String cou_c_t_start;
	private String cou_c_t_end;
	
	
	//효율성을 위해 변수 생성
	private int cou_c_count;
	

	// 게터 세터
	
	public String getCou_c_code() {
		return cou_c_code;
	}
	public void setCou_c_code(String cou_c_code) {
		this.cou_c_code = cou_c_code;
	}
	public String getCou_code() {
		return cou_code;
	}
	public void setCou_code(String cou_code) {
		this.cou_code = cou_code;
	}

	public java.util.Date getCou_c_date() {
		return cou_c_date;
	}
	public void setCou_c_date(java.util.Date cou_c_date) {
		this.cou_c_date = cou_c_date;
	}
	public java.util.Date getCou_c_expdate() {
		return cou_c_expdate;
	}
	public void setCou_c_expdate(java.util.Date cou_c_expdate) {
		this.cou_c_expdate = cou_c_expdate;
	}
	public String getCou_c_t_start() {
		return cou_c_t_start;
	}
	public void setCou_c_t_start(String cou_c_t_start) {
		this.cou_c_t_start = cou_c_t_start;
	}
	public String getCou_c_t_end() {
		return cou_c_t_end;
	}
	public void setCou_c_t_end(String cou_c_t_end) {
		this.cou_c_t_end = cou_c_t_end;
	}
	public int getCou_c_count() {
		return cou_c_count;
	}
	public void setCou_c_count(int cou_c_count) {
		this.cou_c_count = cou_c_count;
	}
	
	
	
}
