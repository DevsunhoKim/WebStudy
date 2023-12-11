<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<jsp:useBean id="model" class="com.sist.dao.StudentModel" ></jsp:useBean>
<%--
		581page
		기본객체 (내장객체)
		=> ***requestScope / ***sessionScope / applicationScope 
		=> param / pageContext
		EL은 자바변수를 출력하는 것이 아니다
		== request, session에 저장된 데이터 출력
 --%>
<%
	//String name="홍길동";
	//request.setAttribute("name", "심청이");
	//session.setAttribute("name", "박문수");
	// param => getParameter("name")
	// param.key명 => param.name
	// applicationScope => realpath
	/*
		${} => 출력물 (request,session에 담겨 출력을 요청시에만 사용)
	*/
	
	StudentVO vo=model.studentDetailData();
	request.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
학번:${vo.hakbun }<br>
이름:${vo.getName() }<br>
국어:${vo.getKor() }<br>
영어:${vo.eng }<br>
수학:${vo.math }
<%-- ${vo.math}와 ${vo.getMath()}와 같다 (함축)
	 ${vo.math}는 getMath()메소드가 있어야 값을 가져온다 --%>

<%-- 이름은 ${requestScope.name }<br>
이름은 ${sessionScope.name }입니다...<br>
<!-- requestScope,sessionScope 생략가능, 키값같을시 requestScope우선 -->
<!-- $는 일반변수를 출력하는 것이아니라 setAttribute로 설정된 값 출력함 -->
이름은 <%=request.getAttribute("name") %>입니다... --%>
</body>
</html>