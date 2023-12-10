<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%
	// 1. 요청 데이터 가지고 오기
	request.setCharacterEncoding("UTF-8"); // 한글 데이터가 넘어오면 반드시 디코딩 필수!

	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	
	// page, no 값
	String no=request.getParameter("no");
	String curpage=request.getParameter("page");
	
	BoardVO vo=new BoardVO();
	vo.setName(name);
	vo.setSubject(subject);
	vo.setContent(content);
	vo.setPwd(pwd);
	vo.setNo(Integer.parseInt(no));	
	// 2. 데이터베이스 연동
	BoardDAO dao=BoardDAO.newInstance();
	boolean bCheck=dao.boardUpdate(vo);
	// 3. 화면 이동
	// 	=> 비밀번호 맞는 경우 => history.back()
	if(bCheck){
		response.sendRedirect("detail.jsp?no="+no+"&page="+curpage);
		// sendRedirect는 GET방식이다
	}
	//	=> 비밀번호 틀린 경우 => detail.jsp
	else{
%>
		<script>
		alert("비밀번호가 틀립니다!!");
		history.back();
		</script>
<%
	}
%>