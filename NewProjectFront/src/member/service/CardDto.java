package member.service;

public class CardDto {
		
	
	
	private String card_code;
	private String smem_id;
	private java.util.Date card_expdate;
	private String card_type;
	private String card_birth;
	private String card_pwd;
	private String card_c_num;
	private String card_default;
	private java.util.Date card_create_date;
	
	
	
	
	
	
	//게터세터
	
	
	public String getCard_c_num() {
		return card_c_num;
	}
	public void setCard_c_num(String card_c_num) {
		this.card_c_num = card_c_num;
	}
	public String getCard_default() {
		return card_default;
	}
	public void setCard_default(String card_default) {
		this.card_default = card_default;
	}

	public String getCard_code() {
		return card_code;
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
	public String getCard_birth() {
		return card_birth;
	}
	public void setCard_birth(String card_birth) {
		this.card_birth = card_birth;
	}
	public String getCard_pwd() {
		return card_pwd;
	}
	public void setCard_pwd(String card_pwd) {
		this.card_pwd = card_pwd;
	}
	public java.util.Date getCard_create_date() {
		return card_create_date;
	}
	public void setCard_create_date(java.util.Date card_create_date) {
		this.card_create_date = card_create_date;
	}

	
	
}
