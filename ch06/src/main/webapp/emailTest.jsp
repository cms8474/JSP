<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>emailTest</title>
		<!-- 
			250730
			최민수
			JSP 파일 업로드 실습
			
			JSP 이메일 전송 의존성(라이브러리)
			- javax.mail-1.6.2.jar : 메일 전송에 필요한 기능 제공
			- activation-1.1.1.jar : 위 jar가 필요로 하는 의존 라이브러리
			
			Gmail SMTP 앱 비밀번호 생성
			- Gmail > 계정관리 - 앱비밀번호 설정
			- 앱비밀번호 > 세션 비밀번호 설정
			
			
		-->
	</head>
	
	<body>
		<h3>이메일 발송 실습</h3>
		
		<form action="/ch06/proc/emailSend.jsp" method="post">
			<table border="1">
				<tr>
					<td>보내는사람</td>
					<td><input type="email" name="sender" placeholder="보내는사람 이메일 입력"/></td>
				</tr>
				<tr>
					<td>받는사람</td>
					<td><input type="email" name="receiver" placeholder="받는사람 이메일 입력"/></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" placeholder="이메일 제목 입력"/></td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea name="content" rows="10" cols="50"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="이메일 발송"/>
					</td>
				</tr>
			</table>
		</form>
	
	
	
	</body>
</html>