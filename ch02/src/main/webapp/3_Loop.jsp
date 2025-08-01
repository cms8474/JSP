<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>반복문</title>
		<%--
		2507028
		최민수
		JSP 스크립트릿 반복문 실습
		 --%>
	</head>
	<body>
		<h3>반복문</h3>
		
		<h4>for</h4>
		<%
			for(int i=1 ; i<=5 ; i++){
				out.println("<p>i : " + i + "</p>");
			}
		
		%>
		
		<% for(int j=1 ; j<=5 ; j++){ %>
				<p>j : <%= j %></p>
		<%}%>
		
		
		<h4>while</h4>
		
		<%
			int k = 1;
			while(k >=5){
		%>
			<p>k : <%= k %></p>
		<%	
			k++;
			}
		 %>
		 
		 <h4>구구단</h4>
		 
		 <table border="1">
		 	<%for(int x=1 ; x<=9 ; x++){ %> 
    <tr> <%-- 새로운 행 시작 --%>
        <%for(int y=1 ; y<=9 ; y++) { %>
            <td> <%= y %> x <%= x %> = <%= y * x %></td> 
        <%} %>
    </tr> 
<%} %>	 	
		 </table>
		 
		
	</body>
</html>

















