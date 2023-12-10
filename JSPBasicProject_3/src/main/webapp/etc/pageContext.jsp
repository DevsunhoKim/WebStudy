<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
		1. 내장 객체 얻기
		   getRequest(), getResponse(), getOut()
		   getSession(), getPage(), getException()
		   application => getServletContext()
		   => 사용 빈도가 거의 없다 (99.999999999999%)
		   
		   request.getParameter()
		   pageContext.getRequest().getParameter()
		 
		2. 웹 흐름 제어 
		   include(), forward() => 파일마다 request공유를 한다
		   pageContext.include() ==> X
		   	=> <jsp:include>
		   	=> 1. <%@ include file="" %> : 정적
		   			=> file에는 반드시 file명을 설정한다
		   				menu / footer
		   	   2. <jsp:include page="">  : 동적
		   	   		=> 내용 출력시에 변경
		   	   			page=변수명
		   	   			
		   	   => JSP안에 특정 위치에 다른 JSP를 포함
		   	   a.jsp
		   	    <html>
		   	      <body>
		   	      	<%
		   	      		int a=10;
		   	      	%>
		   	      	<h1><%= a%></h1>
		   	      </body>
		   	    </html>
		   		=====================
		   		<html>
		   		<body>
		   		  <h1>10</h1>
		   		</body>
		   		</html>
		   		=====================
		   		b.jsp
		   		 <html>
		   		 	<body>
		   		 		<%
		   		 			int a=100; 
		   		 		%>
		   		 		<h1><%=a%></h1>
		   		 		==========================
		   		 		<%@ include file="a.jsp"%>
		   		 		=> @include는 서로 소스를 합치고 컴파일을 하기때문에 동일한 변수가 있으면 안된다
		   	    <html>
		   	      <body>
		   	      	<%
		   	      		int a=10; ==> include했는데 변수명이 위의 jsp의 a와 같으므로 오류남
		   	      	%>
		   	      	<h1><%= a%></h1>
		   	      </body>
		   	    </html>
		   		 	</body>
		   		 </html>
		   		 =====================
		   		 <jsp:include page="a.jsp">
		   		 	=> jsp:include는 따로 따로 컴파일해서 html을 붙임 => 변수가 같아도 상관 없음 => 컴파일후에 붙이므로.
		   		 <html>
		   		  <body>
		   		   <h1>10</h1>
		   		  </body>
		   		 </html>
		   		 <html>
		   		  <body>
		   		   <h1>100</h1>
		   		  </body>
		   		 </html>
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>