package service;

import java.util.List;

import DAO.CustomerDAO;
import DTO.CustomerDTO;

public enum CustomerService {
	
	INSTANCE;
	
	private CustomerDAO dao = CustomerDAO.getInstance();
	
	public List<CustomerDTO> findAll() {
		return dao.selectAllAccount();
	}
	
	public CustomerDTO findForLogin (String cId, String cName) {
		return dao.select(cId, cName);
	}

}
