package reservation.service;

public class Canc_Dto {

	
	private String res_code;
	private java.util.Date canc_date;
	
	private String canc_price;
	
	//효율성
	private String canc_point;
	private String canc_coupon;
	
	
	
	//게터 세터
	
	public String getRes_code() {
		return res_code;
	}
	public void setRes_code(String res_code) {
		this.res_code = res_code;
	}
	public java.util.Date getCanc_date() {
		return canc_date;
	}
	public void setCanc_date(java.util.Date canc_date) {
		this.canc_date = canc_date;
	}
	public String getCanc_price() {
		return canc_price;
	}
	public void setCanc_price(String canc_price) {
		this.canc_price = canc_price;
	}
	
}
