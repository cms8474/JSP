package service;

import java.util.List;

import DAO.AccountDAO;
import DTO.AccountDTO;

public enum AccountService {
	
	INSTANCE;
	
	private AccountDAO dao = AccountDAO.getInstance();
	
	public List<AccountDTO> findAll() {
		return dao.selectAllAccount();
	}
	
	public AccountDTO findForLogin (String accNo, String accType) {
		return dao.select(accNo, accType);
	}
	
	public List<AccountDTO> findCid(String accCid) {
		return dao.select(accCid);
	}
	
	public List<AccountDTO> findNo(String accNo) {
		return dao.select(accNo);
	}

}
