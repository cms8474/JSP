package DAO;

import java.util.ArrayList;
import java.util.List;

import DTO.CustomerDTO;
import util.DBHelper;

public class CustomerDAO extends DBHelper{
	
	private static final CustomerDAO INSTANCE = new CustomerDAO();
	public static CustomerDAO getInstance() {
		return INSTANCE;
	}
	private CustomerDAO() {};
	private final String dbcp = "jdbc/bank";
	
	public List<CustomerDTO> selectAllAccount() {
		
		List<CustomerDTO> dtoList = new ArrayList<CustomerDTO>();
		
		try {
			conn = getConnection(dbcp);
			stmt = conn.createStatement();
			rs	 = stmt.executeQuery("SELECT * FROM CUSTOMER");
			
			while(rs.next()){
				CustomerDTO dto = new CustomerDTO();
				dto.setcId(rs.getString(1));
				dto.setcName(rs.getString(2));
				dto.setcType(rs.getInt(3));
				dto.setcHp(rs.getString(4));
				dto.setcAddr(rs.getString(5));
				dtoList.add(dto);
			}
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}
	
	public CustomerDTO select (String cId, String cName) {
		CustomerDTO dto = null;
		try {
			conn = getConnection(dbcp);
			String sql = "SELECT * FROM CUSTOMER WHERE C_ID=? AND C_NAME=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cId);
			psmt.setString(2, cName);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new CustomerDTO();
				dto.setcId(rs.getString(1));
				dto.setcName(rs.getString(2));
				dto.setcType(rs.getInt(3));
				dto.setcHp(rs.getString(4));
				dto.setcAddr(rs.getString(5));
			}
			closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
}
