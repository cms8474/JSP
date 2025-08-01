
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- 
		250731 최민수
		JSP EL 실습
		 -->
	</head>
	
	<body>
		<h3>JSP 표현언어 EL(Expression Language)</h3>
		
		<%
			// 표현언어로 출력할 변수
			int num1 = 1;
			int num2 = 2;
		
			String str1 = "hello";
			String str2 = "welcome";
			String str3 = "";
			String str4 = null;
			
			// 표현언어 출력을 위해 JSP 내장객체:스코프 저장
			pageContext.setAttribute("num1", num1);
			request.setAttribute("num2", num2);
			session.setAttribute("str1", str1);
			application.setAttribute("str2", str2);
			
			request.setAttribute("str3", str3);
			request.setAttribute("str4", str4);
		
		%>
		<h4>표현식(Expression)</h4>
		<p>
			num1 : <%= num1 %><br/>
			num2 : <%= num2 %><br/>
			str1 : <%= str1 %><br/>
			str2 : <%= str2 %><br/>
		</p>
		
		<h4>표현언어 EL </h4>
		<p>
			num1 : ${num1}<br/>  <!--(생략)${pageScope.num1}와 같음 -->
			num2 : ${num2}<br/>  <!--(생략)${requestScope.num2}와 같음 -->
			str1 : ${str1}<br/>  <!-- 이하동문 -->
			str2 : ${str2}<br/> 
		</p>
		
		<h4>표현언어 내장객체</h4>
		<p>
			num1 : ${pageScope.num1}<br/> 
			num2 : ${requestScope.num2}<br/> 
			str1 : ${sessionScope.str1}<br/> 
			str2 : ${applicationScope.str2}<br/> 
			session num1 : ${sessionScope.num1}<br/> <!-- num1은 페이지컨텍스트 값-->
		</p>
		
		<h4>표현언어 연산자</h4>
		<p>
			num1 + num2 = ${num1 + num2}<br/>
			
			num1 < num2 = ${num1 < num2}<br/> <!-- true/false -->
			num1 lt num2 = ${num1 lt num2}<br/> <!-- <를 lt로 표현> -->
			<!-- >'gt' <'lt' >='ge' <='le' =='eq' !='ne' -->
			
			empty str1 = ${empty str1 }<br/> <!-- false출력. str1의 값은 비어있지않음 -->
			str1 dq str2 = ${str1 eq str2 }<br/><!-- 문자열 간 비교 -->
		</p>
				
		
		
	
	</body>
</html>











