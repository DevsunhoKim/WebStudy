<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	let a=10;
	let b=5;
	console.log("a===b"+(a===b))// false
	console.log("a!==b"+(a!==b))// true
	console.log("a<b"+(a<b))//false
	console.log("a>b"+(a>b))//true
	console.log("a<=b"+(a<=b))//false
	console.log("a>=b"+(a>=b))//true
	// 알파벳 A<B<C... 가<나<다...
	let c="Hello";
	let d="JavaScript"
	console.log("c===d"+(c===d))// false
	console.log("c!==d"+(c!==d))// true
	console.log("c<d"+(c<d))//true
	console.log("c>d"+(c>d))//false
	console.log("c<=d"+(c<=d))//true
	console.log("c>=d"+(c>=d))//false
}
</script>
</head>
<body>

</body>
</html>