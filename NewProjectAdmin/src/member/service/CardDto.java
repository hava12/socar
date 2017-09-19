package member.service;

public class CardDto {
	
	private String card_code;
	private String smem_id;
	private java.util.Date card_expdate;
	private String card_type;
	private java.util.Date card_birth;
	private String card_pwd;
	private java.util.Date card_createdate;

	
	//게터 세터
	
	
	public String getCard_code() {
		return card_code;
	}
	
	public java.util.Date getCard_createdate() {
		return card_createdate;
	}

	public void setCard_createdate(java.util.Date card_createdate) {
		this.card_createdate = card_createdate;
	}

	public void setCard_code(String card_code) {
		this.card_code = card_code;
	}
	public String getSmem_id() {
		return smem_id;
	}
	public void setSmem_id(String smem_id) {
		this.smem_id = smem_id;
	}
	public java.util.Date getCard_expdate() {
		return card_expdate;
	}
	public void setCard_expdate(java.util.Date card_expdate) {
		this.card_expdate = card_expdate;
	}
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public java.util.Date getCard_birth() {
		return card_birth;
	}
	public void setCard_birth(java.util.Date card_birth) {
		this.card_birth = card_birth;
	}
	public String getCard_pwd() {
		return card_pwd;
	}
	public void setCard_pwd(String card_pwd) {
		this.card_pwd = card_pwd;
	}
	
	
	
	
}
