<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>계좌 이체</title>
	</head>
	
	
	<body>
		<h3>계좌 이체</h3>
		
		<a href="/bankP">처음으로</a>
		<a href="/bankP/account/list.do">계좌목록</a><br/>
		
		<h4>출금 계좌</h4>
		
		<form action="/bankP/customer/send.do" method="post">
				<table border="1">
					<tr>
						<td>출금계좌</td>
						<td><input type="text" name="accNo" value="${accNo}" readonly/></td>
					</tr>
					<tr>
						<td>입금계좌</td>
						<td><input type="text" name="targetNo" placeholder="계좌 입력" /></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="cName" placeholder="이름 입력"/></td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<input type="submit" value="로그인"/>
						</td>
					</tr>
				</table>
		</form>
		
		<table border="1">
			<tr>
				<th>계좌 번호</th>
				<th>계좌 타입</th>
				<th>계좌 명</th>
				<th>주민번호</th>
				<th>잔액</th>
				<th>생성일</th>
				<th>관리</th>
			</tr>
			<c:forEach var="dto" items="${dtoList}">
			<tr>
				<td>${dto.accNo}</td>
				<td>${dto.accType}</td>
				<td>${dto.accName}</td>
				<td>${dto.accCid}</td>
				<td>${dto.accBalance}</td>
				<td>${dto.accDate}</td>
			</tr>
			</c:forEach>				
		</table>
	
	
	</body>
</html>