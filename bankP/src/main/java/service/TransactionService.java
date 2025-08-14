package service;

import java.util.List;

import DAO.TransactionDAO;
import DTO.TransactionDTO;

public enum TransactionService {
	
	INSTANCE;
	
	private TransactionDAO dao = TransactionDAO.getInstance();
	
	public List<TransactionDTO> findAll() {
		return dao.selectAllAccount();
	}
	
}
