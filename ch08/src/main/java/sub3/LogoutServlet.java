package sub3;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Logout.do")
public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = -1959569833935281155L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 현재 사용자 세션 가져오기
		HttpSession session = req.getSession();
		
		session.removeAttribute("sessUser");
		session.invalidate();
		
		resp.sendRedirect("/ch08/Listener.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
	}

}
