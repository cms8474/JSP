<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>1.스크립트릿</title>
		<!-- 
		250728
		최민수
		2장 JSP 스크립트 기본
		
		스트립트릿
		- 정적문서(HTML))에 프로그래밍 코드를 작성하기 위한 코드영역
		- 동적문서(JSP) 스크립트릿 실행으로 정적문서 변환
		
		표현식
		- 자바 변수 값을 간ㄴ단히 출력하기 위한 스크립트 요소
		- 간단한 값, 메서드 호출 결과 출력
		
		 -->
	</head>
	<body>
		<h3>1.스크립트 요소</h3>
		
		<h4>스크립트릿(Scriptlet)</h4>
		<%
			// 스크립트릿(자바프로그래밍 스코프)
			int 	var1 = 1;
			boolean var2 = true;
			double 	var3 = 3.14;
			String 	var4 = "Hello";
			
			out.println("<p>var1 : " + var1 + "</p>");
			out.println("<p>var2 : " + var2 + "</p>");
			out.println();
			
		%>
		<h4>표현식(Expression)</h4>
		
		<p>var3 : <%= var3 %></p>
		<p>var4 : <%= var4 %></p>

	</body>
</html>