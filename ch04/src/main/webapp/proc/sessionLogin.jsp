<%@page import="vo.UserVO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String auto = request.getParameter("auto");
	
	System.out.println("id : "+ id);
	System.out.println("pw : "+ pw);
	System.out.println("auto : "+ auto);
	
	// DB 사용자 조회 후 사용자 객체 생성
	UserVO vo = null;
	
	if(id.equals("abc123")&&pw.equals("1234")){
		vo = new UserVO();
		vo.setId(id);
		vo.setPw(pw);
		vo.setName("김유신");
		vo.setAge(23);
	}
	
	if(vo != null){
		
		// 사용자 아이디로 auto 쿠키 생성(자동로그인 처리)
		if(auto.equals("true")){
			Cookie autocookie = new Cookie("auto", id);
			autocookie.setMaxAge(60 * 60 * 24 * 7);
			autocookie.setPath("/");//쿠키값이 사용가능한 범위 지정
			
			response.addCookie(autocookie);
		}
		
		
		// 사용자가 회원이면 세션에 사용자 객체 저장
		session.setAttribute("sessUser", vo);
		// redirect
		response.sendRedirect("./sessionSuccess.jsp");
	}else{
		// 사용자가 회원아니면 로그인화면으로
		response.sendRedirect("../session.jsp");
	}
%>