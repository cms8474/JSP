package DAO;

import java.util.ArrayList;
import java.util.List;

import DTO.AccountDTO;
import util.DBHelper;

public class AccountDAO extends DBHelper{
	
	private static final AccountDAO INSTANCE = new AccountDAO();
	public static AccountDAO getInstance() {
		return INSTANCE;
	}
	private AccountDAO() {};
	private final String dbcp = "jdbc/bank";
	
	public List<AccountDTO> selectAllAccount() {
		
		List<AccountDTO> dtoList = new ArrayList<AccountDTO>();
		
		try {
			conn = getConnection(dbcp);
			stmt = conn.createStatement();
			rs	 = stmt.executeQuery("SELECT * FROM ACCOUNT");
			//String sql = "SELECT * FROM ACCOUNT WHERE ACC_CID=?";
			//psmt = conn.prepareStatement(sql);
			//psmt.setString(1, accCid);
			//rs = psmt.executeQuery();
			
			while(rs.next()){
				AccountDTO dto = new AccountDTO();
				dto.setAccNo(rs.getString(1));
				dto.setAccType(rs.getString(2));
				dto.setAccName(rs.getString(3));
				dto.setAccCid(rs.getString(4));
				dto.setAccBalance(rs.getInt(5));
				dto.setAccDate(rs.getString(6));
				dtoList.add(dto);
			}
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}
	
	public AccountDTO select (String accNo, String accType) {
		AccountDTO dto = null;
		try {
			conn = getConnection(dbcp);
			String sql = "SELECT * FROM ACCOUNT WHERE ACC_NO=? AND ACC_TYPE=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, accNo);
			psmt.setString(2, accType);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new AccountDTO();
				dto.setAccNo(rs.getString(1));
				dto.setAccType(rs.getString(2));
				dto.setAccName(rs.getString(3));
				dto.setAccCid(rs.getString(4));
				dto.setAccBalance(rs.getInt(5));
				dto.setAccDate(rs.getString(6));
			}
			closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public List<AccountDTO> select (String accCid) {
		List<AccountDTO> dtoList = new ArrayList<AccountDTO>();
		try {
			conn = getConnection(dbcp);
			String sql = "SELECT * FROM ACCOUNT WHERE ACC_CID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, accCid);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				AccountDTO dto = new AccountDTO();
				dto.setAccNo(rs.getString(1));
				dto.setAccType(rs.getString(2));
				dto.setAccName(rs.getString(3));
				dto.setAccCid(rs.getString(4));
				dto.setAccBalance(rs.getInt(5));
				dto.setAccDate(rs.getString(6));
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}
}
