<%@page import="com.sist.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<jsp:useBean id="dao" class="com.sist.dao.MemberDAO"></jsp:useBean>
<% 
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	MemberVO vo=dao.isLogin(id, pwd);
	if(vo.getMsg().equals("NOID")){
%>
	<script>
	alert("아이디가 존재하지 않습니다!");
	history.back();
	</script>
<%
	}
	else if(vo.getMsg().equals("NOPWD")){
%>
	<script>
	alert("비밀번호가 일치하지 않습니다!");
	history.back();
	</script>
<%
	}
	else if(vo.getMsg().equals("OK")){
		// 세션에 저장
		session.setAttribute("id", vo.getId());
		session.setAttribute("name", vo.getName());
		session.setAttribute("admin", vo.getAdmin());
		response.sendRedirect("../main/main.jsp");
	}
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