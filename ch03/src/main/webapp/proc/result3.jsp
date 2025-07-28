<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
	// 전송데이터 수신
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String[] hobbys = request.getParameterValues("hobby");
	
%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>요청 결과3</h3>
		
		<p>
			아이디: <%= id %><br/>
			비밀번호: <%= pw %><br/>
			이름: <%= name %><br/>
			생년월일: <%= birth %><br/>
			성별: <%= gender %><br/>
			주소: <%= address %><br/>
			취미: 
				<% 
    				for(String hobby : hobbys){ 
        				out.print(hobby + ", ");
    					}
				%>
				<br/>
		</p>
		
		<a href="../1_request.jsp">뒤로가기</a>
	
	</body>
</html>