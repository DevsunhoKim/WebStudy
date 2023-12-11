<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
  param.name => request.getParameter("name")
  empty => 값이 없는 경우 true
           값이 있는 경우 false
 --%>
	<h1>${empty param.name }</h1>
</body>
</html>