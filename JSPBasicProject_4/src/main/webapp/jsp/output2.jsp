<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.bean.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%-- Student bean=new StudentBean(): 메모리 할당 --%>
<jsp:useBean id="bean" class="com.sist.bean.StudentBean">
  <jsp:setProperty name="bean" property="*"/>
  <%-- useBean으로 객체 생성하고 property에 *을 쓰면 모든 변수 만들어줌 --%>
  <%-- getParameter로 값받아서 다시 bean에 set으로 넣는것보다 위의 한두줄로 처리가능하다 --%>
  <%--
  		-- jsp 액션태그 => list/insert

		<jsp:useBean> : 객체 생성
			id="" => 객체명
			class="" => 클래스
			=> 리플렉션
				클래스이름으로 메모리 할당 (new없이)
				Class.forName()
			scope: 사용범위 (메모리 해제되는 시점)
			  => page : jsp파일에서 사용 (default)
			  	 : 화면 이동 / 새로 고침
			  => session, request, application
			  	 =======  =======  ===========
			  	 프로그램실행중   요청      공유 : 전체 사용이 가능 (전역변수)
			     
		<jsp:setPropery> 
			name : 객체명 지정 => id명과 동일 
			property : 변수명 지정
			property="name" => setName() => 설정
			property="*" => 모든 setter를 호출해서 값을 설정
			property="name"
			임의로 설정 => property="name" value="홍길동"
						setName("홍길동")
			=> 변수에 따라서 => 형변환
			
		<jsp:include page="">
   --%>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>학생 정보</h1>
	  학번:<%=bean.getHakbun() %><br>
	  학번:<jsp:getProperty name="bean" property="hakbun"/><br>
	  이름:<%=bean.getName() %><br>
	  국어:<%=bean.getKor() %><br>
	  영어:<%=bean.getEng() %><br>
	  수학:<%=bean.getMath() %><br>
</body>
</html>