package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/greeting.do")
public class GreetingController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		 * View forward
		 * - JSP파일에 직접 요청 방지하기위해 WEB-INF 하위에 view페이지 생성
		 * - JSP페이지로 컨트롤로의 리퀘스트와 리스폰 객체 공유
		 */
		RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/views/greeting.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
	

}
