<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%--
		내장 객체 => 미리 객체를 생성한 후에 사용이 가능하게 만든 것
		=======
		1. 객체명
		2. 클래스
		3. 용도
		4. 주요메소드 
		================================
		request 
		=======
		클래스명 : HttpServletRequest
		용도 : 클라이언트의 요청 값을 묶어서 저장
			  클라이언트의 정보 : IP,PORT,...
			  세션이나 쿠키 생성
			  
		주요메소드 : getParameter() => 단일값 받기
				  getParmameterValues()	=> 다중값 받기(체크박스)
				  setCharacterEncoding() => 한글변환 
				  	=> 전송 : 인코딩, 수신 : 디코딩
				  getSession(), getCookie()
				  getRemoteAddr() => IP
				  =========================
				  서버정보
				  getRequestURL()
				  getRequestURI()
				  getContextPath()
				  =====================URL======================
				  http://localhost/JSPBasicProject_3/etc/out.jsp
				  				   ===ContextPath===
				  				   ==========URI================
				  추가정보
				  setAttribute() => request에 데이터 추가해서 넘겨주는 경우
				  getAttribute() => 추가된 내용을 읽기
				  ===============================================
				  Model 1
				  JSP <=> JSP
				  
				  Middle
				  
				  MV => Java / HTML => EL / JSTL
				  
				  Model 2 => MVC => Spring
		 
		 
		 response
		 =========
		 클래스명 : HttpServletResponse
		 용도 : HTML,Cookie 전송
		 	   화면 변경
		 	   헤더 작성
		 	   
		 주요메소드 : setContentType("")	=> text/html, text/xml, text/plain
		 		   addCookie() => 해당브라우저로 전송
		 		   sendRedirect(파일명) => GET
		 		   setHeader() => 다운로드 
		 =============================================
		 
		 out : JspWriter 
		 	   => 출력 버퍼 (HTML을 출력해서 저장하는 공간)
		 	   	  		   ========================
		 	   	  		   ㅣ요청한 브라우저에서 공간의 HTML을 읽어서 출력
		 	   	  		   ㅣ자동으로 비워준다 => 브라우저 한개당 한개만 생성
		 	   	  		   ㅣ기본 : 8kb 
		 	   => 화면 출력
		 	   	  println() / print()
		 	   => 버퍼크기 확인
		 	   	  getBufferSize()
		 	   => 남아있는 버퍼 확인
		 	   	  getRemaining()
		 	   => <%= %> => ${}
		 	 => 한번 사용 => 다운로드
		 application
		 pageContext
		 exception
		 config
		 page		 			
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>out:JspWriter:버퍼관리</h1>
 1. 전체버퍼의 크기:<%=out.getBufferSize() %>
 <br>
 2. 남아있는 버퍼 크기:<%=out.getRemaining %>
 <br>
 3. 사용중인 버퍼 크기:<%=out.getBufferSize() - out.Remaining %>
 4. &lt;=&gt; 대체 : out.println()/out.write
 	=> 복잡한 HTML을 만들 경우
 	<br>
 	<%
 		out.println("<h1>OUT객체</h1>");
 		out.print("<h1>OUT객체</h1>");
 		out.write("<h1>OUT객체</h1>");
 	%>
</body>
</html>