package reservation.service;

public class ReserveDto {
	
	private String res_code;
	private String smem_id;
	private String car_i_code;
	private String card_code;
	
	private String res_price;
	private java.util.Date res_date_start;
	private java.util.Date res_date_end;
	private String reserve_type;
	private java.util.Date res_date;
	private String res_instype;
	private String res_inscost;
	
	private String res_cardkey;
	private String res_article;
	
	private String ms_code;
	private String cou_c_code;
	
	private String sale_price;
	
	
	//효율성 위해
	
	private String status;
	private String status_color;

	
	//게터 세터

	
	
	public String getStatus() {
		return status;
	}
	public String getStatus_color() {
		return status_color;
	}
	public void setStatus_color(String status_color) {
		this.status_color = status_color;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRes_code() {
		return res_code;
	}
	public String getSale_price() {
		return sale_price;
	}
	public void setSale_price(String sale_price) {
		this.sale_price = sale_price;
	}
	public void setRes_code(String res_code) {
		this.res_code = res_code;
	}
	public String getSmem_id() {
		return smem_id;
	}
	public void setSmem_id(String smem_id) {
		this.smem_id = smem_id;
	}
	public String getCar_i_code() {
		return car_i_code;
	}
	public void setCar_i_code(String car_i_code) {
		this.car_i_code = car_i_code;
	}
	public String getCard_code() {
		return card_code;
	}
	public void setCard_code(String card_code) {
		this.card_code = card_code;
	}
	public String getRes_price() {
		return res_price;
	}
	public void setRes_price(String res_price) {
		this.res_price = res_price;
	}
	public java.util.Date getRes_date_start() {
		return res_date_start;
	}
	public void setRes_date_start(java.util.Date res_date_start) {
		this.res_date_start = res_date_start;
	}
	public java.util.Date getRes_date_end() {
		return res_date_end;
	}
	public void setRes_date_end(java.util.Date res_date_end) {
		this.res_date_end = res_date_end;
	}
	public String getReserve_type() {
		return reserve_type;
	}
	public void setReserve_type(String reserve_type) {
		this.reserve_type = reserve_type;
	}
	public java.util.Date getRes_date() {
		return res_date;
	}
	public void setRes_date(java.util.Date res_date) {
		this.res_date = res_date;
	}
	public String getRes_instype() {
		return res_instype;
	}
	public void setRes_instype(String res_instype) {
		this.res_instype = res_instype;
	}
	public String getRes_inscost() {
		return res_inscost;
	}
	public void setRes_inscost(String res_inscost) {
		this.res_inscost = res_inscost;
	}
	public String getRes_cardkey() {
		return res_cardkey;
	}
	public void setRes_cardkey(String res_cardkey) {
		this.res_cardkey = res_cardkey;
	}
	public String getRes_article() {
		return res_article;
	}
	public void setRes_article(String res_article) {
		this.res_article = res_article;
	}
	public String getMs_code() {
		return ms_code;
	}
	public void setMs_code(String ms_code) {
		this.ms_code = ms_code;
	}
	public String getCou_c_code() {
		return cou_c_code;
	}
	public void setCou_c_code(String cou_c_code) {
		this.cou_c_code = cou_c_code;
	}
	
	


	
	
}
