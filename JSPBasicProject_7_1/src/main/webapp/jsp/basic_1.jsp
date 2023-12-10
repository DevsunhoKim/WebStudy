<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
		JSP : (MVC, Spring, Spring-Boot) => 화면 출력
		1. 지시자
		   page => contentType,errorPage,import,buffer
		   taglib => MVC (EL/JSTL)
		2. 자바 / HTML
		   === 사용법 <% %>, <%= %>
		3. 내장 객체 => 미리 생성후에 사용이 가능하게 만든다
		   =======
	       request : 사용자의 요청정보
	       		=> HttpServletRequest
	       response : 응답 (브라우저로 전송 => HTML/Cookie)
	       		=> HttpServletResponse
	       pageContext : JSP연결 => request를 유지
	       				 include() / forward()
	       				 => <jsp:include> <jsp:forward>
	       		=> PageContext => RequestDispatcher
	       out : 메모리 HTML을 출력 => 출력버퍼 (관리)
	       		 print() => <%= %> => ${}
	       		 => JspWriter => PrintWriter()
	       application : 서버 정보 (서버관리)
	       		=> getRealPath() => 실제 톰캣이 읽어가는 위치
	       		=> Controller *** / ServletContext
	       config => web.xml
	       		=> ServletConfig
	       exception : try~catch
	       		=> Exception
	       page => this 
	       		=> Object
	       ** session : 서버에 필요한 정보 저장
	       		=> HttpSession
	       	  => 사용자 정보 (로그인) / 장바구니 => 임시기억장소
	       	  => 전역변수 (공유변수) => 모든 JSP에서 사용이 가능
	       	  ** request => 매개변수 => 모든 JSP마다 한개씩 가지고 있다
	       	  	 => 화면 변경 / 새로고침 => 자동으로 초기화
	       	  	 => session / cookie => 생성 
	       	  	 => ================ 임시저장
	       	  	 	getSession(), getCookie()
	       ======================================================
	       동작
	          => 1. JSP소스 생성 => 실행
	          	 2. JSP를 자바로 변경
	          	 	aaa.jsp => aaa_jsp.java
	             3. 컴파일 => .class
	             	=> JVM이 .class로드
	             	=> 한줄씩 번역 시작
	             	=> out.write() => 메모리 출력
	             						 ㅣ
	             					  브라우저에서 읽어서 출력
	             4. jsp
	             	1) => _jspServie() => 사용자 요청시 마다 호출되는 메소드
	             		  {
	             		  	 =========
	             		  	 여기서 첨부되는 소스 코딩 (메소드영역에서 코딩)
	             		  	 =========
	             		  }
	             	2) => JSP에서 모든 HTML앞에는 out.write()가 생략되어있다 (코딩을 더 편하게 하게 위함)
	             
	             5. servlet / jsp
	             	  ㅣ			ㅣ컴파일없이 새로고침
	              수정시마다 컴파일 
	              
	       	=> 주요 메소드
	       	   request
	       	   	  = String getParameter() : 단일값을 받는 경우
	       	   	   	<input type=text,radio,password,file..>
	       	   	   	<textarea>,<select>
	       	   	   	=> <form => submit> => 입력된 값만 전송
	       	   	   	
	       	   	  = String[] getParameterValues() : 다중값 받기 (checkbox)
	       	   	  	** 웹은 모든 데이터 String
	       	   	  	   => 변환 => Wrapper 
	       	   	  
	       	   	  = 사용자 요청 ===========> 서버(웹서버 => 톰캣(WAS)) =========> 개발자
	       	   	  			   한글(encoding)					 한글(decoding) => request.setCharacterEncoding("UTF-8")*****
	       	   	  	http://localhost/JSPBasicProject_7/jsp/a.jsp?name=%ED%99%8D%EA%B8%B8%EB%8F%99
	       	   	  	자바 : 한글(2byte) ==> 서버(1byte)						=> 홍길동이 바이트단위로 인코딩된 모습
	       	   	  		      => byte로 변환 (인코딩) =====> 2byte로 변환 (디코딩)
	       	   	  						
	       	   	  = setAttribute, getAttribute : 추가된 내용 받기
	       	   	  	============  ============
	       	   	  					ㅣ ${name} => request.getAttribute("name")
	       	   	  	데이터를 추가해서 다른 JSP로 전송				
	       	   	  	=========================== MVC (JSP는 출력용도로 (View))
	       	   	  	
	       	   	  = getRequestURI, getRequestURL, getContextPath
	       	   	  = getRemoteAddr()
	       	   	
	       	  response
	       	  	= addCookie() => @Cookies()
	       	  	= sendRedirect() => return "redirect:"
	       	  	= setHeader() => 
	       	  	
	       	  out 
	       	  	= clear()
	       	  	= print() / write()
	       	  
	       	  pageContext
	       	  	= include()
	       	  	= forward()
	       	  	
	       	  application
	       	  	= getRealPath()
	       	  	= getInitParameter()
	       	 	
	       	  exception
	       	  	= getMessage()
	       	  	
	       	  => 데이터베이스
	       	  	 JDBC : 연결 / 해제 => 시간이 많이 걸린다 
	       	  	 DBCP : 연결을 미리 설정하고 반환 => 재사용
	       	  	  ㅣ
	       	  	 ORM : 라이브러리 제작 (MyBatis/JPA)
	       	  	 
			  => 
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="a.jsp?name=홍길동">전송</a>
</body>
</html>