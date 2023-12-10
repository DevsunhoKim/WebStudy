<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 한글 => 디코딩 => 모든 JSP마다 내장객체를 가지고 있다
	// 	  화면을 바꿀때마다 모든 내장객체는 초기화된다
	//		=> 모든 화면은 한화면에 띄운다면 => 내장객체를 계속초기화할필요없다 => Ajax
	// 	 1-1. 화면 변경 => request가 초기화 => session/ajax
	//	 1-2. forward => URL주소는 변경하지않고 화면만 변경하는 기법 => request유지 (초기화를 계속 할필요없음)
	try{
		request.setCharacterEncoding("UTF-8");
		// 내장 객체
	}catch(Exception ex){}
	// 2. 전송된 값을 받는다
	// <input type=text size=15 name="name"> name에 할당된 값과 일치해야함
	String name=request.getParameter("name");
	String sex=request.getParameter("sex");
	// radio는 name이 동일해야 그룹이 생성 => 한개만 선택
	String tel1=request.getParameter("tel1");
	String tel2=request.getParameter("tel2");
	String tel=tel1+")"+tel2;
	String content=request.getParameter("content");
	String[] hobby=request.getParameterValues("hobby");
	// 여러개의 값을 받을때는 배열로 설정하고 getParameterValues를 쓴다
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%--
		JSP 주석은 사라진다
		HTML 주석은 남아 있다
		HTML+Java를 동시에 주석을 설정
		
		=> <%= %>
		   <%  %> ==> MVC에서는 사용하지 않는다
		   			  Spring에서는 MVC만 사용
		   			  => 태그형으로 제작 : JSTL
		   			  <%= %> => ${}
		   			  
		=> 내장 객체 
			***request : JSP마다 request를 가지고 있다
						 단점은 화면 변경/새로고침 => request는 초기화가 된다
						 => HttpServletRequest의 객체명
						 => jsp페이지로 데이터 전송시에 데이터 전체를 묶어서 보내준다
						 						  ================ request
						 => request는 Map형식을 되어 있다
						 	(키,값) => 키는 중복불가
						 	<input type="text" name="aaa">
						 	<input type="text: name="aaa"> => name이 똑같아서 맨마지막 input만 들고온다 name은 다르게! (checkbox제외)
						 					  ============ 
						 => ?name=aaa => getParameter("name")
						 	 ==== ===
						 	  키   값  => ?page=1
						 	  		     ? page= 1
						 	  		     ====== 공백주면 오류남 
					     => a.jsp
					     	=> null (?없으면 null값)
					     => a.jsp?name=
					     	=> " " (값이 없으면 null값을 받는게 아니라 공백을 받는다)
					     	if(a.equals(""))
					     => form태그를 이용해서 전송 : method:post => action:xx.jsp
					     => <a> ==> get ==> xx.jsp?
					==================================
			***response
			***session
			application : 업로드 => 이미지를 올릴때 realpath에 저장해줘야함(server.core에 있는 메모장코드에 직접 이미지 넣어줘야 바로 불러옴 아니면, 새로고침해야 이미지 올라감)
			===========
			pageContext => RequestDispatcher => include, forward
			  <jps:include>
			out
			=========== 다운로드
 --%>
<body>
	1. ***사용자의 IP :<%=request.getRemoteAddr() %><br>
	2. 서버 정보 :<%=request.getServerName() %><br>
	3. 서버 프로토콜 :<%=request.getProtocol() %><br>
	4. 전송 방식 :<%=request.getMethod() %><br>
	5. PORT : <%=request.getServerPort() %><br>
	6. ***요청 URL : <%=request.getRequestURL() %><br>
	7. ***요청 URI :<%=request.getRequestURI() %><br>
	8. ***ContextPath : <%=request.getContextPath() %>: 루트 폴더<br>
	9. 전송된 값<br>
	   이름 :<%=name %><br>
	   성별 :<%=sex %><br>
	   전화 :<%=tel %><br>
	   소개 :<%=content %><br>
	   취미 :<%
	   			try{
	   				out.write("<ul>");
	   				for(String h:hobby){
	   					out.write("<li>"+h+"</li>");
	   				}
	   				out.write("</ul>");
	   			}catch(Exception ex){
	   				out.write("취미가 없습니다");
	   				// => <%
	   			}
	   		%>
</body>
</html>