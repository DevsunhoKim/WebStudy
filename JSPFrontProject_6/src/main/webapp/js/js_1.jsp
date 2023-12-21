<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%--
    setInterval() ==> 계속 수행
    SetTimeout() ==> 
  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
let index=1
 window.onload=function(){
	 setInterval('show()',500);
 }
 function show() 
 {
	 index++
	 if(index>7)
		 index=7
     let img=document.querySelector('img')
     img.src="../image/m"+index+".jpg"
 }
</script>
</head>
<body>
<img src="../image/m1.jpg" width="600" height="400">
</body>
</html>