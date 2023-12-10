<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="table.css">
</head>
<body>
	<center>
	  <h1>학생정보</h1>
	  <form method="post" action="output2.jsp">
	  <table class="table_content" width=350>
	    <tr>
	      <th width=20%>학번</th>
	      <td width=80%>
	        <input type=text name=hakbun size=15>
	      </td>
	    </tr>
	    <tr>
	      <th width=20%>이름</th>
	      <td width=80%>
	        <input type=text name=name size=15>
	      </td>
	    </tr>
	    <tr>
	      <th width=20%>국어</th>
	      <td width=80%>
	        <input type=text name=kor size=15>
	      </td>
	    </tr>
	    <tr>
	      <th width=20%>영어</th>
	      <td width=80%>
	        <input type=text name=eng size=15>
	      </td>
	    </tr>
	    <tr>
	      <th width=20%>수학</th>
	      <td width=80%>
	        <input type=text name=math size=15>
	      </td>
	    </tr>
	    <tr>
	      <td colspan="2" class="text-center">
	      	<button>전송</button>
	      </td>
	    </tr>
	  </table>
	  </form>
	</center>
</body>
</html>