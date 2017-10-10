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
import java.util.Map;
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
		
		String sql ="INSERT INTO COUPON VALUES('C_C_'||LPAD(COU_CODE_SEQ.NEXTVAL,10,'0'),?,?,?,'0','0','0','0',?,'0','0','0','0')";
		int affected = 0;
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getCou_name());
		psmt.setString(2, dto.getCou_desc());
		psmt.setString(3, dto.getCou_sale());

		psmt.setDate(4, new java.sql.Date(dto.getCou_exp().getTime()));

		
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
	public List<CouponDto> couponList(Map<String, Object> map) throws Exception{
		List<CouponDto> list = new Vector<CouponDto>();
		
		String sql ="";

		if (map.get("searchWord") != null) {
			sql += "SELECT * FROM (";
		}
		
		sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT C.*,(SELECT COUNT(*) FROM COU_CREATE WHERE COU_CODE=C.COU_CODE) FROM COUPON C ORDER BY COU_CODE DESC) T) WHERE R BETWEEN ? AND ?";
		
		// 검색용 쿼리 추가
				if (map.get("searchWord") != null) {
					sql += ") WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
				}
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
			psmt.setInt(2, Integer.parseInt(map.get("end").toString()));

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
				dto.setCou_c_start(rs.getString(12));
				dto.setCou_c_start(rs.getString(13));
				dto.setCou_create_count(rs.getInt(14));
				list.add(dto);			
			}		
		} catch (Exception e) {e.printStackTrace();}
		close();
		return list;
	}//////////////////////////////////////////////////////////

	//총 레코드 수 얻기용]
		public int getCouponTotalRecordCount(Map<String, Object> map)throws Exception{
			int total =0;
			String sql="SELECT COUNT(*) FROM COUPON";
			// 검색용 쿼리 추가
			if (map.get("searchWord") != null) {
				sql += ") WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
			}
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
		dto.setCou_c_start(rs.getString(12));
		dto.setCou_c_end(rs.getString(13));
		
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
		
		String sql = "INSERT INTO COU_CREATE VALUES('C_CC_'||LPAD(COU_C_CODE_SEQ.NEXTVAL,10,'0'),?)";
		
		conn.setAutoCommit(false);
		
		psmt= conn.prepareStatement(sql);
		psmt.setString(1, dto.getCou_code());

		
		int count = 0;
		for(int i= 0 ; i < dto.getCou_c_count() ; i++ ) {
		psmt.executeUpdate();
		count += 1;
		}
		conn.commit();
		close();
		return count;
	}///////////////////////////////////////////////////////////////////////////////////////////////////////

	@Override
	public List<CouponDto> selectCouponList(String smem_id) throws Exception {
		
		String sql = "SELECT * FROM COU_ISSUE CI JOIN COU_CREATE CC ON CC.COU_C_CODE = CI.COU_C_CODE JOIN COUPON C ON C.COU_CODE=CC.COU_CODE WHERE CI.SMEM_ID=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, smem_id);
		
		List<CouponDto> list = new Vector<CouponDto>();
		
		rs = psmt.executeQuery();
		
		while(rs.next()){
			CouponDto dto = new CouponDto();
			
			dto.setCou_i_code(rs.getString(1));
			dto.setCou_c_code(rs.getString(2));
			dto.setSmem_id(rs.getString(3));
			dto.setCou_i_date(rs.getTimestamp(4));
			dto.setCou_i_e_date(rs.getTimestamp(5));
			dto.setCou_code(rs.getString(7));
			dto.setCou_name(rs.getString(9));
			dto.setCou_desc(rs.getString(10));
			dto.setCou_sale(rs.getString(11));
			dto.setCou_mintime(rs.getString(12));
			dto.setCou_maxtime(rs.getString(13));
			dto.setCou_minage(rs.getString(14));
			dto.setCou_minuse(rs.getString(15));
			dto.setCou_exp(rs.getTimestamp(16));
			dto.setMax_sale_per(rs.getString(17));
			dto.setCou_only_new(rs.getString(18));
			dto.setCou_c_start(rs.getString(19));
			dto.setCou_c_end(rs.getString(20));
			
			list.add(dto);
		}
		
		close();
		return list;
	}




	
	
	
	
	
}///////////////////////////////////////////////////////////////
