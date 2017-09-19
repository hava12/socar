package admin.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import admin.service.AdminDto;
import admin.service.AdminService;
import admin.service.DeptDto;

public class AdminDao implements AdminService{

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	int affected = 0;
	
	public AdminDao(ServletContext context) {
	
		try {
			InitialContext ctx = new InitialContext();
			DataSource source = (DataSource)ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
		
			conn = source.getConnection();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	
	
	@Override
	public int insertDept(DeptDto dto) throws Exception {
		
		String sql = "INSERT INTO DEPT VALUES(?,?,sysdate,?)";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getDept_no());
		psmt.setString(2, dto.getDept_name());
		psmt.setString(3, dto.getDept_desc());
		
		affected = psmt.executeUpdate();
		close();
		return affected;
	}

	@Override
	public List<DeptDto> selectDeptList(int start,int end){
		
		List<DeptDto> list = new Vector<DeptDto>();
		
		String sql ="SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM DEPT ORDER BY DEPT_REGIDATE DESC) T) WHERE R BETWEEN ? AND ?";
		
		try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, start);
		psmt.setInt(2, end);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			DeptDto dto = new DeptDto();
			dto.setDept_no(rs.getString(1));
			dto.setDept_name(rs.getString(2));
			dto.setDept_regidate(rs.getDate(3));
			dto.setDept_desc(rs.getString(4));
			list.add(dto);
		}
		}catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	//총 레코드 수 얻기용]
	public int getTotalRecordCount(){
		int total =0;
		String sql="SELECT COUNT(*) FROM DEPT";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			rs.next();
			total = rs.getInt(1);
		} catch (SQLException e) {e.printStackTrace();}
		
		return total;
	}///////////////////getTotalRecordCount

	
	@Override
	public void close() throws Exception {
		if(psmt != null) {
			psmt.close();
		}
		if(rs != null) {
			rs.close();
		}
		if(conn != null) {
			conn.close();
		}
	}



	@Override
	public DeptDto selectDeptOne(String dept_no) throws Exception {
		DeptDto dto = new DeptDto();
		
		String sql = "SELECT * FROM DEPT WHERE DEPT_NO=?";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dept_no);
		rs = psmt.executeQuery();
		
		rs.next();
		dto.setDept_no(rs.getString(1));
		dto.setDept_name(rs.getString(2));
		dto.setDept_regidate(rs.getDate(3));
		dto.setDept_desc(rs.getString(4));
			
		close();
		return dto;
	}



	@Override
	public int editDept(DeptDto dto) throws Exception {
		String sql = "UPDATE DEPT SET DEPT_NO=?,DEPT_NAME=?,DEPT_DESC=? WHERE DEPT_NO=?";
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dto.getDept_no());
		psmt.setString(2, dto.getDept_name());
		psmt.setString(3, dto.getDept_desc());
		
		psmt.setString(4, dto.getDept_no());
		
		affected = psmt.executeUpdate();
		
		close();
		return affected;
	}



	@Override
	public int deleteDept(String dept_no) throws Exception {
		
		String sql = "DELETE DEPT WHERE DEPT_NO=?";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dept_no);
		
		affected = psmt.executeUpdate();
		close();
		return affected;
	}



	@Override
	public int insertAdmin(AdminDto dto) throws Exception {
		
		String sql = "INSERT INTO AD VALUES(?,?,?,?,SYSDATE)";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dto.getAd_id());
		psmt.setString(2, dto.getDept_no());
		psmt.setString(3, dto.getAd_name());
		psmt.setString(4, dto.getAd_pwd());
		
		affected = psmt.executeUpdate();
		return affected;
	}



	@Override
	public List<AdminDto> selectAdminList(int start,int end){

		List<AdminDto> list = new Vector<AdminDto>();
		
		String sql="SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT A.*,D.DEPT_NAME FROM AD A JOIN DEPT D ON A.DEPT_NO=D.DEPT_NO ORDER BY AD_REGIDATE DESC) T) WHERE R BETWEEN ? AND ?";
		
		try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, start);
		psmt.setInt(2, end);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			AdminDto dto = new AdminDto();
			dto.setAd_id(rs.getString(1));
			dto.setDept_no(rs.getString(2));
			dto.setAd_name(rs.getString(3));
			dto.setAd_pwd(rs.getString(4));
			dto.setAd_regidate(rs.getDate(5));
			dto.setDept_name(rs.getString(6));
			list.add(dto);
		}
		}catch (Exception e) {e.printStackTrace();}
		return list;
	}
	
	//총 레코드 수 얻기용]
	public int getadminTotalRecordCount(){
		int total =0;
		String sql="SELECT COUNT(*) FROM (SELECT T.*,ROWNUM R FROM (SELECT A.*,D.DEPT_NAME FROM AD A JOIN DEPT D ON A.DEPT_NO=D.DEPT_NO ORDER BY AD_REGIDATE DESC) T)";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			rs.next();
			total = rs.getInt(1);
		} catch (SQLException e) {e.printStackTrace();}
		
		return total;
	}///////////////////getTotalRecordCount

	@Override
	public AdminDto selectAdminOne(String ad_id) throws Exception {
		
		AdminDto dto = new AdminDto();
		affected = 0;
		String sql = "SELECT A.*,D.DEPT_NAME FROM AD A JOIN DEPT D ON A.DEPT_NO=D.DEPT_NO WHERE AD_ID=?";
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, ad_id);
		
		rs = psmt.executeQuery();
		
		rs.next();
		
		dto.setAd_id(rs.getString(1));
		dto.setDept_no(rs.getString(2));
		dto.setAd_name(rs.getString(3));
		dto.setAd_pwd(rs.getString(4));
		dto.setAd_regidate(rs.getDate(5));
		dto.setDept_name(rs.getString(6));
		close();
		return dto;
	}



	@Override
	public int editAdmin(AdminDto dto) throws Exception {
		
		affected = 0 ;
		String sql = "UPDATE AD SET DEPT_NO=?,AD_NAME=?,AD_PWD=? WHERE AD_ID=?";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dto.getDept_no());
		psmt.setString(2, dto.getAd_name());
		psmt.setString(3, dto.getAd_pwd());
		psmt.setString(4, dto.getAd_id());
		affected = psmt.executeUpdate();
		
		close();
		return affected;
	}



	@Override
	public int deleteAdmin(String ad_id) throws Exception {
		affected = 0;
		
		String sql = "DELETE AD WHERE AD_ID=?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, ad_id);
		affected = psmt.executeUpdate();
		
		close();
		return affected;
	}

	
	
}
