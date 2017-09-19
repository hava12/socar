package zone.service;

public class ZoneDTO {
	
	private String soz_code;
	private String soz_name;
	private String soz_loc;
	private String soz_maxcar;
	private java.sql.Date soz_date;
	private String soz_latitude;
	private String soz_longitude;
	
	//효율성을 위해서 추가
	private String soz_i_car;
	
	
	
	
	public String getSoz_i_car() {
		return soz_i_car;
	}
	public void setSoz_i_car(String soz_i_car) {
		this.soz_i_car = soz_i_car;
	}
	
	public String getSoz_code() {
		return soz_code;
	}
	public void setSoz_code(String soz_code) {
		this.soz_code = soz_code;
	}
	public String getSoz_name() {
		return soz_name;
	}
	public void setSoz_name(String soz_name) {
		this.soz_name = soz_name;
	}
	public String getSoz_loc() {
		return soz_loc;
	}
	public void setSoz_loc(String soz_loc) {
		this.soz_loc = soz_loc;
	}
	public String getSoz_maxcar() {
		return soz_maxcar;
	}
	public void setSoz_maxcar(String soz_maxcar) {
		this.soz_maxcar = soz_maxcar;
	}
	public java.sql.Date getSoz_date() {
		return soz_date;
	}
	public void setSoz_date(java.sql.Date soz_date) {
		this.soz_date = soz_date;
	}
	public String getSoz_latitude() {
		return soz_latitude;
	}
	public void setSoz_latitude(String soz_latitude) {
		this.soz_latitude = soz_latitude;
	}
	public String getSoz_longitude() {
		return soz_longitude;
	}
	public void setSoz_longitude(String soz_longitude) {
		this.soz_longitude = soz_longitude;
	}
	
	
	
}
