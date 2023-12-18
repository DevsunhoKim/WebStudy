<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div.a{
   float: left;
   margin-right: 10px;
}
img{
   width: 100px;
   height: 120px;
}
div.b{
   width: 750px;
   height: 300px;
   clear: both;
}
#main{
  width:750px;
  height: 300px;
}
.img:hover{
   border: 2px solid red;
   cursor: pointer;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// main => window.onload=function(){소스 코딩}
$(function(){
	$('.img').hover(function(){
		/* $(this).css('border','2px solid red')
		       .css('cursor','pointer'); */
		let src=$(this).attr("src");
		$('#main').attr("src",src);
	});
});
</script>
</head>
<body>
	<div class="a"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg" class="img"></div>
	<div class="a"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87784/87784_320.jpg" class="img"></div>
	<div class="a"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87554/87554_320.jpg" class="img"></div>
	<div class="a"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87716/87716_320.jpg" class="img"></div>
	<div class="a"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87716/87716_320.jpg" class="img"></div>
	<div class="a"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87757/87757_320.jpg" class="img"></div>
	<div class="a"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87888/87888_320.jpg" class="img"></div>
	<div class="b"><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg" id="main"></div>
</body>
</html>