<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>BankProject</title>
	</head>
	
	
	<body>
		<h3>은행 프로젝트</h3>
		
		<c:if test="${empty sessionScope.sessPerson}">
			<h4>로그인</h4>
			<form action="/bankP/customer/login.do" method="post">
				<table border="1">
					<tr>
						<td>민번||사업자번호</td>
						<td><input type="text" name="cId" placeholder="ID 입력"/></td>
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
		</c:if>
		
		<c:if test="${not empty sessionScope.sessPerson}">
		    <p>
		        ${sessPerson.cId}(${sessPerson.cName})님 반갑습니다.<br/>
		        <a href="/bankP/customer/logout.do">로그아웃</a>
		    </p>
		    
		    <form action="/bankP/account/list.do" method="post" style="display:inline;">
				<input type="hidden" name="accCid" value="${sessPerson.cId}">
				<button type="submit" style="border:none; background:none; cursor:pointer; color:blue; text-decoration:underline; font-size:1em;">계좌 목록</button>
		    </form>
		    
		    <a href="/bankP/customer/list.do">고객 목록</a>
		    <a href="/bankP/transaction/list.do">거래 목록</a>
		</c:if>
		
		
		
		
	
	
	</body>
</html>