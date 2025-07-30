<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="vo.Uuser1DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");
	Uuser1DTO user1 = null;
	
	try{
		// DBCP 커넥션풀 가져오기
		Context initCtx = new InitialContext(); //환경객체 생성
		Context ctx = (Context) initCtx.lookup("java:comp/env");//java기본환경 객체 검색
		DataSource ds = (DataSource) ctx.lookup("jdbc/zxy0575"); //jdbc/dbName 커넥션풀 객체 검색
		Connection conn = ds.getConnection();
		
		String sql = "SELECT * FROM USER1 WHERE USER_ID=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			user1 = new Uuser1DTO();
			user1.setUser_id(rs.getString(1));
			user1.setName(rs.getString(2));
			user1.setHp(rs.getString(3));
			user1.setAge(rs.getInt(4));
		}
		rs.close();
		psmt.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>user1::register</title>
	</head>
	<body>
		<h3>User1 수정</h3>
		
		<a href="../dbcp.jsp">처음으로</a>
		<a href="./List.jsp">목록으로</a>
		
		<form action="./proc/modify.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="user_id" readonly value="<%= user1.getUser_id() %>" placeholder="id 입력"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%= user1.getName() %>" placeholder="name 입력"/></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="hp" value="<%= user1.getHp() %>" placeholder="hp 입력"/></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" value="<%= user1.getAge() %>" placeholder="age 입력"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="등록하기"/>
					</td>
				</tr>
			</table>
		</form>
		
	</body>
</html>