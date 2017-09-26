package mypage.service;

public class Cou_createDto {
	
	
	
	private String cou_c_code;
	private String cou_code;

	
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
	public int getCou_c_count() {
		return cou_c_count;
	}
	public void setCou_c_count(int cou_c_count) {
		this.cou_c_count = cou_c_count;
	}
	
	
	
}
