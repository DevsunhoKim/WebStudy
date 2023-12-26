<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    JQuery : 자바스크립트 라이브러리
    1. 라이브러리 다운로드 / 원격
       원격
       <script type="text/javascript"
           src="http://code.jquery.com/jquery.js">
           *** jquery가 충돌이 되면 안된다 => main.jsp
    2. jquery의 시작
       => window.onload=function(){}
       => $(document).ready(function(){})
          ================= 생략
          $(function(){}) ==> 한 번만 사용
    3. $() => 표준화
       ====  selector (CSS)
       ==== document.querySelector(CSS)
       1) 태그
       2) 아이디
       3) 클래스
       document.querySelector("tr") => $("tr")
       document.querySelector("#aaa") => $("#aaa")
       document.querySelector(".bbb") ? $(".bbb")
    4. $(태그 읽기) => CSS 선택자와 동일
       $(내장 객체) => $('window') , $('document')
       => Vue : mounted() / React : componentDidMount()
                                    ==================
                                    useEffect() => React-Query
    
    5. Jquery는 HTML 태그를 제어하는 프로그램
       =============================  DOM Script
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
/* 	let a=document.querySelector("#a");
	a.style.color="red"
	a.style.backgroundColor="yellow" */
	
	/* $('#a').css("color","red").css("backgroundColor","yellow") */
/* 	$('#a').css({"color":"red","backgroundColor","green"})
	$('.c').css({"color":"yellow","backgroundColor","blue"})
	let c=document.querySelector('.c')
	c.style.color="blue" */
	
	$('h1').click(function(){
		alert("Hello Jquery")
	})
})
</script>
</head>
<body>
	<h1 id="a">Hello Jquery</h1>
	<h1 class="c">Hello Jquery</h1>
	<h1 id="b">Hello Jquery</h1>
	<h1 class="c">Hello Jquery</h1>
	<h1 value="d">Hello Jquery</h1>
</body>
</html>