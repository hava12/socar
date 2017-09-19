package reservation.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import reservation.service.Canc_Dto;
import reservation.service.Rent_E_Dto;
import reservation.service.Rent_S_Dto;
import reservation.service.ReserveDto;
import reservation.service.ReserveService;

public class ReserveDao implements ReserveService{

	Connection conn;
	ResultSet rs;
	PreparedStatement psmt;
	int affected;
	public ReserveDao(ServletContext context) {
		
		try {
			InitialContext ctx = new InitialContext();
			
			DataSource source = (DataSource)ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
			
			conn = source.getConnection();
		
		}
		catch (Exception e) {e.printStackTrace();}
		
		
	
	}/////////////////////////////////////////////////////////////
	
	@Override
	public List<ReserveDto> selectReserveList() throws Exception {
		
		List<ReserveDto> list = new Vector<>();
		
		String sql = "SELECT * FROM RESERVE ORDER BY RES_DATE DESC";
		
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			ReserveDto dto = new ReserveDto();
			
			dto.setRes_code(rs.getString(1));
			dto.setSmem_id(rs.getString(2));
			dto.setCar_i_code(rs.getString(3));
			dto.setCard_code(rs.getString(4));
			dto.setRes_price(rs.getString(5));
			dto.setRes_date_start(rs.getDate(6));
			dto.setRes_date_end(rs.getDate(7));
			dto.setReserve_type(rs.getString(8));
			dto.setRes_date(rs.getDate(9));
			dto.setRes_instype(rs.getString(10));
			dto.setRes_inscost(rs.getString(11));
			dto.setRes_cardkey(rs.getString(12));
			dto.setRes_article(rs.getString(13));
			dto.setMs_code(rs.getString(14));
			dto.setCou_c_code(rs.getString(15));
			dto.setSale_price(rs.getString(16));
			
			list.add(dto);
		}
		
		close();
		return list;
	}//////////////////////////////////////////////////////////////

	@Override
	public void close() throws Exception {
		if(rs!=null)rs.close();
		if(psmt!=null)psmt.close();	
		if(conn!=null)conn.close();
	}///////////////////////////////////////////////////////////////

	@Override
	public int insertReserve(ReserveDto dto) throws Exception {
		affected = 0;
		conn.setAutoCommit(false);
		if(dto.getMs_code()!=null) {
			String sql="INSERT INTO MEMBERSHIP VALUES(MS_CODE_SEQ.NEXTVAL,?,?,sysdate)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getSmem_id());
			System.out.println(dto.getSale_price());
			psmt.setString(2, "-"+dto.getSale_price());
			
			affected = psmt.executeUpdate();
				if(affected == 1) {
					sql="SELECT LAST_NUMBER-1 FROM USER_SEQUENCES WHERE SEQUENCE_NAME='MS_CODE_SEQ'";
					
					psmt = conn.prepareStatement(sql);
					rs = psmt.executeQuery();
					rs.next();
					System.out.println(rs.getString(1));
					dto.setMs_code(rs.getString(1));
					affected = 0;
				}
		}
		
		String sql="INSERT INTO RESERVE VALUES('RES_'||LPAD(RES_CODE_SEQ.NEXTVAL,10,'0'),?,?,?,?,?,?,?,SYSDATE,?,?,?,?,?,?,?)";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getSmem_id());
		psmt.setString(2, dto.getCar_i_code());
		psmt.setString(3, dto.getCard_code());
		psmt.setString(4, dto.getRes_price());
		psmt.setDate(5, new java.sql.Date(dto.getRes_date_start().getTime()));
		psmt.setDate(6, new java.sql.Date(dto.getRes_date_end().getTime()));
		psmt.setString(7, dto.getReserve_type());
		psmt.setString(8, dto.getRes_instype());
		psmt.setString(9, dto.getRes_inscost());
		psmt.setString(10, dto.getRes_cardkey());
		psmt.setString(11, dto.getRes_article());
		psmt.setString(12, dto.getMs_code());
		psmt.setString(13, dto.getCou_c_code());
		psmt.setString(14, dto.getSale_price());
		affected = psmt.executeUpdate();
		
		conn.commit();
		close();
		return affected;
	}///////////////////////////////////////////////////////////////

	@Override
	public int insertsRent_S(String[] res_codes) throws Exception {
		affected = 0;
		String sql = "INSERT INTO RENT_S VALUES(?,SYSDATE,'없음')";
		conn.setAutoCommit(false);
		
			psmt = conn.prepareStatement(sql);
		for(String res_code : res_codes) {
			psmt.setString(1, res_code);
			
			affected = psmt.executeUpdate();
			if(affected==0) {
				close();
				return affected;
			}
		}

		conn.commit();
		close();
		return affected;
	}///////////////////////////////////////////////////////////

	@Override
	public List<Rent_S_Dto> selectRent_SList() throws Exception {
		String sql="SELECT * FROM RENT_S";
		
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery();
		
		List<Rent_S_Dto> list = new Vector<Rent_S_Dto>();
		
		while(rs.next()) {
			Rent_S_Dto dto= new Rent_S_Dto();
			
			dto.setRes_code(rs.getString(1));
			dto.setRes_s_date(rs.getDate(2));
			dto.setRes_s_article(rs.getString(3));
			
			list.add(dto);
		}
		close();
		return list;
	}//////////////////////////////////////////////////////////////////

	@Override
	public int insertsCanc(String[] res_codes) throws Exception {
		conn.setAutoCommit(false);
		affected = 0;
		
		for(String res_code : res_codes) {
			String sql="INSERT INTO CANC VALUES(?,sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, res_code);
			affected = psmt.executeUpdate();
			
				if(affected==0) {
					close();
					return affected;
				}
				
			sql = "SELECT * FROM RESERVE WHERE RES_CODE=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, res_code);
				
			rs = psmt.executeQuery();
			rs.next();
				
		
				
				if(rs.getString(14)!=null){
						sql="INSERT INTO MEMBERSHIP VALUES(MS_CODE_SEQ.NEXTVAL,?,?,SYSDATE)";
						psmt = conn.prepareStatement(sql);
					
						psmt.setString(1, rs.getString(2));
						psmt.setString(2, rs.getString(16));
						
						affected = psmt.executeUpdate();
				}
				
		}
		
		conn.commit();
		close();
		return affected;
	}

	@Override
	public List<Canc_Dto> selectCancList() throws Exception {
		String sql = "SELECT * FROM CANC";
		List<Canc_Dto> list = new Vector<Canc_Dto>();
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		while(rs.next()) {
			Canc_Dto dto = new Canc_Dto();
			
			dto.setRes_code(rs.getString(1));
			dto.setCanc_price(rs.getString(2));
			
			list.add(dto);
		}
		close();
		return list;
	}/////////////////////////////////////////////////////////////

	@Override
	public int insertRent_E(Rent_E_Dto dto) throws Exception {
		affected = 0;
		String sql="INSERT INTO RENT_E VALUES(?,SYSDATE,?,?,?,?,?,?)";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getRes_code());
		psmt.setString(2, dto.getRent_e_article());
		psmt.setString(3, dto.getRent_e_km());
		psmt.setString(4, dto.getRent_e_hipass());
		psmt.setString(5, dto.getRent_e_panalty());
		psmt.setString(6, dto.getRent_e_ectprice());
		psmt.setString(7, dto.getRent_e_ectsale());
		
		affected = psmt.executeUpdate();
		close();
		return affected;
	}/////////////////////////////////////////////////////////

	@Override
	public List<Rent_E_Dto> selectRent_EList() throws Exception {
		List<Rent_E_Dto> list = new Vector<Rent_E_Dto>();
		
		String sql = "SELECT * FROM RENT_E";
		
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery();
		while(rs.next()) {
			Rent_E_Dto dto = new Rent_E_Dto();
			
			dto.setRes_code(rs.getString(1));
			dto.setRent_e_date(rs.getDate(2));
			dto.setRent_e_article(rs.getString(3));
			dto.setRent_e_km(rs.getString(4));
			dto.setRent_e_hipass(rs.getString(5));
			dto.setRent_e_panalty(rs.getString(6));
			dto.setRent_e_ectprice(rs.getString(7));
			dto.setRent_e_ectsale(rs.getString(8));
			list.add(dto);
			
		}
		
		return list;
	}

	
}
