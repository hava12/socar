package reserve.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import org.springframework.stereotype.Service;

import reserve.service.CarSearchResultDTO;
import reserve.service.ZoneDTO;
import reserve.service.ZoneService;

@Service("ZoneDAO")
public class ZoneDAO implements ZoneService{
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	public ZoneDAO(ServletContext context){
		try{
			Context ctx = new InitialContext();
			DataSource source = (DataSource)ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
			conn = source.getConnection();
			System.out.println("hi");
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
	@Override
	public List<ZoneDTO> selectEveryList() throws Exception {
		String sql = "SELECT S.*,(SELECT COUNT(*) FROM CAR_ISSUE C WHERE C.SOZ_CODE=S.SOZ_CODE AND (SELECT COUNT(*) FROM CAR_WASTE CW WHERE CW.CAR_I_CODE=C.CAR_I_CODE)=0) AS COUNT FROM SO_ZONE S ORDER BY SOZ_CODE DESC";
	
		List<ZoneDTO> list = new Vector<ZoneDTO>();
		try{
			psmt = conn.prepareStatement(sql);
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

		@Override
		public List<CarSearchResultDTO> searchResult(String soz_code) throws Exception {
			System.out.println(soz_code);
			String sql= "SELECT CAR_NAME, CAR_IMG, CAR_PRICE_SO_WD, CAR_PRICE_SO_WE, CAR_DRIVE_PRICE,CAR_FUEL,CAR_TRANS,B.* FROM CAR C JOIN (SELECT CAR_I_CODE, CAR_NAME_CODE, CAR_I_SAFE_OPTION,CAR_I_ADD_OPTION,CAR_NICK, SOZ_NAME FROM CAR_ISSUE CI JOIN SO_ZONE S ON CI.SOZ_CODE = S.SOZ_CODE WHERE S.SOZ_CODE=?) B ON C.CAR_NAME_CODE = B.CAR_NAME_CODE";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, soz_code);
			rs = psmt.executeQuery();
			List<CarSearchResultDTO> car_list = new Vector<CarSearchResultDTO>();
			while(rs.next()) {
				CarSearchResultDTO dto = new CarSearchResultDTO();
				dto.setCar_name(rs.getString(1));
				dto.setCar_img(rs.getString(2));
				if(!Calendar.getInstance().getTime().toString().startsWith("S")) {
					dto.setCar_price_so(rs.getString(3));
				}
				else {
					dto.setCar_price_so(rs.getString(4));
				}
				dto.setCar_drive_price(rs.getString(5));
				dto.setCar_fuel(rs.getString(6));
				dto.setCar_trans(rs.getString(7));
				dto.setCar_i_code(rs.getString(8));
				dto.setCar_name_code(rs.getString(9));
				dto.setCar_i_safe_option(rs.getString(10));
				dto.setCar_i_add_option(rs.getString(11));
				dto.setCar_nick(rs.getString(12));
				dto.setSoz_name(rs.getString(13));
				car_list.add(dto);
			}
			System.out.println(soz_code);
			return car_list;
		}
	
}


