package zone.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import zone.service.ZoneDTO;
import zone.service.ZoneService;

public class ZoneDAO implements ZoneService{
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	public ZoneDAO(ServletContext context){
		try{
			Context ctx = new InitialContext();
			DataSource source = (DataSource)ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
			conn = source.getConnection();
		}
		catch(SQLException | NamingException e){
			e.printStackTrace();
		}
	}/////////////////////////ZoneDAO()
	
	public List<ZoneDTO> selectList(int start,int end){
		
		/*String sql = "SELECT S.*,(SELECT COUNT(*) FROM CAR_ISSUE C WHERE C.SOZ_CODE=S.SOZ_CODE AND (SELECT COUNT(*) FROM CAR_WASTE CW WHERE CW.CAR_I_CODE=C.CAR_I_CODE)=0) AS COUNT FROM SO_ZONE S ORDER BY SOZ_CODE DESC";*/
		String sql = "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT S.*,"
				+ "(SELECT COUNT(*) FROM CAR_ISSUE C WHERE C.SOZ_CODE=S.SOZ_CODE AND "
				+ "(SELECT COUNT(*) FROM CAR_WASTE CW WHERE CW.CAR_I_CODE=C.CAR_I_CODE)=0)"
				+ " AS COUNT FROM SO_ZONE S ORDER BY SOZ_CODE DESC) T) WHERE R BETWEEN ? AND ?";
		List<ZoneDTO> list = new Vector<ZoneDTO>();
		try{
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, start);
			psmt.setInt(2, end);
			rs = psmt.executeQuery();
			while(rs.next()){
				ZoneDTO dto = new ZoneDTO();
				dto.setSoz_code(rs.getString(1));
				dto.setSoz_name(rs.getString(2));
				dto.setSoz_loc(rs.getString(3));
				dto.setSoz_maxcar(rs.getString(4));
				dto.setSoz_date(rs.getDate(5));
				dto.setSoz_latitude(rs.getString(6));
				dto.setSoz_longitude(rs.getString(7));
				dto.setSoz_i_car(rs.getString(8));
				list.add(dto);
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}////////////////////////////////selectList()
	
	public int insert(ZoneDTO dto){
		String sql = "INSERT INTO SO_ZONE VALUES('SOZ_'||LPAD(SO_ZONE_SEQ.NEXTVAL,5,'0'),?,?,?,SYSDATE,?,?)";
		int affected = 0;
		try{
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getSoz_name());
		psmt.setString(2, dto.getSoz_loc());
		psmt.setString(3, dto.getSoz_maxcar());
		psmt.setString(4, dto.getSoz_latitude());
		psmt.setString(5, dto.getSoz_longitude());
		affected = psmt.executeUpdate();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		
		return affected;
	}////////////////////////insert()
	
	public ZoneDTO selectOne(String soz_code){
		String sql = "SELECT S.*,(SELECT COUNT(*) FROM CAR_ISSUE C WHERE C.SOZ_CODE=S.SOZ_CODE AND (SELECT COUNT(*) FROM CAR_WASTE CW WHERE CW.CAR_I_CODE=C.CAR_I_CODE)=0) AS COUNT FROM SO_ZONE S WHERE SOZ_CODE=?";
		ZoneDTO dto= null;
		try{
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, soz_code);
			rs = psmt.executeQuery();
			while(rs.next()){
				dto = new ZoneDTO();
				dto.setSoz_code(rs.getString(1));
				dto.setSoz_name(rs.getString(2));
				dto.setSoz_loc(rs.getString(3));
				dto.setSoz_maxcar(rs.getString(4));
				dto.setSoz_date(rs.getDate(5));
				dto.setSoz_latitude(rs.getString(6));
				dto.setSoz_longitude(rs.getString(7));
				dto.setSoz_i_car(rs.getString(8));
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return dto;
	}
	
	public int delete(String soz_code){
		int affected=0;
		String sql="DELETE SO_ZONE WHERE SOZ_CODE = ?";
		try{
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, soz_code);
			affected = psmt.executeUpdate();
		}
		catch(SQLException e){
			e.printStackTrace();
		}	
		return affected;
	}//////////////////////////////delete()
	
	public int edit(ZoneDTO dto){
		int affected = 0;
		System.out.println(dto.getSoz_name());
		System.out.println(dto.getSoz_loc());
		System.out.println(dto.getSoz_maxcar());
		System.out.println(dto.getSoz_latitude());
		System.out.println(dto.getSoz_longitude());
		System.out.println(dto.getSoz_code());
		
		String sql = "UPDATE SO_ZONE SET SOZ_NAME=?,SOZ_LOC=?,SOZ_MAXCAR=?,SOZ_LATITUDE=?,SOZ_LONGITUDE=? WHERE SOZ_CODE=?";
		try{
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getSoz_name());
			psmt.setString(2, dto.getSoz_loc());
			psmt.setString(3, dto.getSoz_maxcar());
			psmt.setString(4, dto.getSoz_latitude());
			psmt.setString(5, dto.getSoz_longitude());
			psmt.setString(6, dto.getSoz_code());
			affected = psmt.executeUpdate();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return affected;
	}

	@Override
	public void close() throws Exception {
		if(conn!=null) conn.close();
		if(psmt!=null) psmt.close();
		if(rs!=null) rs.close();
	}
	
	//총 레코드 수 얻기용]
		public int getTotalRecordCount(){
			int total =0;
			String sql="SELECT COUNT(*) FROM SO_ZONE";
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {e.printStackTrace();}
			
			return total;
		}///////////////////getTotalRecordCount
	
}
