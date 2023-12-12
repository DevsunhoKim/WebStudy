<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <h1><c:out value="StringTokenizer Example" /></h1>

    <c:set var="tokenString" value="m1,m2,m3,m4,m5,m6,m7" />
    <c:forTokens items="${tokenString}" delims="," var="image">
        <img src="${image}.jpg" width="150" height="200">
    </c:forTokens>

    <h1><c:out value="If Statement Example" /></h1>
    <c:forEach var="i" begin="1" end="10" step="1">
        <c:if test="${i % 2 == 0}">
            ${i}
        </c:if>
    </c:forEach>
    <c:forEach var="i" begin="1" end="10" step="1">
        <c:if test="${i % 2 != 0}">
            ${i}
        </c:if>
    </c:forEach>
</body>
</html>