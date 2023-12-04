<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--
  지시자
    page : jsp 파일에 대한 정보
    => JSP 시작점
    => 1. contentType => 실행시 변경될 파일 형식
          => 자바로 변경 : response.setContentType()
          => HTML => text/html;charset=UTF-8
                            ===============
                            charset=ISO-8859-1 => default
          => xml => text/xml;charset=UTF-8
          => json => text/plain;charset=UTF-8
          => 브라우저에 알려준다
          => page 안에서 한번만 사용이 가능하다
       2. import => 외부 라이브러리 첨부
                   java.lang , javax.http.servlet
                   ================================ 생략이 가능
          => 사용형식 2가지
          <%@ page import="java.util.*,java.io.*"%>
          
          ----------------------------------------
          <%@ page import="java.util.*%>
          <%@ page import="java.io.*%>
       3. buffer => html을 저장하는 메모리 공간
                 => 8KB
                 => html이 출력을 할 때 용량부속시에는 증가
       4. errorPage
    taglib : 태그로 자바 기본 문법을 제공 => jstl/el
    include : JSP안데 다른 JSP를 첨부할때 사용
    <%@ 지시자명 속성="값" 속성="값" %>
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>