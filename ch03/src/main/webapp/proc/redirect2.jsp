<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	
	<body>
		<h3>redirect1 페이지</h3>
		<%
			// naver페이지로 리다이렉트(다시요청)
			response.sendRedirect("https://naver.com");
		
		%>
		
		
		
	</body>
</html>