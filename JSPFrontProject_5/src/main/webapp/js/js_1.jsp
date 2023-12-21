<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
      자바스크립트 
      = 변수 : let / const / var => 자동 지정 변수 
      = 연산자 : 증감연산자(++,--),부정연산자(!)
               산술연산자 (+,-,*,/,%) 
                + : 산술 / 문자열 결합 
                / : 정수/정수=실수 , 0으로 나누면 오류
               비교연산자 ( ===, !== , < , > , <= , >=)
                 => 문자열 비교 
               논리연산자 (&& , ||)
               대입연산자 ( = , += , -=)
               삼항연산자 ( (조건)?값:값 )
      = 제어문 
             조건문 : 단일조건문 / 선택조건문 
                     if(조건문)
                     {
                        true일때 처리 
                     }
                     ===============
                     if(조건문)
                     {
                        true일때 처리 
                     }
                     else
                     {
                        false일때 처리 
                     }
             반복문 : 
                    ***일반 for
                    for(let i=0;i<=10;i++)
                    {
                       반복 처리 
                    }
                    =======================
                    for in ==> 배열의 인덱스 
                    for(변수 in 배열)  
                    for of ==> 배열의 데이터를 한개씩 읽기
                    for(변수 of 배열)
                    ***map ==> 배열의 데이터를 한개씩 읽기 
                    배열.map(function(데이터){
                    })
                    배열.map((데이터)=>{
                    })
                    forEach ==> 배열의 데이터를 한개씩 읽기 
                    배열.forEach(function(데이터){
                    })
                    배열.forEach((데이터)=>{
                    })
                    ======================= 배열 
              반복제어문 : break => 반복을 중단 
       =============================================
       함수 : 리턴형이 없다 => 데이터형이 동일하기 때문에 
       형식)
            function func_name(매개변수...)
            {
               처리 
               리턴이 있는 경우 
               return 값
            }
            
            let func_name=function(){}
            let func_name=()=>{}
       =============================================
       1. HTML 태그 선택 => 제어 
          ======== 객체 모델 (태그:클래스 , 속성:멤버변수)
          => CSS의 선택자 
          => 1) 속성값 변경 2) 스타일 변경 3) 이벤트 등록 
       2. 이벤트 : 사용자 행위를 했을때 처리 
                 ========= mouse , keyboard...
       3. 브라우저 내장 객체 
          window / location / history / document
       4. 내장 객체 
          string / Date / Number / Math 
       5. ================================
          라이브러리 => JQuery : 자바스크립트 기본 문법을 적용 
       
       341page 
       문서 객체 선택 
       ===========
       태그를 객체로 변환해서 사용 
       태그 선택하는 방법 
       ============== $(Jquery) , e.target (react) , 
                      $ref (vue)       
       자바스크립트 
        = document.getElementById(ID명) 
        ***= document.querySelector("CSS선택자")
          ======================$("CSS선택자")     
          ==> 태그 한개 설정 
        = document.getElementsClassName("클래스명")
        ***= document.querySelectorAll(CSS선택자)  
        = document.getElementByTagName(태그명)
        = document.getElementByName(name)
        ========================================
        createElement("태그명") => 태그 생성 
        createTextNode() => 태그와 태그사이에 값 설정 
        ***appendChild() : 태그안에 다른 태그를 첨부 
         => $("CSS선택자").append()
            v-html
        setAttribute() : 속성 추가 
         => $("CSS선택자").attr(속성명,값)
            v-model
        getAttribute() : 속성값 읽기 
         => $("CSS선택자").attr(속성명)
        
        ==> 태그와 태그사이에 데이터 추가 
            ======================
            html을 추가 => innerHTML 
            문자만 추가  => textContent  ='<h1>aaa</h1>'   
   1. 태그 선택 
      => getElementById()      
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	let div=document.getElementById("box");// 태그 자체를 가지고 온다 
	//div.textContent="<font color=red>취소</font>";
	// $("#box").text()
	div.innerHTML="<font color=red>취소</font>"
	// $('#box').html()
}
</script>
</head>
<body>
  <div id="box">수정</div>
</body>
</html>