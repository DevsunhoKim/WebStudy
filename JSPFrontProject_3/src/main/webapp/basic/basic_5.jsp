<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
     논리 연산자 : && , ||
     && => 범위에 포함 , 직렬연산자 (조건 두개가 동시에 true=>true)
     || => 범위 밖 , 병렬연산자 (조건 둘중에 한개가 true=>true)
     
     연산방법 
       (조건) && (조건)
       -----    -----
        결과      결과
         |        |
         ----------
             |
           최종 결과 
           
      ================================
                     &&       ||
      ================================
      true true      true    true
      ================================
      true false     false   true
      ================================
      false true     false   true
      ================================
      false false    false   false 
      ================================
      
      let i=(6>7) && (6!==7) 
            =====    =======
            false     true 
            ---------------
                   |
                  false
      let i=(6>7) || (6!==7) 
            =====    =======
            false     true 
            ---------------
                   |
                  true
                  
      대입 연산자 
      = 
      +=
      -= 
      
     let a=10;
     a+=20 =======> a=a+20 ==>30
     a-=10 =======> a=a-10 ==>10
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	let i=(6>7) && (6!==7) 
	document.write("i="+i+"<br>");
	i=(6>7) || (6!==7)
	document.write("i="+i+"<br>");
	
	let k=10;
	k+=10;
	document.write("k="+k+"<br>");
	
	k=10;
	k-=10;
	document.write("k="+k+"<br>");
	// 변수선언하면 무조건 초기화를 한다 ... 
	/*
	   let a; // 선언
	   a=100; // 초기화 
	   
	   let a=100; // 선언과 동시에 초기화
	*/
	let o=(6===7)?"YES":"NO"
	document.write("o="+o)
}
</script>
</head>
<body>

</body>
</html>