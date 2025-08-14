package controller.customer;

import java.io.IOException;

import DTO.CustomerDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.CustomerService;

@WebServlet("/customer/login.do")
public class LoginController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private CustomerService service = CustomerService.INSTANCE;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String cId	= req.getParameter("cId");
		String cName= req.getParameter("cName");
		CustomerDTO customerDTO = service.findForLogin(cId, cName);
		
		if(customerDTO != null) {
			HttpSession session = req.getSession();
			session.setAttribute("sessPerson", customerDTO);
			
			resp.sendRedirect("/bankP/?login=success");
		
		} else {
			resp.sendRedirect("/bankP/?login=fail");
		}
		
	}
	

}
