<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*"%>
<%--
	JSP => 1. 화면 출력 => doGet()
		   2. 요청값을 받아서 처리 => 종료하면 화면 이동 => doPost()
		   		=> HTML이 필요없다
--%>
<%
	// 1. 한글변환(한글디코딩) => <jsp:useBean> => <jsp:setProperty property="*">
	//							객체(vo,dao)를 만듬     모든 request값 다 받아줌		 
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	
	BoardVO vo=new BoardVO();
	vo.setName(name);
	vo.setSubject(subject);
	vo.setContent(content);
	vo.setPwd(pwd);
	
	// 오라클 연동 => BoardDAO
	// cf) Spring => public void insert(BoardVO vo)
	BoardDAO dao=BoardDAO.newInstance();
	dao.boardInsert(vo);
	// 화면 이동 => response.sendRedirect("xx.jsp");
	response.sendRedirect("list.jsp");
%>