<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="vo.Uuser1DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String user_id = request.getParameter("user_id");

	
	try {
		// DBCP 커넥션풀 가져오기
		Context initCtx = new InitialContext(); //환경객체 생성
		Context ctx = (Context) initCtx.lookup("java:comp/env");//java기본환경 객체 검색
		DataSource ds = (DataSource) ctx.lookup("jdbc/zxy0575"); //jdbc/dbName 커넥션풀 객체 검색
		Connection conn = ds.getConnection();
				
		String sql = "DELETE FROM USER1 WHERE USER_ID = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
			
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
	} catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("../List.jsp");
	
%>