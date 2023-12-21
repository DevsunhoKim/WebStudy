<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
     내장 객체
     ======
     String 객체
      => 자바와 유사함
       1)substring() . substr()
       2)trim()
     Math 객체
     Array 객체
     Date 객체
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
window.onload=function(){
	let str="  Hello JavaScript "
	document.write("문자 갯수:"+str.length)
	str=str.trim()
	document.write("문자 갯수:"+str.length)
	
}
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
  margin-top: 50px;
}
.row {
  margin: 0px auto;/* 가운데 정렬*/
  width: 800px;
}
</style>
</head>
<body>
	<div class="container">
	 <div class="row">
	  <input type="text" id="fd" name="fd" size="20"
	  class="input-sm">
	  <input type="button" value="검색" class="btn-sm btn-danger">
	 </div>
	</div>
</body>
</html>