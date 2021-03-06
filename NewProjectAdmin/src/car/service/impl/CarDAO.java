package car.service.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import car.service.CarDTO;
import car.service.CarService;
import car.service.Car_IssueDTO;
import car.service.Car_ModelDto;
import car.service.Car_WasteDTO;

public class CarDAO implements CarService {

	private java.sql.Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	public CarDAO(ServletContext context) {
		try {
			Context ctx = new InitialContext();
			DataSource source = (DataSource) ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT") + "/jdbc/socar");
			conn = source.getConnection();
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
	}///////////////////////// CarDAO()

	public List<CarDTO> selectList(Map<String, Object> map) throws Exception {
		List<CarDTO> list = new Vector();
		String sql = "";
		
		if(map==null) {
			sql="SELECT CAR_NAME_CODE,CAR_NAME FROM CAR ORDER BY CAR_NAME_CODE DESC";
		}
		else {
			
		
		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += "SELECT * FROM (";
		}

		sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM CAR ORDER BY CAR_NAME_CODE DESC) T) WHERE R BETWEEN ? AND ?";

		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += ") WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
		}
		
		}
		try {
			psmt = conn.prepareStatement(sql);
			if(map!=null) {
			psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
			psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
			
			rs = psmt.executeQuery();
			while (rs.next()) {
				CarDTO dto = new CarDTO();
				dto.setCar_name_code(rs.getString(1));
				dto.setCar_type_code(rs.getString(2));
				dto.setCar_name(rs.getString(3));
				dto.setCar_img(rs.getString(4));
				dto.setCar_desc(rs.getString(5));
				dto.setCar_land_price(rs.getString(6));
				dto.setCar_jeju_price(rs.getString(7));
				dto.setCar_price_so_wd(rs.getString(8));
				dto.setCar_price_so_we(rs.getString(9));
				dto.setCar_drive_price(rs.getString(10));
				dto.setCar_com(rs.getString(11));
				dto.setCar_fuel(rs.getString(12));
				dto.setCar_trans(rs.getString(13));
				dto.setCar_max_per(rs.getString(14));
				list.add(dto);
			}
			}
			else {
				rs = psmt.executeQuery();
				while(rs.next()) {
					CarDTO dto = new CarDTO();
					dto.setCar_name_code(rs.getString(1));
					dto.setCar_name(rs.getString(2));
					list.add(dto);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return list;

	}///////////////////////////////////////// selectList()

	// 총 레코드 수 얻기용]
	public int getCarListTotalRecordCount(Map<String, Object> map) throws Exception{
		int total = 0;
		String sql = "SELECT COUNT(*) FROM CAR";
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

		return total;
	}/////////////////// getTotalRecordCount

	public CarDTO selectOne(String car_name_code) throws Exception {
		CarDTO dto = new CarDTO();
		String sql = "SELECT * FROM CAR WHERE CAR_NAME_CODE = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, car_name_code);
			rs = psmt.executeQuery();
			while (rs.next()) {
				dto.setCar_name_code(rs.getString(1));
				dto.setCar_type_code(rs.getString(2));
				dto.setCar_name(rs.getString(3));
				dto.setCar_img(rs.getString(4));
				dto.setCar_desc(rs.getString(5));
				dto.setCar_land_price(rs.getString(6));
				dto.setCar_jeju_price(rs.getString(7));
				dto.setCar_price_so_wd(rs.getString(8));
				dto.setCar_price_so_we(rs.getString(9));
				dto.setCar_drive_price(rs.getString(10));
				dto.setCar_com(rs.getString(11));
				dto.setCar_fuel(rs.getString(12));
				dto.setCar_trans(rs.getString(13));
				dto.setCar_max_per(rs.getString(14));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return dto;
	}////////////////////// selectOne()

	public int insert(CarDTO dto) throws Exception {
		int affected = 0;
		String sql = "INSERT INTO CAR VALUES('CNC_'||LPAD(CAR_NAME_CODE_SEQ.NEXTVAL,5,'0'),?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getCar_name_code());
			psmt.setString(1, dto.getCar_type_code());
			psmt.setString(2, dto.getCar_name());
			psmt.setString(3, dto.getCar_img());
			psmt.setString(4, dto.getCar_desc());
			psmt.setString(5, dto.getCar_land_price());
			psmt.setString(6, dto.getCar_jeju_price());
			psmt.setString(7, dto.getCar_price_so_wd());
			psmt.setString(8, dto.getCar_price_so_we());
			psmt.setString(9, dto.getCar_drive_price());
			psmt.setString(10, dto.getCar_com());
			psmt.setString(11, dto.getCar_fuel());
			psmt.setString(12, dto.getCar_trans());
			psmt.setString(13, dto.getCar_max_per());

			affected = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return affected;
	}//////////////////////////// insert()

	public int edit(CarDTO dto) throws Exception {
		int affected = 0;
		String sql = "UPDATE CAR SET CAR_TYPE_CODE=?,CAR_NAME=?,CAR_IMG=?,CAR_DESC=?,CAR_LAND_PRICE=?,CAR_JEJU_PRICE=?,CAR_PRICE_SO_WD=?,CAR_PRICE_SO_WE=?,"
				+ "CAR_DRIVE_PRICE=?,CAR_COM=?,CAR_FUEL=?,CAR_TRANS=?,CAR_MAX_PER=? WHERE CAR_NAME_CODE=?";

		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getCar_type_code());
			psmt.setString(2, dto.getCar_name());
			psmt.setString(3, dto.getCar_img());
			psmt.setString(4, dto.getCar_desc());
			psmt.setString(5, dto.getCar_land_price());
			psmt.setString(6, dto.getCar_jeju_price());
			psmt.setString(7, dto.getCar_price_so_wd());
			psmt.setString(8, dto.getCar_price_so_we());
			psmt.setString(9, dto.getCar_drive_price());
			psmt.setString(10, dto.getCar_com());
			psmt.setString(11, dto.getCar_fuel());
			psmt.setString(12, dto.getCar_trans());
			psmt.setString(13, dto.getCar_max_per());
			psmt.setString(14, dto.getCar_name_code());

			affected = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return affected;

	}////////////////////////////////// edit()

	public int delete(String car_name_code) throws Exception {
		int affected = 0;
		String sql = "DELETE CAR WHERE CAR_NAME_CODE = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, car_name_code);
			affected = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return affected;
	}

	// 차량타입 리스트
	public List<Car_ModelDto> selectCar_TypeList(Map<String, Object> map) throws Exception{

		String sql = "";
		
		
		if(map==null) {
			sql="SELECT * FROM CAR_MODEL";
		}
		else {///////주석필요~~ 검색용 쿼리 추가에 똑같은 if문 두개 있음
		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += "SELECT * FROM (";
		}

		sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM CAR_MODEL) T) WHERE R BETWEEN ? AND ?";
		
		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += ") WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
		}
		
		}////////////else
				
		List<Car_ModelDto> list = new Vector<Car_ModelDto>();
		try {
			psmt = conn.prepareStatement(sql);
			if(map!=null) {			
			psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
			psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
			}
			rs = psmt.executeQuery();
			while (rs.next()) {
				Car_ModelDto dto = new Car_ModelDto();
				dto.setCar_type_code(rs.getString(1));
				dto.setCar_type(rs.getString(2));
				dto.setCar_insurance_one_hour(rs.getString(3));
				dto.setCar_insurance_one_day(rs.getString(4));
				dto.setCar_insurance_two_hour(rs.getString(5));
				dto.setCar_insurance_two_day(rs.getString(6));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}

	// 차량타입 총 레코드 수 얻기용]
	public int getCarTyTotalRecordCount(Map<String, Object> map) throws Exception{
		int total = 0;
		String sql = "SELECT COUNT(*) FROM CAR_MODEL";
		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += ") WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
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
	public void close() throws Exception {
		if (conn != null)
			conn.close();
		if (psmt != null)
			psmt.close();
		if (rs != null)
			rs.close();
	}

	@Override
	public int insert_type(Car_ModelDto dto) throws Exception {

		String sql = "INSERT INTO CAR_MODEL VALUES('C_T_'||LPAD(CAR_TYPE_CODE_SEQ.NEXTVAL,10,'0'),?,?,?,?,?)";
		psmt = conn.prepareStatement(sql);

		psmt.setString(1, dto.getCar_type());
		psmt.setString(2, dto.getCar_insurance_one_hour());
		psmt.setString(3, dto.getCar_insurance_one_day());
		psmt.setString(4, dto.getCar_insurance_two_hour());
		psmt.setString(5, dto.getCar_insurance_two_day());

		int affected = psmt.executeUpdate();
		close();
		return affected;
	}

	@Override
	public int car_issue(Car_IssueDTO dto) throws Exception {
		String sql = "INSERT INTO CAR_ISSUE VALUES('C_T_'||LPAD(CAR_I_CODE_SEQ.NEXTVAL,10,'0'),?,?,?,?,?,?,?)";
		int affected = 0;

		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getCar_name_code());
		psmt.setString(2, dto.getSoz_code());
		psmt.setDate(3, dto.getCar_i_date());
		psmt.setString(4, dto.getCar_i_num());
		psmt.setString(5, dto.getCar_i_safe_option());
		psmt.setString(6, dto.getCar_i_add_option());
		psmt.setString(7, dto.getCar_nick());
		affected = psmt.executeUpdate();
		close();
		return affected;
	}

	@Override
	public List<Car_IssueDTO> car_issue_view(String soz_code, Map<String,Object> map) throws Exception {
		List<Car_IssueDTO> list = new Vector<Car_IssueDTO>();
		
		String sql = "";
		//검색이 있는경우
		if(map!=null) {
			//검색용 쿼리 추가
			if(map.get("searchWord") !=null){
						sql +="SELECT * FROM (";
			}
			
			sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT CI.*,CA.CAR_LAND_PRICE,CA.CAR_JEJU_PRICE,CA.CAR_PRICE_SO_WD,CA.CAR_PRICE_SO_WE,"
					+ "CM.CAR_INSURANCE_ONE_HOUR,CM.CAR_INSURANCE_ONE_DAY,CM.CAR_INSURANCE_TWO_HOUR,CM.CAR_INSURANCE_TWO_DAY FROM CAR_ISSUE CI "
					+ " JOIN CAR CA ON CA.CAR_NAME_CODE=CI.CAR_NAME_CODE "
					+ " JOIN CAR_MODEL CM ON CA.CAR_TYPE_CODE=CM.CAR_TYPE_CODE "
					+ " WHERE SOZ_CODE=? AND (SELECT COUNT(*) FROM CAR_WASTE CW WHERE CW.CAR_I_CODE=CI.CAR_I_CODE)=0) T) WHERE R BETWEEN ? AND ?";
			
			//검색용 쿼리 추가
			if(map.get("searchWord") !=null){
				sql+=") WHERE "+map.get("searchColumn")+ " LIKE '%"+map.get("searchWord")+"%' ";
			}
			
		}
		else {
			sql="SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT CI.*,CA.CAR_LAND_PRICE,CA.CAR_JEJU_PRICE,CA.CAR_PRICE_SO_WD,CA.CAR_PRICE_SO_WE,CM.CAR_INSURANCE_ONE_HOUR,CM.CAR_INSURANCE_ONE_DAY,CM.CAR_INSURANCE_TWO_HOUR,CM.CAR_INSURANCE_TWO_DAY FROM CAR_ISSUE CI JOIN CAR CA ON CA.CAR_NAME_CODE=CI.CAR_NAME_CODE JOIN CAR_MODEL CM ON CA.CAR_TYPE_CODE=CM.CAR_TYPE_CODE WHERE SOZ_CODE=? AND (SELECT COUNT(*) FROM CAR_WASTE CW WHERE CW.CAR_I_CODE=CI.CAR_I_CODE)=0) T)";
		}
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, soz_code);
			if(map!=null) {
			psmt.setInt(2, Integer.parseInt(map.get("start").toString()));
			psmt.setInt(3, Integer.parseInt(map.get("end").toString()));
			}
			rs = psmt.executeQuery();
			while (rs.next()) {
				Car_IssueDTO dto = new Car_IssueDTO();
				dto.setCar_i_code(rs.getString(1));
				dto.setCar_name_code(rs.getString(2));
				dto.setSoz_code(rs.getString(3));
				dto.setCar_i_date(rs.getDate(4));
				dto.setCar_i_num(rs.getString(5));
				dto.setCar_i_safe_option(rs.getString(6));
				dto.setCar_i_add_option(rs.getString(7));
				dto.setCar_nick(rs.getString(8));
				
				dto.setCar_land_price(rs.getString(9));
				dto.setCar_jeju_price(rs.getString(10));
				dto.setCar_price_so_wd(rs.getString(11));
				dto.setCar_price_so_we(rs.getString(12));
				dto.setCar_insurance_one_hour(rs.getString(13));
				dto.setCar_insurance_one_day(rs.getString(14));
				dto.setCar_insurance_two_hour(rs.getString(15));
				dto.setCar_insurance_two_day(rs.getString(16));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		close();
		return list;
	}

	// 총 레코드 수 얻기용]
	public int getTotalRecordCount(String soz_code,Map<String,Object> map) throws Exception{
		int total = 0;
		String sql = "SELECT COUNT(*) FROM (SELECT CI.*,CA.CAR_LAND_PRICE,CA.CAR_JEJU_PRICE,CA.CAR_PRICE_SO_WD,CA.CAR_PRICE_SO_WE,"
				+ "CM.CAR_INSURANCE_ONE_HOUR,CM.CAR_INSURANCE_ONE_DAY,CM.CAR_INSURANCE_TWO_HOUR,CM.CAR_INSURANCE_TWO_DAY FROM CAR_ISSUE CI "
				+ " JOIN CAR CA ON CA.CAR_NAME_CODE=CI.CAR_NAME_CODE "
				+ " JOIN CAR_MODEL CM ON CA.CAR_TYPE_CODE=CM.CAR_TYPE_CODE "
				+ " WHERE SOZ_CODE=? AND (SELECT COUNT(*) FROM CAR_WASTE CW WHERE CW.CAR_I_CODE=CI.CAR_I_CODE)=0)";

		//검색용 쿼리 추가
		if(map.get("searchWord") !=null){
			sql+=" WHERE "+map.get("searchColumn")+ " LIKE '%"+map.get("searchWord")+"%' ";
		}
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, soz_code);
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
	public int car_waste(Car_WasteDTO dto) throws Exception {
		int affected = 0;
		String sql = "INSERT INTO CAR_WASTE VALUES(?,?,?)";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getCar_i_code());
		psmt.setDate(2, dto.getCar_w_date());
		psmt.setString(3, dto.getCar_w_reason());
		affected = psmt.executeUpdate();

		return affected;
	}

	@Override
	public List<Car_WasteDTO> car_waste_list(Map<String,Object> map) throws Exception {
		
		List<Car_WasteDTO> list = new Vector<Car_WasteDTO>();
		String sql = "";
		if (map.get("searchWord") != null) {
		sql += "SELECT * FROM (";
		}
		
		sql += "SELECT * FROM (SELECT T.*,ROWNUM R FROM (SELECT * FROM CAR_WASTE) T) WHERE R BETWEEN ? AND ?";
		
		// 검색용 쿼리 추가
		if (map.get("searchWord") != null) {
			sql += ") WHERE " + map.get("searchColumn") + " LIKE '%" + map.get("searchWord") + "%' ";
		}
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
			psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
			rs = psmt.executeQuery();
			while (rs.next()) {
				Car_WasteDTO dto = new Car_WasteDTO();
				dto.setCar_i_code(rs.getString(1));
				dto.setCar_w_date(rs.getDate(2));
				dto.setCar_w_reason(rs.getString(3));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}

	// 총 레코드 수 얻기용]
	public int getWasteTotalRecordCount(Map<String,Object> map) throws Exception{
		int total = 0;
		String sql = "SELECT COUNT(*) FROM CAR_WASTE";
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
	public Car_WasteDTO car_waste_view(String car_i_code) throws Exception {
		String sql = "SELECT * FROM CAR_WASTE WHERE CAR_I_CODE=?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, car_i_code);
		rs = psmt.executeQuery();
		Car_WasteDTO dto = new Car_WasteDTO();
		while (rs.next()) {
			dto.setCar_i_code(rs.getString(1));
			dto.setCar_w_date(rs.getDate(2));
			dto.setCar_w_reason(rs.getString(3));
		}
		close();
		return dto;
	}

}//////////////////////////
