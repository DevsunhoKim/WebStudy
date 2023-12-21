<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// 다중 조건문
window.onload=function(){
	
	let kor=90
	let eng=85
	let math=78
	
	let total=kor+eng+math
	let avg= total/3.0
	
	document.write("국어:"+kor+"<br>")
	document.write("영어:"+eng+"<br>")
	document.write("수학:"+math+"<br>")
	document.write("총점:"+total+"<br>")
	document.write("평균:"+Math.round(avg)+"<br>")
	
	// 다중 조건문
	let score='A'; // 변수 => 초기화
	/*
	if(avg>=90)
		score='A'
	else if(avg>=80)
		score='B'
	else if(avg>=70)
		score='C'
	else if(avg>=60)
		score='D'
	else
		score='F'
		*/
    switch(Math.round(avg/10))
    {
    case 10:
    case 9:
     score='A'
     break
    case 8:
     score='B'
     break
    case 7:
     score='C'
     break
    case 6:
      score='D'
       break
      default:
     score='F'
    }
	
   document.write("학점:"+score)
	
}
</script>
</head>
<body>

</body>
</html>