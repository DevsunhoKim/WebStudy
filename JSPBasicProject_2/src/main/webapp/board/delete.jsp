<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%
	// 1. 요청값을 받는다
	String no=request.getParameter("no");
	String curpage=request.getParameter("page");
	String pwd=request.getParameter("pwd");
	// 2. 데이터 베이스 처리
	BoardDAO dao=BoardDAO.newInstance();
	// 삭제처리
	boolean bCheck=dao.boardDelete(Integer.parseInt(no), pwd);
	// 3. 화면 이동 => 기존의 화면 이동(list.jsp) / 화면 출력
	if(bCheck){
		response.sendRedirect("list.jsp?page="+curpage);
	}
	else{
	%>
			<script>
			alert("비밀번호가 틀립니다")
			history.back();
			</script>
	<%		
	}
	/*
		list.jsp 		detail.jsp
		========		==========
		ㅣinsert.jsp		ㅣreply.jsp => list.jsp  
		ㅣdetail.jsp		ㅣupdate.jsp => detail.jsp
						ㅣdelete.jsp => list.jsp
		insert => list.jsp
	*/
%>