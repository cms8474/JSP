<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>거래 목록</title>
	</head>
	
	
	<body>
		<h3>거래 목록</h3>
		
		<a href="/bankP">처음으로</a>
		
		<table border="1">
			<tr>
				<th>NO</th>
				<th>거래계좌</th>
				<th>거래타입</th>
				<th>거래액</th>
				<th>거래일</th>
			</tr>
			<c:forEach var="dto" items="${dtoList}">
			<tr>
				<td>${dto.tNo}</td>
				<td>${dto.tAcc}</td>
				<td>${dto.tType}</td>
				<td>${dto.tAmount}</td>
				<td>${dto.tDate}</td>
			</tr>
			</c:forEach>				
		</table>
	
	
	</body>
</html>