<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sist.dao.*"%>
<%
	/*
		1. 회원가입, 회원수정, 예매, 글쓰기 => 입력창, 처리창 따로 => jsp파일 2개
			=> INSERT, UPDATE, DELETE => 창을 따로 나눠야함
			=> SELECT (검색기능 등) => 하나의 창에서 처리가능
	*/
	// 1. 요청 데이터 받기 
	// ?no= &page=
	// 디코딩 처리는 한글변환할때만 써주면 됨 (request.setCharacterEncoding)
	// => 넘어오는 값이 숫자나 알파벳이면 상관없음
	String no=request.getParameter("no");
	String curpage=request.getParameter("page");
	// 2. 오라클에서 데이터를 가지고 온다 => DAO
	BoardDAO dao=BoardDAO.newInstance();
	BoardVO vo=dao.boardDetail(Integer.parseInt(no));
	// 3. 화면 출력
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
span{
	font-size: 13px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let i=0; // 전역변수
$(function(){
	// window.onload=function(){}
	$('#delBtn').click(function(){
		if(i==0){
			$('#del').show();
			$('#delBtn').text("취소");
			$('#pwd').focus();
			// document.getElmentById("pwd");
			i=1;
		}
		else{
			$('#del').hide();
			$('#delBtn').text("삭제");
			i=0;
		}
		// $.ajax({})
	});
});
</script>
</head>
<body>
	<center>
		<img id="main" src="https://i0.wp.com/aikidonews.co.kr/wp-content/uploads/2017/03/QA-e1488530256249.jpg?resize=500%2C269" width="700" height="130" >		
		<table class="table_content" width="800">
			<tr>
				<th width=20%>번호</th>
				<td width=30% class="text-center"><%=vo.getNo() %></td>
				<th width=20%>작성일</th>
				<td width=30% class="text-center"><%=vo.getDbday() %></td>
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
			<tr>
				<td colspan=4 class=text-left align=top height=200><pre style="white-space: pre-wrap;"><%=vo.getContent() %></pre></td>
			</tr>
			<tr>
				<td colspan=4 class=text-right>
					<a href="reply.jsp?no=<%=no%>&page=<%=curpage%>">답변</a>&nbsp;
					<a href="update.jsp?no=<%=no%>&page=<%=curpage%>">수정</a>&nbsp;
					<span id=delBtn style="cursor:pointer">삭제</span>&nbsp;
					<a href="list.jsp?page=<%=curpage%>">목록</a>
					<%-- history.back()을 주면 이전화면이라 조회수증가가 되지 않은 상태로 보여줌 --%>
				</td>
			</tr>
			<tr style="display:none" id=del>
				<td colspan=4 class=text-right>
				<form method="post" action="delete.jsp">
				<input type="hidden" name="no" value="<%=no %>">
				<input type="hidden" name="page" value="<%=curpage %>">
				비밀번호:<input type="password" name=pwd size=15 id="pwd" required>
				<button>삭제</button>
				</form>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>