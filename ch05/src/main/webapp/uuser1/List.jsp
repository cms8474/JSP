<%@page import="vo.Uuser1DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
	List<Uuser1DTO> uuser1s = new ArrayList<>();

	try{
		// DBCP 커넥션풀 가져오기
		// 자바 기본 환경객체 검색(tomcat WAS환경)
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");//java기본환경 객체 검색
		DataSource ds = (DataSource) ctx.lookup("jdbc/zxy0575"); //jdbc/dbName 커넥션풀 객체 검색
		
		Connection conn = ds.getConnection();
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM USER1");
		
		while(rs.next()){
			Uuser1DTO dto = new Uuser1DTO();
			dto.setUser_id(rs.getString(1));
			dto.setName(rs.getString(2));
			dto.setHp(rs.getString(3));
			dto.setAge(rs.getInt(4));
			
			uuser1s.add(dto);
			
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>user1::list</title>
	</head>
	<body>
		<h3>User1 목록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		
		<table border="1">
			<tr>
				<th>USER_ID</th>
				<th>NAME</th>
				<th>HP</th>
				<th>AGE</th>
				<th>관리</th>
			</tr>

			<% for(Uuser1DTO uusers : uuser1s) {%>
			<tr>
				<td><%= uusers.getUser_id() %></td>
				<td><%= uusers.getName() %></td>
				<td><%= uusers.getHp() %></td>
				<td><%= uusers.getAge() %></td>
				<td>
					<!-- 수정대상 정보를 modify로 전송 -->
					<a href="/ch05/uuser1/modify.jsp?user_id=<%= uusers.getUser_id() %>">수정</a>
					<a href="/ch05/uuser1/proc/delete.jsp?user_id=<%= uusers.getUser_id() %>">삭제</a>
				</td>
			</tr>
			<%} %>
		</table>
	</body>
</html>
