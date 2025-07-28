<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- 
			pageContext 내장객체
			- 요청에 대한 대상인 JSP파일 정보 객체
			- JSP페이지당 하나의 pageContext 객체
			- 페이지의 흐름제어(include, forwar) 기능 제공
		
		 -->
	</head>
	<body>
		<h3>JSP내장객체 - pageContext</h3>
		
		<h4>forward</h4>
		<A href="./proc/forward1.jsp">포워드 페이지 요청 1</A><br/>
		<A href="./proc/forward2.jsp">포워드 페이지 요청 2</A><br/>
		
		<h4>include</h4>
		
		<%
			//동적 페이지 삽입
			pageContext.include("./inc/_header.jsp");
			pageContext.include("./inc/_footer.jsp");
		%>
		<%--정적 페이지 삽입 --%>
		<%@ include file="./inc/_header.jsp" %>
		<%@ include file="./inc/_footer.jsp" %>
	</body>
</html>