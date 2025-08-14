<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>계좌 목록</title>
	</head>
	
	
	<body>
		<h3>계좌 목록</h3>
		
		<a href="/bankP">처음으로</a>
		<a href="/bankP/account/register.do">계좌등록</a>
		
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
				<td>
					<a href="#">수정</a>
					<a href="/bankP/account/send.do?accNo=${dto.accNo}">이체</a>
					<a href="#">삭제</a>
				</td>
			</tr>
			</c:forEach>				
		</table>
	
	
	</body>
</html>