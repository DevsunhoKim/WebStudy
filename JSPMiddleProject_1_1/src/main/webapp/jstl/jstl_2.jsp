<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <h1>자바(switch)</h1>

    <%
        int i = 4;
        switch (i) {
            case 0:
    %>
                ☆☆☆☆☆
    <%
                break;
            case 1:
    %>
                ★☆☆☆☆
    <%
                break;
            case 2:
    %>
                ★★☆☆☆
    <%
                break;
            case 3:
    %>
                ★★★☆☆
    <%
                break;
            case 4:
    %>
                ★★★★☆
    <%
                break;
            case 5:
    %>
                ★★★★★
    <%
                break;
        }
    %>

</body>
</html>
