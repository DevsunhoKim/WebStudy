<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- createElement --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	// => react => jsx
	let h3=document.createElement("h1"); // <h3></h3>
	let text=document.createTextNode("Hello h3태그");
	h3.appendChild(text)
	
	document.body.appendChild(h3)
}
</script>
</head>
<body>

</body>
</html>