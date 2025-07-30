<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String user_id = request.getParameter("user_id");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");
	
	
	try{
		// DBCP 커넥션풀 가져오기
		Context initCtx = new InitialContext(); //환경객체 생성
		Context ctx = (Context) initCtx.lookup("java:comp/env");//java기본환경 객체 검색
		DataSource ds = (DataSource) ctx.lookup("jdbc/zxy0575"); //jdbc/dbName 커넥션풀 객체 검색
		
		// 커넥션풀에서 접속 커텍션 가져오기
		Connection conn = ds.getConnection();
		
		//SQL실행객체 생성
		String sql = "INSERT INTO USER1 VALUES(?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
		psmt.setString(2, name);
		psmt.setString(3, hp);
		psmt.setString(4, age);
		
		psmt.executeUpdate();
		psmt.close();
		conn.close();
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("/ch05/uuser1/List.jsp");
%>
