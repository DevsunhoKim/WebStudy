<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 *  1. 자바 : main
    2. 자바스크립스 : window.onload=function()
    3. Jquery : $(function({}))
    4. VueJS : mounted()
    5. React : componentDidMounted()
    
    ES5 ==> ES6
    변수 => 자동 지정 변수
    var      let ======> 사용범위 (지역변수 => 메모리 해제)
 */
 window.onload=function(){
		
	console.log("a="+a) //undifined
	if(true)
		{
		    var a=10 
		    console.log("if:a="+a)
		}
	
 }
</script>
</head>
<body>

</body>
</html>