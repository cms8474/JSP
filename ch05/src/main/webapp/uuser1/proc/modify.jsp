<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
	
	try{
		// DBCP 커넥션풀 가져오기
		Context initCtx = new InitialContext(); //환경객체 생성
		Context ctx = (Context) initCtx.lookup("java:comp/env");//java기본환경 객체 검색
		DataSource ds = (DataSource) ctx.lookup("jdbc/zxy0575"); //jdbc/dbName 커넥션풀 객체 검색
		
		// 커넥션풀에서 접속 커텍션 가져오기
		Connection conn = ds.getConnection();
		
		//SQL실행객체 생성
		String sql = "UPDATE USER1 SET NAME = ?, HP = ?, AGE = ? WHERE USER_ID = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, name);
		psmt.setString(2, hp);
		psmt.setString(3, age);
		psmt.setString(4, user_id);
		
		psmt.executeUpdate();
		psmt.close();
		conn.close();
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	response.sendRedirect("../List.jsp");
	
%>