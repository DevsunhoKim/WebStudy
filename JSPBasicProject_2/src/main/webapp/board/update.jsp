<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%
	// 데이터 받기
	String no=request.getParameter("no");
	String curpage=request.getParameter("page");
	
	// no값이 가지고 있는 데이터 읽기
	BoardDAO dao=BoardDAO.newInstance();
	
	// 화면출력
	BoardVO vo=dao.boardUpdateData(Integer.parseInt(no));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/table.css">
<style type="text/css">
img#main{
	margin-top: 50px;
}
a{
	color: black;
	text-decoration: none;
	font-size: 13px;
}
a:hover{
	color: orange;
	text-decoration: underline;
}
</style>
</head>
<body>
	<center>
		<img id="main" src="https://i0.wp.com/aikidonews.co.kr/wp-content/uploads/2017/03/QA-e1488530256249.jpg?resize=500%2C269" width="700" height="130" >		
		<form method=post action="update_ok.jsp">
		<table class="table_content" width="800">
			<tr>
				<th width=20%>이름</th>
				<td width=80%>
					<input type=text name=name size=15 required value="<%=vo.getName()%>">
					<%-- 비밀번호 등 감춰서 데이터 보내야할 때 => hidden --%>
					<input type="hidden" name="no" value="<%=vo.getNo() %>">
					<input type="hidden" name="page" value="<%=curpage %>">
				</td>
			</tr>
			<tr>
				<th width=20%>제목</th>
				<td width=80%>
					<input type=text name=subject size=45 required value="<%=vo.getSubject()%>">
				</td>
			</tr>
			<tr>
				<th width=20%>내용</th>
				<td width=80%>
					<textarea rows=10 cols=60 name=content required><%=vo.getContent()%></textarea>
				</td>
			</tr>
			<tr>
				<th width=20%>비밀번호</th>
				<td width=80%>
					<input type=password name=pwd size=10 required>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="text-center">
					<button>수정</button>
					<input type=button value="취소" onclick="javascript:history.back()">
				</td>
			</tr>
		</table>
		</form>
	</center>
</body>
</html>