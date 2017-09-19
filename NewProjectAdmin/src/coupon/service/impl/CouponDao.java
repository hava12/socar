package coupon.service.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import coupon.service.Cou_createDto;
import coupon.service.CouponDto;
import coupon.service.CouponService;
import member.service.MemDto;

public class CouponDao implements CouponService {

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	public CouponDao(ServletContext context) {
		
		
		try {
			InitialContext ctx = new InitialContext();
			DataSource source = (DataSource) ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
		
			conn = source.getConnection();
		
		} catch (Exception e) {e.printStackTrace();}
		
		
	}/////////////////////////////////////////////////////////////////////
	
	
	@Override
	public int insertCoupon(CouponDto dto) throws Exception {
		
		String sql ="INSERT INTO COUPON VALUES('C_C_'||LPAD(COU_CODE_SEQ.NEXTVAL,10,'0'),?,?,?,?,?,?,?,?,?,?)";
		int affected = 0;
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getCou_name());
		psmt.setString(2, dto.getCou_desc());
		psmt.setString(3, dto.getCou_sale());
		psmt.setString(4, dto.getCou_mintime());
		psmt.setString(5, dto.getCou_maxtime());
		psmt.setString(6, dto.getCou_minage());
		psmt.setString(7, dto.getCou_minuse());
		
		psmt.setDate(8, new java.sql.Date(dto.getCou_exp().getTime()));
		psmt.setString(9, dto.getMax_sale_per());
		psmt.setString(10, dto.getCou_only_new());
		
		affected = psmt.executeUpdate();
		
		close();
		return affected;
	}///////////////////////////////////////////////////////////////////


	@Override
	public void close() throws Exception {
		if(rs != null){
			rs.close();
		}
		if(psmt !=null){
			psmt.close();
		}
		if(conn != null){
			conn.close();
		}
	}////////////////////////////////////////////////////////


	@Override
	public List<CouponDto> couponList(int start,int end){
		List<CouponDto> list = new Vector<CouponDto>();
		
		/*String sql = "SELECT C.*,(SELECT COUNT(*) FROM COU_CREATE WHERE COU_CODE=C.COU_CODE) FROM COUPON C "
						+ "	ORDER BY COU_CODE DESC";*/
		String sql = "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT C.*,(SELECT COUNT(*) FROM COU_CREATE WHERE COU_CODE=C.COU_CODE) FROM COUPON C ORDER BY COU_CODE DESC) T) WHERE R BETWEEN ? AND ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, start);
			psmt.setInt(2, end);
			rs = psmt.executeQuery();
			while(rs.next()) {
				CouponDto dto = new CouponDto();
				dto.setCou_code(rs.getString(1));
				dto.setCou_name(rs.getString(2));
				dto.setCou_desc(rs.getString(3));
				dto.setCou_sale(rs.getString(4));
				dto.setCou_mintime(rs.getString(5));
				dto.setCou_maxtime(rs.getString(6));
				dto.setCou_minage(rs.getString(7));
				dto.setCou_minuse(rs.getString(8));
				dto.setCou_exp(rs.getDate(9));
				dto.setMax_sale_per(rs.getString(10));
				dto.setCou_only_new(rs.getString(11));
				dto.setCou_create_count(rs.getInt(12));
				list.add(dto);			
			}		
		} catch (Exception e) {e.printStackTrace();}
	
		return list;
	}//////////////////////////////////////////////////////////

	//총 레코드 수 얻기용]
		public int getCouponTotalRecordCount(){
			int total =0;
			String sql="SELECT COUNT(*) FROM COUPON";
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {e.printStackTrace();}
			
			return total;
		}///////////////////getTotalRecordCount

	@Override
	public CouponDto selectOneCoupon(String cou_code) throws Exception {
		
		String sql = "SELECT * FROM COUPON WHERE COU_CODE=?";
		CouponDto dto = new CouponDto();
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, cou_code);
		
		rs = psmt.executeQuery();
		
		rs.next();
		
		dto.setCou_code(rs.getString(1));
		dto.setCou_name(rs.getString(2));
		dto.setCou_desc(rs.getString(3));
		dto.setCou_sale(rs.getString(4));
		dto.setCou_mintime(rs.getString(5));
		dto.setCou_maxtime(rs.getString(6));
		dto.setCou_minage(rs.getString(7));
		dto.setCou_minuse(rs.getString(8));
		dto.setCou_exp(rs.getDate(9));
		dto.setMax_sale_per(rs.getString(10));
		dto.setCou_only_new(rs.getString(11));
		
		return dto;
	}


	@Override
	public int editCoupon(CouponDto dto) throws Exception {
		
		String sql = "UPDATE COUPON SET cou_name=?,cou_desc=?,cou_sale=?,cou_mintime=?,cou_maxtime=?,cou_minage=?"
				+ 	 ",cou_minuse=?,cou_exp=?,max_sale_per=?,cou_only_new=? where cou_code=?";
		
		int affected = 0;
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getCou_name());
		psmt.setString(2, dto.getCou_desc());
		psmt.setString(3, dto.getCou_sale());
		psmt.setString(4, dto.getCou_mintime());
		psmt.setString(5, dto.getCou_maxtime());
		psmt.setString(6, dto.getCou_minage());
		psmt.setString(7, dto.getCou_minuse());
		
		psmt.setDate(8, new java.sql.Date(dto.getCou_exp().getTime()));
		psmt.setString(9, dto.getMax_sale_per());
		psmt.setString(10, dto.getCou_only_new());
		psmt.setString(11, dto.getCou_code());
		
		affected = psmt.executeUpdate();
		close();
		return affected ;
	}


	@Override
	public int createCoupon(Cou_createDto dto) throws Exception {
		
		String sql = "INSERT INTO COU_CREATE VALUES('C_CC_'||LPAD(COU_C_CODE_SEQ.NEXTVAL,10,'0'),?,SYSDATE,?,?,?)";
		
		conn.setAutoCommit(false);
		
		psmt= conn.prepareStatement(sql);
		psmt.setString(1, dto.getCou_code());
		psmt.setDate(2, new java.sql.Date(dto.getCou_c_expdate().getTime()));
		psmt.setString(3, dto.getCou_c_t_start());
		psmt.setString(4, dto.getCou_c_t_end());
		
		int count = 0;
		for(int i= 0 ; i < dto.getCou_c_count() ; i++ ) {
		psmt.executeUpdate();
		count += 1;
		}
		conn.commit();
		close();
		return count;
	}///////////////////////////////////////////////////////////////////////////////////////////////////////




	
	
	
	
	
}///////////////////////////////////////////////////////////////
