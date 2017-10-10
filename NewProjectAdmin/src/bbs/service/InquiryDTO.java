package bbs.service;



public class InquiryDTO {
	private String i_no;
	private String category;
	private String title;
	private String content;
	private String image;
	private String smem_id;
	private java.sql.Date i_date;
	
	
	
	public String getI_no() {
		return i_no;
	}
	public void setI_no(String i_no) {
		this.i_no = i_no;
	}
	public java.sql.Date getI_date() {
		return i_date;
	}
	public void setI_date(java.sql.Date i_date) {
		this.i_date = i_date;
	}
	public String getSmem_id() {
		return smem_id;
	}
	public void setSmem_id(String smem_id) {
		this.smem_id = smem_id;
	}
	public java.sql.Date getDate() {
		return i_date;
	}
	public void setDate(java.sql.Date i_date) {
		this.i_date = i_date;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
