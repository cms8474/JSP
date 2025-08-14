<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>고객 목록</title>
	</head>
	
	
	<body>
		<h3>고객 목록</h3>
		
		<a href="/bankP">처음으로</a>
		<a href="/bankP/customer/register.do">고객등록</a>
		
		<table border="1">
			<tr>
				<th>CID</th>
				<th>이름</th>
				<th>종류</th>
				<th>연락처</th>
				<th>주소</th>
				<th>관리</th>
			</tr>
			<c:forEach var="dto" items="${dtoList}">
			<tr>
				<td>${dto.cId}</td>
				<td>${dto.cName}</td>
				<td>${dto.cType}</td>
				<td>${dto.cHp}</td>
				<td>${dto.cAddr}</td>
				<td>
					<a href="#">수정</a>
					<a href="#">삭제</a>
				</td>
			</tr>
			</c:forEach>				
		</table>
	
	
	</body>
</html>