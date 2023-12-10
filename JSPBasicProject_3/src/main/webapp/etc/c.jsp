<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="d.jsp?id=admin&pwd=1234&mode=1">Redirect</a>
	<%-- 새로운 창 띄우기 --%>
	<br>
	<a href="d.jsp?id=admin&pwd=1234&mode=2">Forward</a>
	<%-- 본인 자신에서 html만 덮어써서 출력하는 형식 : Forward --%>
	<%-- 새로운 창을 띄우는것은 아니다 내용만 변경하는느낌 => 주소는 불변경 --%>
	<%-- // MVC => 화면 하나로 바꾸는것 Servlet하나로 --%>
</body>
</html>