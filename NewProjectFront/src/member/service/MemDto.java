package member.service;

import org.springframework.stereotype.Component;

@Component
public class MemDto extends Simple_MemDto {
	
	private String mem_addr_num;
	private String mem_addr_fir;
	private String mem_addr_sec;
	
	private String mem_mainarea;
	private String mem_c_type;
	private String mem_c_num;
	private java.util.Date mem_c_expdate;
	private java.util.Date mem_c_idate;
	
	
	
	public String getMem_addr_num() {
		return mem_addr_num;
	}
	public void setMem_addr_num(String mem_addr_num) {
		this.mem_addr_num = mem_addr_num;
	}
	public String getMem_addr_fir() {
		return mem_addr_fir;
	}
	public void setMem_addr_fir(String mem_addr_fir) {
		this.mem_addr_fir = mem_addr_fir;
	}
	public String getMem_addr_sec() {
		return mem_addr_sec;
	}
	public void setMem_addr_sec(String mem_addr_sec) {
		this.mem_addr_sec = mem_addr_sec;
	}
	public String getMem_mainarea() {
		return mem_mainarea;
	}
	public void setMem_mainarea(String mem_mainarea) {
		this.mem_mainarea = mem_mainarea;
	}
	public String getMem_c_type() {
		return mem_c_type;
	}
	public void setMem_c_type(String mem_c_type) {
		this.mem_c_type = mem_c_type;
	}
	public String getMem_c_num() {
		return mem_c_num;
	}
	public void setMem_c_num(String mem_c_num) {
		this.mem_c_num = mem_c_num;
	}
	public java.util.Date getMem_c_expdate() {
		return mem_c_expdate;
	}
	public void setMem_c_expdate(java.util.Date mem_c_expdate) {
		this.mem_c_expdate = mem_c_expdate;
	}
	public java.util.Date getMem_c_idate() {
		return mem_c_idate;
	}
	public void setMem_c_idate(java.util.Date mem_c_idate) {
		this.mem_c_idate = mem_c_idate;
	}
	
	
	
	
	
}
