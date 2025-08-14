package controller.account;

import java.io.IOException;
import java.util.List;

import DAO.AccountDAO;
import DTO.AccountDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AccountService;

@WebServlet("/account/send.do")
public class SendController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private AccountService service = AccountService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String accNo = req.getParameter("accNo");
		List<AccountDTO> dtoList = service.findAll();
		req.setAttribute("accNo", accNo);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/account/send.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	

}
