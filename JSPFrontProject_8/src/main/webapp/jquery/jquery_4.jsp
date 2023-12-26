<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
//370page=> 라이브러리 설정 => 시작(window.onload => function(){})
//371page=> 문서 객체 선택 $(CSS Selector)
// 373page=> 문서 객체 조작 => text() ,html() , arrt()
$(function(){
	//$('img').attr('src','https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg')
	//let img=$('img').attr('src');
	//alert(img)
	let src=$('script').attr('type')
	alert(src)
})

</script>
</head>
<body>
 <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg" width=250 height=300>
</body>
</html>