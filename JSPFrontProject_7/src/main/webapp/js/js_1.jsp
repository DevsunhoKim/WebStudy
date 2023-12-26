<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
      내장 객체
      1) 브라우저 내장 객체
         window : 브라우저 창 제어
                 => open
                 => close
         document : 화면 (HTML 태그) => body
                  => querySelector()
                  => write
         history : 기록 정보
                 => back() , go() => 이전화면 이동
         location : 화면 이동 정모
                 => href 
      2) 내장 객체
         = Number()
         = parseInt()
         = String() ===> 형변환
         *** 웹의 단점 : 모든 데이터가 문자열로 되어 있다
         String / Date / Array 
         ===================== 특별한 경우가 아니면 자바에서 처리된다
         = 서버에서 데이터 읽기 => ajax / axios
                                  ======  vue/react
         
         String => 유효성 검사 (오라클 데이터)
         ======
         1. length => 입력된 문자의 갯수 => 비밀번호
         2. charAt(number)
                  =======  문자열 번호
                  Hello
                  01234 => charAt(4) => o
         3. indexOf() => 해당 문자열 찾기
            indexOf('찾는 문자열',fromIndex)
             => Number (return) -1은 존재하지 않는 경우
         4. lastIndexOf('찾는 문자열',fromIndex)
         ========================== 서제스트(자동 완성기)
         > 자음으로 찾기 => PROCEDURE 
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
</body>
</html>