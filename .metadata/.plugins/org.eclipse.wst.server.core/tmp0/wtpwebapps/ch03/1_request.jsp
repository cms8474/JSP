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
		
		
		<h4>확인문제</h4>
		<form action="./proc/result3.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" placeholder="아디입력"/></td>
				</tr>
				<tr>
					<td>비번</td>
					<td><input type="password" name="pw" placeholder="pw입력"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름입력"/></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="date" name="birth"/></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<label><input type="radio" name="gender" value="남자"/>남자</label>
						<label><input type="radio" name="gender" value="여자"/>여자</label>
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<select name="address">
							<option>서울</option>
							<option>대전</option>
							<option>대구</option>
							<option>부산</option>
							<option>광주</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>취미</td>
						<td>
							<label><input type="checkbox" name="hobby" value="등산"/>등산</label>
							<label><input type="checkbox" name="hobby" value="운동"/>운동</label>
							<label><input type="checkbox" name="hobby" value="여행"/>여행</label>
							<label><input type="checkbox" name="hobby" value="독서"/>독서</label>
							<label><input type="checkbox" name="hobby" value="게임"/>게임</label>
						</td>
				</tr>
				
				
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="전송하기"/>
					</td>
				</tr>
			</table>
		</form>
		
		<h4>자주 사용하는 클라이언트 정보</h4>
		<p>
			헤더정보 #1 ㅣ <%= request.getHeader("User-Agent") %><br/>
			헤더정보 #2 ㅣ <%= request.getHeader("referer") %><br/><!-- 직전페이지 주소 -->
			헤더정보 #3 ㅣ <%= request.getHeader("cookie") %><br/>
			프로토콜 ㅣ <%= request.getProtocol() %><br/>
			서버이름 ㅣ <%= request.getServerName() %><br/>
			서버이름 ㅣ <%= request.getServerPort() %><br/>
			요청주소 ㅣ <%= request.getRequestURI() %><br/>
			요청경로 ㅣ <%= request.getRequestURL() %><br/>
			IP 주소 ㅣ <%= request.getRemoteAddr() %><br/>
		</p>
		
		
		
		
		
		
		
		
		
		
		
	</body>
</html>









