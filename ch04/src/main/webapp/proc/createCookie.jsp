<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신(from cookie.jsp)
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 프로젝트 컨텍스트 경로 설정
	String path = application.getContextPath();//=ch04
	
	// ID가 abc123이고 PW가 1234일 때	
	if(id.equals("abc123") && pw.equals("1234")){
		Cookie cookie = new Cookie("username", id);//키-값 쿠키 생성
		cookie.setMaxAge(60*3);//수명
		cookie.setPath(path);//쿠키유효범위
		
		Cookie cookie2 = new Cookie("userpass", pw);//키-값 쿠키 생성
		cookie2.setMaxAge(60*1);//수명
		cookie2.setPath(path);//쿠키유효범위
		
		// 유저에게 클라이언트 쿠키 발송
		response.addCookie(cookie);
		response.addCookie(cookie2);
		
		response.sendRedirect("./resultCookie.jsp");
		
	}else{
		response.sendRedirect("../cookie.jsp");
		
	}


%>>