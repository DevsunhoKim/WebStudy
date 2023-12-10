<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%
	//1. 한글변환(한글디코딩) => <jsp:useBean> => <jsp:setProperty property="*">
	//							객체(vo,dao)를 만듬     모든 request값 다 받아줌		 
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	/*
							no gi gs gt root depth
		AAAAA				1  1  0  0  0    0=>1
			=> BBBBB		2  1  1  1  1    0=>1
				=> CCCC		3  1  2  2  2	 0
	*/
	// hidden으로 된 no, page
	String pno=request.getParameter("pno");
	String curpage=request.getParameter("page");
	
	BoardVO vo=new BoardVO();
	vo.setName(name);
	vo.setSubject(subject);
	vo.setContent(content);
	vo.setPwd(pwd);
	
	// 오라클 연동 => BoardDAO
	// cf) Spring => public void insert(BoardVO vo)
	BoardDAO dao=BoardDAO.newInstance();
	dao.boardReplyInsert(Integer.parseInt(pno), vo);
	// 답변받는 방법
	
	// 화면 이동 => response.sendRedirect("xx.jsp");
	response.sendRedirect("list.jsp?page="+curpage);
	
%>