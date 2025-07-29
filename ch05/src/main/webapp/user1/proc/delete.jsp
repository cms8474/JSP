<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%			// 저장 처리jsp
	// 전송 데이터 수신
	String user_id = request.getParameter("user_id");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");
	
	// 데이터베이스 INSERT
	// DB정보
	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "zxy0575";
	String pass = "1234";
	
	try {
		// 드라이버 로드(드라이브 못찾을 때 수동찾기)
		//Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		//SQL 실행객체 생성
		String sql = "DELETE FROM USER1 WHERE user_id = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
		
		//SQL 실행
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	response.sendRedirect("../List.jsp");
	
%>