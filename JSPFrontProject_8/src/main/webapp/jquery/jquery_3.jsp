<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
/*
 *  문서 객체(태그) 조작 
    1) <태그>(제어하는 문자열)</태그>
        getter / setter
       => text() / text("추가될 문자열")
       => textContent
 */
$(function(){
	//let h1=$('h1').text()
	//alert(h1)
	//$('h1').text("Jquery 값 입력")
	//let div=$('div').text()
	//alert(div)
	//let div=$('div').html(); // innerHTML 
	//alert(div)
	
	//$('div').html("<font color=red>Hello Jquery</font>")
	//val() =>input => value를 지정
	let input=$('input').val()
	alert(input)
	$('input').val("id가 없습니다")
})
</script>
</head>
<body>
 <div><h1>Hello Jquery</h1></div>
 <input type="text" size="20" value="Hello">
</body>
</html>