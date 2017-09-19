package admin.service;

public class DeptDto {
		
	
		private String dept_no;
		private String dept_name;
		private java.util.Date dept_regidate;
		private String dept_desc;
		
		//게터세터
		
		public String getDept_no() {
			return dept_no;
		}
		public String getDept_desc() {
			return dept_desc;
		}
		public void setDept_desc(String dept_desc) {
			this.dept_desc = dept_desc;
		}
		public void setDept_no(String dept_no) {
			this.dept_no = dept_no;
		}
		public String getDept_name() {
			return dept_name;
		}
		public void setDept_name(String dept_name) {
			this.dept_name = dept_name;
		}
		public java.util.Date getDept_regidate() {
			return dept_regidate;
		}
		public void setDept_regidate(java.util.Date dept_regidate) {
			this.dept_regidate = dept_regidate;
		}
		
		
		
}
