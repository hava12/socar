package member.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import member.service.AdDto;
import member.service.CardDto;
import member.service.MemDto;
import member.service.MemberService;
import member.service.MembershipDto;
import member.service.SimpleMemDto;

public class MemberDao implements MemberService {

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	public MemberDao(ServletContext context) {
		try {
			InitialContext ctx = new InitialContext();
			DataSource source = (DataSource) ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
			
			conn = source.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}////////////////////////////////////////////////////////////
	
	@Override
	public int login(AdDto dto) throws Exception {
		
		String sql = "SELECT * FROM AD WHERE AD_ID=? AND AD_PWD=?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getAd_id());
		psmt.setString(2, dto.getAd_pwd());
		
		int affected = psmt.executeUpdate();
		
		close();
		
		return affected;
	}///////////////////////////////////////////////////////////

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
		
	}///////////////////////////////////////////////////////

	//기본 회원관리 리스트
	@Override
	public List<SimpleMemDto> selectSimpleMemlist(Map<String,Object> map) throws Exception{
		/*String sql = "SELECT * FROM SIMPLE_MEM S WHERE NOT (SELECT COUNT(*) FROM MEM M WHERE M.SMEM_ID=S.SMEM_ID)=1";*/
		String sql = "SELECT * FROM(SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT"
				+ " * FROM SIMPLE_MEM S WHERE NOT (SELECT COUNT(*) FROM MEM M WHERE "
				+ "M.SMEM_ID=S.SMEM_ID)=1) T) WHERE R BETWEEN ? AND ?)";
		
		//검색용 쿼리 추가
		if(map.get("searchWord") !=null){
			sql+=" WHERE "+map.get("searchColumn")+ " LIKE '%"+map.get("searchWord")+"%' ";
		}
		
		List<SimpleMemDto> list = new Vector<SimpleMemDto>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
			psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
			rs = psmt.executeQuery();
			while(rs.next()){
				SimpleMemDto dto = new SimpleMemDto();
				dto.setSmem_id(rs.getString(1));
				dto.setSmem_name(rs.getString(2));
				dto.setSmem_tel(rs.getString(3));
				dto.setSmem_pwd(rs.getString(4));
				dto.setSmem_date(rs.getDate(5));			
				list.add(dto);
			}
		} catch (Exception e) {e.printStackTrace();}
		close();
		return list;
	}/////////////////////////////////////////////////////////////
	
	//총 레코드 수 얻기용] 기본 회원관리
		public int getMemTotalRecordCount(Map<String,Object> map) throws Exception{
			int total =0;
			/*String sql="SELECT COUNT(*) FROM SIMPLE_MEM";*/
			String sql="SELECT COUNT(*) FROM (SELECT * FROM SIMPLE_MEM S WHERE NOT(SELECT COUNT(*) FROM MEM M WHERE M.SMEM_ID=S.SMEM_ID)=1)";
			
			//검색용 쿼리 추가
			if(map.get("searchWord") !=null){
				sql+=" WHERE "+map.get("searchColumn")+ " LIKE '%"+map.get("searchWord")+"%' ";
			}
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {e.printStackTrace();}
			close();
			return total;
		}///////////////////getTotalRecordCount
	
	@Override
	public SimpleMemDto selectSimpleMemOne(String smem_id) throws Exception {
		
		SimpleMemDto dto = new SimpleMemDto();
		
		String sql = "SELECT * FROM SIMPLE_MEM WHERE SMEM_ID=?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,smem_id);
			
		rs = psmt.executeQuery();
		
		rs.next();
		
		dto.setSmem_id(rs.getString(1));
		dto.setSmem_name(rs.getString(2));
		dto.setSmem_tel(rs.getString(3));
		dto.setSmem_pwd(rs.getString(4));
		dto.setSmem_date(rs.getDate(5));
		
		close();
		
		return dto;
	}//////////////////////////////////////////////////////////////////////

	// so회원관리리스트
	@Override
	public List<MemDto> selectMemList(Map<String, Object> map) throws Exception {
		List<MemDto> list = new Vector<MemDto>();
		String sql = "";
		if (map.get("searchWord") != null) {
		sql += "SELECT * FROM (";
		}
		// String sql = "SELECT * FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID";
		
		sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT M.*,SMEM_NAME,SMEM_TEL,SMEM_PWD,SMEM_DATE FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID) T) WHERE R BETWEEN ? AND ?";

		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += " )WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
		}

		try {
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
			psmt.setInt(2, Integer.parseInt(map.get("end").toString()));

			rs = psmt.executeQuery();
			while (rs.next()) {
				MemDto dto = new MemDto();
				dto.setSmem_id(rs.getString(1));
				dto.setMem_addr_num(rs.getString(2));
				dto.setMem_addr_fir(rs.getString(3));
				dto.setMem_addr_sec(rs.getString(4));
				dto.setMem_mainarea(rs.getString(5));
				dto.setMem_c_type(rs.getString(6));
				dto.setMem_c_num(rs.getString(7));
				dto.setMem_c_expdate(rs.getDate(8));
				dto.setMem_c_idate(rs.getDate(9));
				dto.setMem_gender(rs.getString(10));
				dto.setSmem_name(rs.getString(11));
				dto.setSmem_tel(rs.getString(12));
				dto.setSmem_pwd(rs.getString(13));
				dto.setSmem_date(rs.getString(14));
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}////////////////////////////////////////////////////////////////////////

	// 총 레코드 수 얻기용] SO회원관리
		public int getSOTotalRecordCount(Map<String, Object> map) throws Exception{
			int total = 0;
			String sql = "SELECT COUNT(*) FROM (SELECT M.*,SMEM_NAME,SMEM_TEL,SMEM_PWD,SMEM_DATE FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID)";
			// 검색용 쿼리 추가
			if (map.get("searchWord") != null) {
				sql += " WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
			}

			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			close();
			return total;
		}/////////////////// getTotalRecordCount
	
	@Override
	public MemDto selectMemOne(String smem_id) throws Exception {
		
		String sql = "SELECT M.*,S.*,(SELECT SUM(MS_CHANGE) FROM MEMBERSHIP WHERE SMEM_ID=?) FROM MEM M "
				+ " JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID"
				+ " WHERE M.SMEM_ID=?";
		
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, smem_id);
		psmt.setString(2, smem_id);
		
		rs = psmt.executeQuery();
		rs.next();
		
		MemDto dto = new MemDto();
		
		dto.setSmem_id(rs.getString(1));
		dto.setMem_addr_num(rs.getString(2));
		dto.setMem_addr_fir(rs.getString(3));
		dto.setMem_addr_sec(rs.getString(4));
		dto.setMem_mainarea(rs.getString(5));
		dto.setMem_c_type(rs.getString(6));
		dto.setMem_c_num(rs.getString(7));
		dto.setMem_c_expdate(rs.getDate(8));
		dto.setMem_c_idate(rs.getDate(9));
		dto.setMem_gender(rs.getString(10));
		dto.setSmem_name(rs.getString(12));
		dto.setSmem_tel(rs.getString(13));
		dto.setSmem_pwd(rs.getString(14));
		dto.setSmem_date(rs.getString(15));
		dto.setMs_change(rs.getInt(17));
		
		close();
		
		return dto;
	}////////////////////////////////////////////////////////////////

	
	@Override
	public List<MembershipDto> selectMembershipList(Map<String,Object> map) throws Exception{
		String sql ="";
				if (map.get("searchWord") != null) {
				sql += "SELECT * FROM (";
				}
		
		sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM MEMBERSHIP ORDER BY MS_DATE DESC) T) WHERE R BETWEEN ? AND ?";
		
		// 검색용 쿼리 추가
				if (map.get("searchWord") != null) {
					sql += ") WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
				}
		
		List<MembershipDto> list = new Vector<MembershipDto>();
		try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
		psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
		rs = psmt.executeQuery();
		while(rs.next()){
			MembershipDto dto = new MembershipDto();
			dto.setMs_code(rs.getString(1));
			dto.setSmem_id(rs.getString(2));
			dto.setMs_change(rs.getString(3));
			dto.setMs_date(rs.getDate(4));
			list.add(dto);
		}
		}catch (Exception e) {e.printStackTrace();}
		close();
		return list;
	}
	
	//총 레코드 수 얻기용]
		public int getShipTotalRecordCount(Map<String,Object> map)throws Exception{
			int total =0;
			String sql="SELECT COUNT(*) FROM MEMBERSHIP";
			// 검색용 쿼리 추가
			if (map.get("searchWord") != null) {
				sql += " WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
			}
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {e.printStackTrace();}
			close();
			return total;
		}///////////////////getTotalRecordCount
	
	@Override
	public int insertPoint(String smem_id, int point) throws Exception {
		
		int affected = 0;
		
		String sql="INSERT INTO MEMBERSHIP VALUES(MS_CODE_SEQ.NEXTVAL,?,?,sysdate)";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, smem_id);
		psmt.setInt(2, point);
		
		affected = psmt.executeUpdate();
		
		close();
		
		return affected;
	}//////////////////////////////////////////////////////////////////////

	@Override
	public int updateSmemPwd(String smem_id, String smem_pwd) throws Exception {

		String sql="UPDATE SIMPLE_MEM SET SMEM_PWD=? WHERE SMEM_ID=?";
		int affected = 0 ;
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, smem_pwd);
		psmt.setString(2, smem_id);
		
		affected = psmt.executeUpdate();
		
		close();
		
		return affected;
	}/////////////////////////////////////////////////////////////////////

	@Override
	public int updateMem(String smem_id, String smem_pwd ,String mem_addr_num,String mem_addr_fir,String mem_addr_sec) throws Exception {
		
		conn.setAutoCommit(false);
		
		
		
		String sql = "UPDATE SIMPLE_MEM SET SMEM_PWD=? WHERE SMEM_ID=?";
		int affected=0;
		psmt=conn.prepareStatement(sql);
		psmt.setString(1, smem_pwd);
		psmt.setString(2, smem_id );
		affected = psmt.executeUpdate();
		
		if(affected == 1){
			sql = "UPDATE MEM SET MEM_ADDR_NUM=?, MEM_ADDR_FIR=?,MEM_ADDR_SEC=? WHERE SMEM_ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mem_addr_num);
			psmt.setString(2, mem_addr_fir);
			psmt.setString(3, mem_addr_sec);
			psmt.setString(4, smem_id);
			affected = psmt.executeUpdate();
		}
		conn.commit();
		close();
		
		return affected;
	}//////////////////////////////////////////////멤버 정보 변경

	@Override
	public List<CardDto> selectCardList(String smem_id,Map<String,Object> map) throws Exception {
		
		List<CardDto> list = new Vector<CardDto>();
		String sql = "";
		
		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += "SELECT * FROM (";
		}
		
		sql +="SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM CARD ";
		
		if(smem_id!=null){
			sql += " WHERE SMEM_ID='"+smem_id+"' ";
		}
		sql += "ORDER BY CARD_EXPDATE DESC) T) WHERE R BETWEEN ? AND ?";
		
		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += ") WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
		}
		
		try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
		psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
		rs = psmt.executeQuery();
		while(rs.next()){
			CardDto dto = new CardDto();
			dto.setCard_code(rs.getString(1));
			dto.setSmem_id(rs.getString(2));
			dto.setCard_expdate(rs.getDate(3));
			System.out.println(dto.getCard_expdate());
			dto.setCard_type(rs.getString(4));
			dto.setCard_birth(rs.getString(5));
			dto.setCard_pwd(rs.getString(6));
			dto.setCard_c_num(rs.getString(7));
			
			list.add(dto);
		}
		}catch (Exception e) {e.printStackTrace();}
		close();
		return list;
	}//////////////////selectCardList();

	//총 레코드 수 얻기용]
		public int getCardTotalRecordCount(Map<String,Object> map) throws Exception{
			int total =0;
			String sql="SELECT COUNT(*) FROM CARD";
			// 검색용 쿼리 추가
			if (map.get("searchWord") != null) {
				sql += " WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
			}
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {e.printStackTrace();}
			close();
			return total;
		}///////////////////getTotalRecordCount
	
	
	@Override
	public List<MemDto> searchMemberList(String mem, String where,Map<String,Object> map) throws Exception {
		//원래 sql문
		/*sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID WHERE S."+where+"='"+mem+"') T) WHERE R BETWEEN ? AND ? ";*/
		String sql = "";
		if (map.get("searchWord") != null) {
			sql +="SELECT * FROM (";
		}
		//so회원관리 sql문
		/*sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT M.*,SMEM_NAME,SMEM_TEL,SMEM_PWD,SMEM_DATE FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID) T) WHERE R BETWEEN ? AND ?";*/
		sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT M.*,SMEM_NAME,SMEM_TEL,SMEM_PWD,SMEM_DATE FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID WHERE S."+where+" like '%"+mem+"%') T) WHERE R BETWEEN ? AND ?";
		
		List<MemDto> list = new Vector<>();
		try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
		psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
		rs = psmt.executeQuery();
		
		
		while(rs.next()) {
			MemDto dto = new MemDto();
			dto.setSmem_id(rs.getString(1));
			dto.setMem_addr_num(rs.getString(2));
			dto.setMem_addr_fir(rs.getString(3));
			dto.setMem_addr_sec(rs.getString(4));
			dto.setMem_mainarea(rs.getString(5));
			dto.setMem_c_type(rs.getString(6));
			dto.setMem_c_num(rs.getString(7));
			dto.setMem_c_expdate(rs.getDate(8));
			dto.setMem_c_idate(rs.getDate(9));
			/*dto.setMem_gender(rs.getString(10));*/
			dto.setSmem_name(rs.getString(11));
			dto.setSmem_tel(rs.getString(12));
			dto.setSmem_pwd(rs.getString(13));
			dto.setSmem_date(rs.getString(14));
			list.add(dto);
		}
			
		}catch (Exception e) {e.printStackTrace();
		}
		close();
		return list;
	}

	@Override
	public int insertCard(CardDto dto) throws Exception {
		
		int affected = 0;
		String sql = "INSERT INTO CARD VALUES(?,?,?,?,?,?,?,'n',SYSDATE)";

		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dto.getCard_code());
		psmt.setString(2, dto.getSmem_id());
		psmt.setDate(3, new java.sql.Date(dto.getCard_expdate().getTime()));
		psmt.setString(4, dto.getCard_type());
		psmt.setString(5, dto.getCard_birth());
		psmt.setString(6, dto.getCard_pwd());
		psmt.setString(7, dto.getCard_c_num());
		affected = psmt.executeUpdate();
		
		close();
		return affected;
	}


	
	
	
	
	
	
}
