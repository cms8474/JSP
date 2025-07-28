<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 내장객체 = request</title>
		<!-- 
		20250728
		최민수
		JSP 내장객체 request 실습 
		
		Request 요청방식
		- 클라의 요청 정보를 갖는 JSP 내장객체
		- 클라의 전송 데이터를 수신처리하는 기능 제공
		
		GET 요청
		- 기본 데이터 요청 방식. 전송데이터를 쿼리스트링으로 전송(URL에 붙여 전송)
		- 보안에 취약하나 POST보다 빠름
		
		POST 요청
		- 데이터를 요청 객체의 body에 저장하여 전송하는 방식
		- 보안에 유리하고 대량전송에 적합
		
		
		-->
	</head>
	
	<body>
		<h3>JSP 내장객체 - request</h3>
		
		<h4>GET 요청</h4>
			<a href="./proc/result1.jsp?uid=a101"> 결과페이지1</a>
			<a href="./proc/result1.jsp?uid=a102&name=홍길동"> 결과페이지2</a>
			<a href="./proc/result1.jsp?uid=a103&name=김유신&age=23"> 결과페이지3</a>
		
		<h4>POST 요청</h4>
		<form action="./proc/result2.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid" placeholder="아이디 입력 하세요."/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름 입력 하세요."/></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="date" name="birth" placeholder="생년월일 입력 하세요."/></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
					<input type="submit" placeholder="전송"/>
					</td>
				</tr>
			</table>
		</form>
		
	
	</body>
</html>









