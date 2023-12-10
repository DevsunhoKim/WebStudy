<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dao" class="com.sist.dao.BoardDAO"/>
<%-- 메모리 할당 --%>
<jsp:useBean id="bean" class="com.sist.dao.BoardBean">
	<jsp:setProperty name="bean" property="*"/>
	<%-- 
			bean.setName(request.getParameter("name"))
			bean.setNo(Integer.parseInt(request.getParameer("no")))
	--%>
	<%-- 값을 모아서 전달해줌 --%>
</jsp:useBean>
<%
	// 위에서 설정한 id를 객체로 사용가능하다
	// ==> 컴파일시에 자동으로 자바로 변경된다
	dao.boardInsert(bean);
	response.sendRedirect("list.jsp");
%>
