<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "zxy0575";
	String password = "1234";
	
	
	try{
		Connection conn = DriverManager.getConnection(url, user, password);
		
		String sql = "UPDATE USER2 SET NAME = ?, HP = ?, AGE = ? WHERE USER_ID = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, name);
		psmt.setString(2, hp);
		psmt.setString(3, age);
		psmt.setString(4, user_id);
		
		psmt.executeQuery();
		
		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	response.sendRedirect("../List.jsp");
	
%>