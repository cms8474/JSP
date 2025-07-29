<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<% 
	// 세션 로그아웃 JSP
	//현 세션 값 제거 & 무효화
	session.removeAttribute("sessUser");
	session.invalidate();
	
	// 자동로그인 쿠키 해제
	Cookie autoCookie = new Cookie("auto", null);
	autoCookie.setMaxAge(0);//쿠키 수명을 0으로 바꿔 삭제
	autoCookie.setPath("/");
	
	response.addCookie(autoCookie);
	
	// 페이지 이동
	response.sendRedirect("../session.jsp");


%>