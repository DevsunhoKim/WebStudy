<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*"%>
<%-- 객체 생성 => new --%>
<jsp:useBean id="dao" class="com.sist.dao.DataBoardDAO"/>
<%
	List<DataBoardBean> list=dao.boardListData();
	// 파일 업로드 / 다운로드
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../jsp/table.css">
</head> 
<body>
  <center>
  	<h1>게시판</h1>
  	<table class="table_content" width="700">
  	  <tr>
  	    <td>
  	      <a href="insert.jsp">새 글</a>
  	    </td>
  	  </tr>	
  	</table>
  	<table class="table_content" width="700">
  	  <tr>
  	    <th width="10%">번호</th>
  	    <th width="45%">제목</th>
  	    <th width="15%">이름</th>
  	    <th width="20%">작성일</th>
  	    <th width="10%">조회수</th>
  	  </tr>	
  	  <%
  	  	 for(DataBoardBean vo:list){
  	  %>
  	  		<tr class="dataTr">
		  	    <td width="10%" class="text-center"><%=vo.getNo() %></td>
		  	    <td width="45%"><a href="detail.jsp?no=<%=vo.getNo()%>"><%=vo.getSubject() %></a></td>
		  	    <td width="15%" class="text-center"><%=vo.getName() %></td>
		  	    <td width="20%" class="text-center"><%=vo.getRegdate() %></td>
		  	    <td width="10%" class="text-center"><%=vo.getHit() %></td>
		  	</tr>	
  	  <%		 
  	  	 }
  	  %>
  	</table>
  </center>
</body>
</html>