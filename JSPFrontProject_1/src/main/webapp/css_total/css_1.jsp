<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
      1. CSS 
         => 자바스크립트 적용 (DOM Script)
              => 태그에서 이벤트 발생 
         => Selector
            = 기본 
              => 태그명 
                 태그명 {
                    속성:값
                 }
                 * $('태그명').click(function(){}):Jquery
                   document.querySelector("태그명");일반 자바스크립트
                   new Vue({
                     el:'태그명'
                   })
                 * 많이 사용되지 않는 이유 => 태그가 많다
              =============구분자 ================
              => ID명 => 중복이 없는 구분자
                 #ID명{
                   속성:값
                 }
                 * $('#ID명').change(function(){처리})
                 * document.querySelector("#ID명");  
              => Class명 => 중복이 있는 구분자 
                 .class명{
                   속성:값
                 }
                 * $('.class명').keyup(function(){})
                 * document.querySelector(".class명");
              ===================================
           속성 선택자  : input / img / a
           =========
           태그명[속성=값]  ==> equals 
           태그명[속성^=값] ==> startsWith => http/https
           태그명[속성*=값] ==> contains => 크롤링 
           img[src*=/recipe/]
           태그명[속성$=값] ==> endsWith => 이미지만 가지고 오고 싶은 경우
                         ==> 후기 게시판 
           img[src$='jpg|png|gif']
           => $('img[src$="jpg|png|gif"]')
           *** HTML => 계층 구조 (트리 형태) 
                               ========= DOM
                    <div>
                      <h1></h1>
                      <span>
                        <h1></h1>
                      </span>
                    </div>
           후손 선택자 
                      div
                       |
                    ---------
                    |       |
                   h1      span  ==> 자손 div > h1 , div > span
                            |
                            h1   ==> 후손 div h1 
                      
           자손 선택자 
           인접 => div > h1+span  => th+td
                  div > h1~span
          ==========================================
          반응 선택자 : ID명,class명,태그명:hover 
                                 =========== mouseover
          구조 선택자 : nth-child(수열)
                     nth-child(2n) ==> n=0  => 0 2 4...
                     nth-child(2n+1) ==> n=0 => 1 3 5...
          문자 선택자 : ::after , ::before
          ============================================
          
    # 192페이지 => 위치속성 
      ---------------------------
      static : 태그에 맞추어서 배치 (순서대로 배치 => 디폴트)
      ---------------------------
      relative : 상대 태그 좌표 이용 (옆에 있는 태그를 기준점)
      ---------------------------
      absolute : 절대 좌표 
      ---------------------------
      fixed : 고정 => 상세보기 
      ---------------------------
      => 위치 지정 
         top / left / right / bottom 
      => float (left|right) => 옆으로 붙이는 경우) => 레이아웃 
      => 해제 : clear: both 
      => z-index: 레이어 
 --%>
 <%--
            | top
          -------
     --- left    --- right
          -------
            | bottom
  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
img{
   width: 200px;
   height: 250px;
   margin-right: 30px;
   float: left
}
</style>
</head>
<body>
  <h1>노량-죽음의 바다</h1>
  <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg">
  <pre>임진왜란 발발로부터 7년이 지난 1598년 12월.
이순신(김윤석)은 왜군의 수장이던 도요토미 히데요시가 갑작스럽게 사망한 뒤 왜군들이 조선에서 황급히 퇴각하려 한다는 것을 알게 된다.
“절대 이렇게 전쟁을 끝내서는 안 된다”
왜군을 완벽하게 섬멸하는 것이 이 전쟁을 올바르게 끝나는 것이라 생각한 이순신은
명나라와 조명연합함대를 꾸려 왜군의 퇴각로를 막고 적들을 섬멸하기로 결심한다.
하지만 왜군의 뇌물 공세에 넘어간 명나라 도독 진린(정재영)은 왜군에게 퇴로를 열어주려 하고,
설상가상으로 왜군 수장인 시마즈(백윤식)의 살마군까지 왜군의 퇴각을 돕기 위해 노량으로 향하는데…
2023년 12월, 모두를 압도할 최후의 전투가 시작된다!</pre>
</body>
</html>