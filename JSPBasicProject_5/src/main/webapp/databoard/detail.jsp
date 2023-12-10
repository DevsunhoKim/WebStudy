<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*" %>
<jsp:useBean id="dao" class="com.sist.dao.DataBoardDAO"/>
<%
	String no=request.getParameter("no");
	DataBoardBean vo=dao.boardDetail(Integer.parseInt(no));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../jsp/table.css">
<style type="text/css"> 
a{
	color: black;
	text-decoration: none;
	font-size: 13px;
}
a:hover{
	color: orange;
	text-decoration: underline;
}
span{
	font-size: 13px;
}
</style>
</head>
<body>
	<center>
		<img id="main" src="https://i0.wp.com/aikidonews.co.kr/wp-content/uploads/2017/03/QA-e1488530256249.jpg?resize=500%2C269" width="700" height="130" >		
		<table class="table_content" width="800">
			<tr>
				<th width=20%>번호</th>
				<td width=30% class="text-center"><%=vo.getNo() %></td>
				<th width=20%>작성일</th>
				<td width=30% class="text-center"><%=vo.getRegdate() %></td>
			</tr>
			<tr>
				<th width=20%>이름</th>
				<td width=30% class="text-center"><%=vo.getName() %></td>
				<th width=20%>조회수</th>
				<td width=30% class="text-center"><%=vo.getHit()%></td>
			</tr>
			<tr>
				<th width=20%>제목</th>
				<td colspan=3><%=vo.getSubject() %></td>
			</tr>
			<%
				if(vo.getFilesize()!=0)
				{
			%>
				<tr>
					<th width=20%>첨부파일</th>
					<td colspan=3><a href="download.jsp?fn=<%=vo.getFilename() %>"><%=vo.getFilename() %></a>&nbsp;(<%=vo.getFilesize() %>Bytes)</td>
				</tr>	
			<%		
				}
			%>
			<tr>
				<td colspan=4 class=text-left align=top height=200><pre style="white-space: pre-wrap;"><%=vo.getContent() %></pre></td>
			</tr>
			<tr>
				<td colspan=4 class=text-right>
				  <a href="delete.jsp?no=<%=vo.getNo()%>">삭제</a>&nbsp;
				  <a href="list.jsp">목록</a>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>