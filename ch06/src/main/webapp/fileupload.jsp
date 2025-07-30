<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>fileupload</title>
		<!-- 
		250730
		최민수
		JSP 파일 업로드 실습
		
		JSP 파일 업로드 방식
		1) cos.jar 방식(가장 범용적)
			- MultipartRequest를 이용한 파일 업로드
			- 너무 오래된 라이브러리로 최신 java17에서 지원x(tomcat 8이하)
			
		2) apache-fileupload 방식
			- apache 오픈소스로 제공되는 파일업로드 라이브러리
			- Java 재단이 javax에서 jakarta로 변경되며 잦은 버전변경으로 호환성 부족 
			
		3) WAS'part 방식
			- Tomcat9이상에서 지원되는 업로드 방식
			- 업로드 파일을 part 객체로 처리됨
		
		WAS'getPart 업로드 설정
			- Server > context.xml(row18)<Context allowCasualMultipartParsing="true"> 속성 선언
			- Server > server.xml(row63) Connector태그에 maxPostSize="n" 속성 선언
		 -->
		
	</head>
	
	<body>
		<h3>파일 업로드</h3>
		
		<form action="./proc/fileUpload.jsp" method="post" enctype="multipart/form-data">
			<input type="text" name="title" placeholder="파일 제목 입력" /><br/>
			<input type="text" name="name" placeholder="이름 입력" /><br/>
			<input type="file" name="file1" /><br/>
			<input type="submit" value="파일 업로드 전송하기"/>
		</form>
	
	
	</body>
</html>