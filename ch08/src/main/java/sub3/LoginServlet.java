package sub3;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login.do")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = -1959569833935281155L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		// 사용자 a101이고 비번이 1234라고 가정
		if(id.equals("a101") && pw.equals("1234")) {
			// 현 사용자 세션 가져오기(JSP가 아니라서 JSP'SESSION 사용 불가)
			HttpSession session = req.getSession();
			
			// 로그인 세션 처리(세션 리스너 이밴트 발생)
			session.setAttribute("sessUser", id);
			
			// 이동
			resp.sendRedirect("/ch08/Listener.jsp");
			
		}else {
			// 이동
			resp.sendRedirect("/ch08/Listener.jsp");
			
		}
	}

}
