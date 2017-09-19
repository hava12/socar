package bbs.service.impl;

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

import bbs.service.BBSService;
import bbs.service.Not_imgDto;
import bbs.service.NoticeDto;
import bbs.service.NoticeService;
import bbs.service.RqCarDTO;
import bbs.service.RqLocDTO;

public class BbsDao implements BBSService {

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	public BbsDao(ServletContext context){
		
		try {
		InitialContext ctx = new InitialContext();
		DataSource source = (DataSource) ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
		conn = source.getConnection();
		} catch (Exception e) {e.printStackTrace();}	
	}
	
	
	
	
	@Override
	public List<NoticeDto> selectNoticeList(int start,int end){
		/*String sql="SELECT * FROM NOTICE ORDER BY NOT_NO DESC" ;*/
		
		String sql="SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM NOTICE ORDER BY NOT_NO DESC) T) WHERE R BETWEEN ? AND ?";
		List<NoticeDto> list = new Vector<NoticeDto>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, start);
			psmt.setInt(2, end);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				NoticeDto dto = new NoticeDto();
				dto.setNot_no(rs.getString(1));
				dto.setAd_id(rs.getString(2));
				dto.setNot_title(rs.getString(3));
				dto.setNot_content(rs.getString(4));
				dto.setNot_postdate(rs.getDate(5));
				list.add(dto);
			}
		} catch (Exception e) {e.printStackTrace();}
		return list;
	}




	@Override
	public void close(){
		try {
			
			if(rs !=null) rs.close();
			if(psmt !=null) psmt.close();
			if(conn !=null) conn.close();
			
		} catch (Exception e) {e.printStackTrace();}
	}/////////////////close()




	@Override
	public int insertNotice(NoticeDto dto, String[] srcs) throws Exception {
		conn.setAutoCommit(false);
		String sql = "INSERT INTO NOTICE VALUES(NOT_NO_SEQ.NEXTVAL,?,?,?,SYSDATE)";
		int affected = 0 ;
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dto.getAd_id() );
		psmt.setString(2, dto.getNot_title());
		psmt.setString(3, dto.getNot_content() );
		
		affected = psmt.executeUpdate();
		
		if(affected == 1 && srcs != null) {
				sql = "INSERT INTO NOTICE_IMG VALUES('N_I_'||(NOT_IMG_CODE_SEQ.NEXTVAL),NOT_NO_SEQ,?)";
				psmt = conn.prepareStatement(sql);
			for(String src :srcs) {
				psmt.setString(1, src);
				
				affected = psmt.executeUpdate();
				
				if(affected == 0) {
					return 0;
				}
			}
		}
		conn.commit();
		close();
		return affected;
	}


	@Override
	public NoticeDto selectNoticeOne(String no){

		NoticeDto dto = null;
		String sql="SELECT * FROM NOTICE WHERE NOT_NO=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, no);
			rs = psmt.executeQuery();
			if(rs.next()) {
			dto = new NoticeDto();
			dto.setNot_no(rs.getString(1));
			dto.setAd_id(rs.getString(2));
			dto.setNot_title(rs.getString(3));
			dto.setNot_content(rs.getString(4).replace("\r\n", "<br/>"));
			dto.setNot_postdate(rs.getDate(5));
			}
		} catch (Exception e) {e.printStackTrace();}
		return dto;
	}
	
	/*@Override
	public NoticeDto selectNoticeOne(String no) throws Exception {

		String sql="SELECT * FROM NOTICE WHERE NOT_NO=?";
		NoticeDto dto = new NoticeDto();
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, no);
		
		rs = psmt.executeQuery();
		rs.next();
		
		dto.setNot_no(rs.getString(1));
		dto.setAd_id(rs.getString(2));
		dto.setNot_title(rs.getString(3));
		dto.setNot_content(rs.getString(4).replace("\r\n", "<br/>"));
		dto.setNot_postdate(rs.getDate(5));
		close();
		return dto;
	}*/

	//삭제용
			public int delete(String no) {
				int affected=0;
				String sql="DELETE NOTICE WHERE NOT_NO=?";		
				try {
					psmt = conn.prepareStatement(sql);
					psmt.setString(1, no);			
					affected = psmt.executeUpdate();			
				} catch (SQLException e) {e.printStackTrace();}		
				return affected;
			}
	//수정용
			public int update(NoticeDto dto) {
				int affected=0;
				String sql="UPDATE NOTICE "
						+ "SET NOT_TITLE=?,NOT_CONTENT=?,WHERE NOT_NO=?";
				
				try {
					psmt = conn.prepareStatement(sql);
					psmt.setString(1, dto.getNot_title());
					psmt.setString(2, dto.getNot_content());
					psmt.setString(3, dto.getNot_no());
					affected = psmt.executeUpdate();
					
				} catch (SQLException e) {e.printStackTrace();}
				
				return affected;
			}////////////////////update
			
			//총 레코드 수 얻기용]
			public int getTotalRecordCount(){
				int total =0;
				String sql="SELECT COUNT(*) FROM NOTICE";
				try {
					psmt = conn.prepareStatement(sql);
					rs = psmt.executeQuery();
					rs.next();
					total = rs.getInt(1);
				} catch (SQLException e) {e.printStackTrace();}
				
				return total;
			}///////////////////getTotalRecordCount
			@Override
			public List<RqCarDTO> select_RqCarList() throws Exception {
				List<RqCarDTO> list = new Vector<RqCarDTO>();
				String sql = "SELECT R.*,(SELECT COUNT(*) FROM RQC_LIKE WHERE RQC_CODE=R.RQC_CODE) AS LIKE_COUNT,(SELECT COUNT(*) FROM RQC_DIS WHERE RQC_CODE=R.RQC_CODE) AS DIS_COUNT FROM RQ_CAR R ORDER BY RQC_CODE";
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				while(rs.next()){
					RqCarDTO dto = new RqCarDTO();
					dto.setRqc_code(rs.getString(1));
					dto.setRqc_content(rs.getString(2));
					dto.setRqc_loc(rs.getString(3));
					dto.setSmem_id(rs.getString(4));
					dto.setRqc_date(rs.getDate(5));
					dto.setRqc_like_count(rs.getString(6));
					dto.setRqc_dis_count(rs.getString(7));
					list.add(dto);			
				}
				return list;
			}




			@Override
			public List<RqLocDTO> select_RqLocList() throws Exception {
				List<RqLocDTO> list = new Vector<RqLocDTO>();
				String sql = "SELECT R.*,(SELECT COUNT(*) FROM RQL_LIKE WHERE RQL_CODE=R.RQL_CODE) AS LIKE_COUNT,(SELECT COUNT(*) FROM RQL_DIS WHERE RQL_CODE=R.RQL_CODE) AS DIS_COUNT FROM RQ_LOC R ORDER BY RQL_CODE";
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				while(rs.next()){
					RqLocDTO dto = new RqLocDTO();
					dto.setRql_code(rs.getString(1));
					dto.setRql_content(rs.getString(2));
					dto.setRql_loc(rs.getString(3));
					dto.setSmem_id(rs.getString(4));
					dto.setRql_date(rs.getDate(5));
					dto.setRql_like_count(rs.getString(6));
					dto.setRql_dis_count(rs.getString(7));
					list.add(dto);
				}
				
				return list;
			}




			@Override
			public int delete_RqCarList(String rqc_code) throws Exception {
				String sql ="DELETE RQ_CAR WHERE RQC_CODE=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, rqc_code);
				int affected = psmt.executeUpdate();
				return affected;
			}




			@Override
			public int delete_RqLocList(String rql_code) throws Exception {
				String sql="DELETE RQ_LOC WHERE RQL_CODE=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, rql_code);
				int affected = psmt.executeUpdate();
				return affected;
			}





	
}
