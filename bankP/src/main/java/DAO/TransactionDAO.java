package DAO;

import java.util.ArrayList;
import java.util.List;

import DTO.TransactionDTO;
import util.DBHelper;

public class TransactionDAO extends DBHelper{
	
	private static final TransactionDAO INSTANCE = new TransactionDAO();
	public static TransactionDAO getInstance() {
		return INSTANCE;
	}
	private TransactionDAO() {};
	private final String dbcp = "jdbc/bank";
	
	public List<TransactionDTO> selectAllAccount() {
		
		List<TransactionDTO> dtoList = new ArrayList<TransactionDTO>();
		
		try {
			conn = getConnection(dbcp);
			stmt = conn.createStatement();
			rs	 = stmt.executeQuery("SELECT * FROM TRANSACTION");
			
			while(rs.next()){
				TransactionDTO dto = new TransactionDTO();
				dto.settNo(rs.getInt(1));
				dto.settAcc(rs.getString(2));
				dto.settType(rs.getInt(3));
				dto.settAmount(rs.getInt(4));
				dto.settDate(rs.getString(5));
				dtoList.add(dto);
			}
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}
	
}
