<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>User2::register</title>
	</head>
	<body>
		<h3>User2 목록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./List.jsp">목록으로</a>
		
		<form action="./proc/register.jsp" method="post">
			<table	border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="user_id" placeholder="id"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="name"></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="hp" placeholder="hp"></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" placeholder="age"></td>
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