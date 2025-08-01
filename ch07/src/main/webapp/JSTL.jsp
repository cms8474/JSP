<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="f" uri="jakarta.tags.functions" %> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		</head>

	<body>
		<h3>JSTL(Java Standards Tag Library)</h3>

		<h4>스크립트 방식</h4> <%
			//변수
			String hi = "hi";
			out.println("<p>hi : " + hi + "</p>");

			int n1 = 1; int n2 = 2; int n3 = 3;

			//조건문
			if(n1 > n2){
				out.println("<p>n1>n2 : (true)n1은 n2보다 크다</p>");
			}else{
				out.println("<p>n1>n2 : (false) n1(" +n1+ ")은 n2(" +n2+ ")보다 작다</p>");
			}

			// 문자열 처리
			String message = "Hello Korea";

			out.println("<p>문자열 길이 : " + message.length() + "</p>");
			out.println("<p>문자열 자르기 : " + message.substring(6, 11) + "</p>");
			out.println("<p>문자열 교체 : " + message.replace("Korea", "Busan") + "</p>");
			out.println("<p>문자열 인덱스 : " + message.indexOf("e") + "</p>");
		%>

		<h4>JSTL 방식</h4>
		<c:set var="str" value="hi"/>
		<p>str : ${str}</p>

		<c:set var="n1" value="1"/>
		<c:set var="n2" value="2"/>
		<c:set var="n3" value="3"/>

		<c:if test="${n1 < n2}">
			<p>n1은 n2보다 작다</p>
		</c:if>

		<c:choose>
			<c:when test="${n1 > n2}">
				<p>참인 경우 출력</p>
			</c:when>
			<c:otherwise>
				<p>else의 경우 출력</p>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${n1 > n2}">
				<p>참인 경우 출력</p>
			</c:when>
			<c:when test="${n2 > n3}">
				<p>elif 이것이 참인 경우 출력</p>
			</c:when>
			<c:otherwise>
				<p>else의 경우</p>
			</c:otherwise>
		</c:choose>

		<c:forEach var="i" begin="1" end="5">
			<p>i : ${i}</p>
		</c:forEach>

		<c:set var="sum" value="0"/>
		<c:forEach var="k" begin="1" end="10">
			<c:set var="sum" value="${sum+k}"/>
		</c:forEach>
		<p>1~10 합: ${sum}</p>

		<c:set var="cities" value="서울,대전,대구,부산,광주"/>
		<c:forEach var="city" items="${cities}">
			<p>city : ${city}</p> <%-- 따옴표 위치 조정 --%>
		</c:forEach>

        <c:set var="message" value="hello kirea"/>
        <p>문자열 길이 : ${f:length(message)}</p>
        <p>문자열 자르기 : ${f:substring(message, 0, 5)}</p>
        <p>문자열 교체 : ${f:replace(message, "kirea", "Busan")}</p>
        <p>문자열 인덱스 : ${f:indexOf(message, "e")}</p>

	</body>
</html>