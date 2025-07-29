<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");

	String url 		= "jdbc:oracle:thin:@localhost:1521:xe";
	String user 	= "zxy0575";
	String password = "1234";
	
	try{
		Connection conn = DriverManager.getConnection(url, user, password);
		
		String sql = "DELETE FROM USER2 WHERE USER_ID = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
	
	}catch(Exception e){
		e.printStackTrace();
	}
	response.sendRedirect("../List.jsp");



%>