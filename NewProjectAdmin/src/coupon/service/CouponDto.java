package coupon.service;

public class CouponDto {

	private String cou_code;
	private String cou_name;
	private String cou_desc;
	private String cou_sale;
	private String cou_mintime;
	private String cou_maxtime;
	private String cou_minage;
	private String cou_minuse;
	private java.util.Date cou_exp;
	private String max_sale_per;
	private String cou_only_new;
	
	
	//효율성 위한 변수 
	
	private int cou_create_count;
	
	
	//게터 세터
	
	
	public String getCou_code() {
		return cou_code;
	}
	public int getCou_create_count() {
		return cou_create_count;
	}
	public void setCou_create_count(int cou_create_count) {
		this.cou_create_count = cou_create_count;
	}
	public void setCou_code(String cou_code) {
		this.cou_code = cou_code;
	}
	public String getCou_name() {
		return cou_name;
	}
	public void setCou_name(String cou_name) {
		this.cou_name = cou_name;
	}
	public String getCou_desc() {
		return cou_desc;
	}
	public void setCou_desc(String cou_desc) {
		this.cou_desc = cou_desc;
	}
	public String getCou_sale() {
		return cou_sale;
	}
	public void setCou_sale(String cou_sale) {
		this.cou_sale = cou_sale;
	}
	public String getCou_mintime() {
		return cou_mintime;
	}
	public void setCou_mintime(String cou_mintime) {
		this.cou_mintime = cou_mintime;
	}
	public String getCou_maxtime() {
		return cou_maxtime;
	}
	public void setCou_maxtime(String cou_maxtime) {
		this.cou_maxtime = cou_maxtime;
	}
	public String getCou_minage() {
		return cou_minage;
	}
	public void setCou_minage(String cou_minage) {
		this.cou_minage = cou_minage;
	}
	public String getCou_minuse() {
		return cou_minuse;
	}
	public void setCou_minuse(String cou_minuse) {
		this.cou_minuse = cou_minuse;
	}
	public java.util.Date getCou_exp() {
		return cou_exp;
	}
	public void setCou_exp(java.util.Date cou_exp) {
		this.cou_exp = cou_exp;
	}
	public String getMax_sale_per() {
		return max_sale_per;
	}
	public void setMax_sale_per(String max_sale_per) {
		this.max_sale_per = max_sale_per;
	}
	public String getCou_only_new() {
		return cou_only_new;
	}
	public void setCou_only_new(String cou_only_new) {
		this.cou_only_new = cou_only_new;
	}
	
	
	
	
}
