<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
window.onload=function(){
	let btn=document.querySelector('input')
	btn.addEventListener('click',function({
		show()
	}))
}
function show()
{
  location.href="ok.jsp"
}
</script>
<body>
 <center>
  <input type="button" value="회원가입">
 </center>
</body>
</html>