<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
     연산자 
     1) 단항연산자 
        = 증감연산자 (++,--)
        = 부정연산자 (!)
     2) 형변환 연산자 
        = 숫자변환 : Number(문자) ,  parseInt(문자열)
          (int)10.5 => X
        = 문자열 변환 : String(10) => "10"
        = Boolean : Boolean(숫자)
                    Boolean(1) = true , Boolean(0) = false
     3) 이항연산자 
        = 산술연산자 : + , - , / , * , %
                    == 문자열 결합으로 사용 
        = 비교연산자 : === , !== , < , > , <= , >= => 결과값 : boolean
                    (==,!= 혼용) => 경고 
                    ** 문자열도 비교가 가능 
        = 논리연산자 : && , || 
        = 대입연산자 : = , += , -=
     4) 삼항연산자 : (조건)?값1:값2 
                   true => 값1
                   false => 값2
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// 292page 연산자 
window.onload=function(){
	// 단항연산자 (++,--,!)
	let a=10;
	let b=a++; // 후치 연산자 => 대입=>증가 
	document.write("a="+a+"<br>") // a=11
	document.write("b="+b+"<br>") // b=10
	// b=a ==> a=a+1
	a=10;
	b=++a;
	// a=a+1 ==> b=a
	document.write("a="+a+"<br>") // a=11
	document.write("b="+b+"<br>") // b=11
	
	let c=false;
	c=!c;
	document.write("c="+c+"<br>") 
	
	let d=1;
	d=!d;
	document.write("d="+d+"<br>") // false
	// 0이 아닌 모든수는 true => 0,0.0 => false
	
}
</script>
</head>
<body>

</body>
</html>