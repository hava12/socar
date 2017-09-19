package car.service;

public class Car_WasteDTO {
	private String car_i_code;
	private java.sql.Date car_w_date;
	private String car_w_reason;
	
	public String getCar_i_code() {
		return car_i_code;
	}
	public void setCar_i_code(String car_i_code) {
		this.car_i_code = car_i_code;
	}
	public java.sql.Date getCar_w_date() {
		return car_w_date;
	}
	public void setCar_w_date(java.sql.Date car_w_date) {
		this.car_w_date = car_w_date;
	}
	public String getCar_w_reason() {
		return car_w_reason;
	}
	public void setCar_w_reason(String car_w_reason) {
		this.car_w_reason = car_w_reason;
	}
	
	
}
