<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.*"%>
<%
	//request.setCharacterEncoding("UTF-8"); ==> POST방식에서 사용
	// GET방식은 Tomcat에서 자체처리
	String fd=request.getParameter("fd");
	String ss=request.getParameter("ss");
	
	String fno=request.getParameter("fno");
	// 1. Cookie 생성
	Cookie cookie=new Cookie("food_"+fno,fno);
	// 2. 저장 경로 설정
	cookie.setPath("/");
	// 3. 저장 기간 설정
	cookie.setMaxAge(60*60*24); // 하루(24시간) (초단위)
	// 4. 브라우저로 전송
	response.addCookie(cookie);
	
	// 5. 상세보기로 이동
	response.sendRedirect("detail.jsp?fno="+fno+"&fd="+fd+"&ss="+URLEncoder.encode(ss,"UTF-8"));
	// sendRedirect는 GET방식 => 요청값 전송시 반드시 ?이용
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>