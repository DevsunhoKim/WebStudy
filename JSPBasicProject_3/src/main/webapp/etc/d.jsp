<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 실행 => 사이트 주소 => 마지막에 있는 파일이 request
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String mode=request.getParameter("mode");
	if(Integer.parseInt(mode)==1){
		response.sendRedirect("e.jsp");
	}else{
		pageContext.forward("e.jsp");
		// <jsp:forward page=""> => MVC구조에 주로 적용
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