<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// 384page => 필요시에는 class 추가 , class 삭제를 할 수 있다
$(function(){
	$('#box').hover(function(){ // if
		$('#box').addClass('hover')
	},function(){ // else
		$('#box').removeClass('hover')
	})
})
</script>
<style type="text/css">
#box{
 width:100px;
 height:100px;
 background-color: red;
}
#box:hover{
 background-color: blue;
 border-radius: 50px;
}
</style>
</head>
<body>
	<div id="box"></div>
</body>
</html>