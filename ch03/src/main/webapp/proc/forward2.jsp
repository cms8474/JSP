<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>forward1 페이지</h3>
	<%
		// forword는 서버 자원 내에서 제어권 이동이므로 외부서버 이동 불가
		pageContext.forward("https://naver.com");
	
	
	
	%>
	
	
</body>
</html>