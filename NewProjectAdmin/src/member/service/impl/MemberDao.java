package member.service.impl;

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

	@Override
	public List<SimpleMemDto> selectSimpleMemlist(int start,int end){
		/*String sql = "SELECT * FROM SIMPLE_MEM S WHERE NOT (SELECT COUNT(*) FROM MEM M WHERE M.SMEM_ID=S.SMEM_ID)=1";*/
		String sql = "SELECT * FROM (SELECT T.*,ROWNUM R FROM "
				+ "(SELECT * FROM SIMPLE_MEM S WHERE NOT "
				+ "(SELECT COUNT(*) FROM MEM M WHERE M.SMEM_ID=S.SMEM_ID)=1) T) "
				+ "WHERE R BETWEEN ? AND ?";
		
		List<SimpleMemDto> list = new Vector<SimpleMemDto>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, start);
			psmt.setInt(2, end);
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
		
		return list;
	}/////////////////////////////////////////////////////////////
	
	//총 레코드 수 얻기용] 기본 회원관리
		public int getMemTotalRecordCount(){
			int total =0;
			String sql="SELECT COUNT(*) FROM SIMPLE_MEM";
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {e.printStackTrace();}
			
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

	@Override
	public List<MemDto> selectMemList(int start,int end){
		List<MemDto> list = new Vector<MemDto>();
		/*String sql = "SELECT * FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID ";*/
		String sql = "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID) T) WHERE R BETWEEN ? AND ?";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				MemDto dto = new MemDto();
				dto.setSmem_id(rs.getString(1));
				dto.setMem_addr(rs.getString(2));
				dto.setMem_mainarea(rs.getString(3));
				dto.setMem_birth(rs.getString(4));
				dto.setMem_gender(rs.getString(5));
				dto.setMem_date(rs.getDate(6));
				dto.setMem_c_type(rs.getString(7));
				dto.setMem_c_num(rs.getString(8));
				dto.setMem_c_expdate(rs.getDate(9));
				dto.setMem_c_idate(rs.getDate(10));
				dto.setSmem_name(rs.getString(12));
				dto.setSmem_tel(rs.getString(13));
				dto.setSmem_pwd(rs.getString(14));
				dto.setSmem_date(rs.getString(15));
				list.add(dto);
			}
			} catch (Exception e) {e.printStackTrace();
			}
			return list;
	}////////////////////////////////////////////////////////////////////////

	//총 레코드 수 얻기용] SO회원관리
			public int getSOTotalRecordCount(){
				int total =0;
				String sql="SELECT COUNT(*) FROM MEM";
				try {
					psmt = conn.prepareStatement(sql);
					rs = psmt.executeQuery();
					rs.next();
					total = rs.getInt(1);
				} catch (SQLException e) {e.printStackTrace();}
				
				return total;
			}///////////////////getTotalRecordCount
	
	
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
		dto.setMem_addr(rs.getString(2));
		dto.setMem_mainarea(rs.getString(3));
		dto.setMem_birth(rs.getString(4));
		dto.setMem_gender(rs.getString(5));
		dto.setMem_date(rs.getDate(6));
		dto.setMem_c_type(rs.getString(7));
		dto.setMem_c_num(rs.getString(8));
		dto.setMem_c_expdate(rs.getDate(9));
		dto.setMem_c_idate(rs.getDate(10));
		dto.setSmem_name(rs.getString(12));
		dto.setSmem_tel(rs.getString(13));
		dto.setSmem_pwd(rs.getString(14));
		dto.setSmem_date(rs.getString(15));
		dto.setMs_change(rs.getInt(16));
		
		close();
		
		return dto;
	}////////////////////////////////////////////////////////////////

	
	@Override
	public List<MembershipDto> selectMembershipList(int start,int end){
		//String sql = "SELECT * FROM MEMBERSHIP ORDER BY MS_DATE DESC";
		String sql = "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM MEMBERSHIP ORDER BY MS_DATE DESC) T) WHERE R BETWEEN ? AND ?";
		List<MembershipDto> list = new Vector<MembershipDto>();
		try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, start);
		psmt.setInt(2, end);
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
		return list;
	}
	
	//총 레코드 수 얻기용]
		public int getShipTotalRecordCount(){
			int total =0;
			String sql="SELECT COUNT(*) FROM MEMBERSHIP";
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {e.printStackTrace();}
			
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
	public int updateMem(String smem_id, String smem_pwd ,String mem_addr) throws Exception {
		
		conn.setAutoCommit(false);
		
		System.out.println(smem_id);
		System.out.println(smem_pwd);
		System.out.println(mem_addr);
		
		String sql = "UPDATE SIMPLE_MEM SET SMEM_PWD=? WHERE SMEM_ID=?";
		int affected=0;
		psmt=conn.prepareStatement(sql);
		psmt.setString(1, smem_pwd);
		psmt.setString(2, smem_id );
		affected = psmt.executeUpdate();
		
		if(affected == 1){
			sql = "UPDATE MEM SET MEM_ADDR=? WHERE SMEM_ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mem_addr);
			psmt.setString(2, smem_id);
			affected = psmt.executeUpdate();
		}
		conn.commit();
		close();
		
		return affected;
	}//////////////////////////////////////////////멤버 정보 변경

	@Override
	public List<CardDto> selectCardList(String smem_id,int start,int end){
		
		List<CardDto> list = new Vector<CardDto>();
		String sql="SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM CARD ";
		
		if(smem_id!=null){
			sql += " WHERE SMEM_ID='"+smem_id+"' ";
		}
		sql += "ORDER BY CARD_CREATEDATE DESC) T) WHERE R BETWEEN ? AND ?";
		
		try {
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, start);
		psmt.setInt(2, end);
		rs = psmt.executeQuery();
		while(rs.next()){
			CardDto dto = new CardDto();
			dto.setCard_code(rs.getString(1));
			dto.setSmem_id(rs.getString(2));
			dto.setCard_expdate(rs.getDate(3));
			dto.setCard_type(rs.getString(4));
			dto.setCard_birth(rs.getDate(5));
			dto.setCard_pwd(rs.getString(6));
			dto.setCard_createdate(rs.getDate(7));
			list.add(dto);
		}
		}catch (Exception e) {e.printStackTrace();}
		
		return list;
	}//////////////////selectCardList();

	//총 레코드 수 얻기용]
		public int getCardTotalRecordCount(){
			int total =0;
			String sql="SELECT COUNT(*) FROM CARD";
			try {
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				rs.next();
				total = rs.getInt(1);
			} catch (SQLException e) {e.printStackTrace();}
			
			return total;
		}///////////////////getTotalRecordCount
	
	
	@Override
	public List<MemDto> searchCardList(String mem, String where) throws Exception {
		String sql= "SELECT * FROM MEM M JOIN SIMPLE_MEM S ON M.SMEM_ID = S.SMEM_ID WHERE S."+where+"='"+mem+"'";
		
		List<MemDto> list = new Vector<MemDto>();
		
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			
			MemDto dto = new MemDto();
			dto.setSmem_id(rs.getString(1));
			dto.setMem_addr(rs.getString(2));
			dto.setMem_mainarea(rs.getString(3));
			dto.setMem_birth(rs.getString(4));
			dto.setMem_gender(rs.getString(5));
			dto.setMem_date(rs.getDate(6));
			dto.setMem_c_type(rs.getString(7));
			dto.setMem_c_num(rs.getString(8));
			dto.setMem_c_expdate(rs.getDate(9));
			dto.setMem_c_idate(rs.getDate(10));
			dto.setSmem_name(rs.getString(12));
			dto.setSmem_tel(rs.getString(13));
			dto.setSmem_pwd(rs.getString(14));
			dto.setSmem_date(rs.getString(15));
			list.add(dto);
		}
		
		return list;
	}

	@Override
	public int insertCard(CardDto dto) throws Exception {
		
		int affected = 0;
		String sql = "INSERT INTO CARD VALUES(?,?,?,?,?,?,SYSDATE)";

		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dto.getCard_code());
		psmt.setString(2, dto.getSmem_id());
		psmt.setDate(3, new java.sql.Date(dto.getCard_expdate().getTime()));
		psmt.setString(4, dto.getCard_type());
		psmt.setDate(5, new java.sql.Date(dto.getCard_birth().getTime()));
		psmt.setString(6, dto.getCard_pwd());
		
		affected = psmt.executeUpdate();
		
		
		return affected;
	}


	
	
	
	
	
	
}
