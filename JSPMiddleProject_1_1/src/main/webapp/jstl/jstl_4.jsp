<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%--
      fn => String 메소드만 가능
    
     --%>
 <%
   String msg="Hello JSTL";
 %>
 <c:set var="msg" value="<%=msg %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바(String)</h1>
	<%=msg.length() %>
	<%=msg.substring(0,	5) %>
	<h1>JSTL</h1>
	${fn:length(msg)}
	${fn:substring(msg,0,5)}
</body>
</html>