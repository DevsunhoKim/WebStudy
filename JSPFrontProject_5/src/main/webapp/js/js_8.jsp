<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 고전 이벤트 모델 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	let img=document.querySelector("img");
	img.onmouseover=function(){
		img.style.opacity=0.5
	}
	img.onmouseout=function(){
		img.style.opacity=1
	}
	
	let button=document.querySelector("button")
	button.onclick=function(){
		alert("버튼 클릭!!")
	}
}
</script>
</head>
<body>
<img src="../image/m3.jpg" width="200" height="250">
<p>
<button>클릭</button>
</body>
</html>