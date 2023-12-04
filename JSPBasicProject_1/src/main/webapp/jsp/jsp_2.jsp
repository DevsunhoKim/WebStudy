<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
    => 스프링 화면 출력(jsp) => ThymeLeaf (html)
      113 page
       =======
        1. 자바 / HTML 분리 
        = 자바를 코딩하는 방법 (스크립트릿)
         1) <% %> : 스크립트 릿
            일반 메소드안에 코딩 => 변수 (지역변수) , 메소드 호출) , 제어문 , 연산자
             => _jspservice() 안에 첨부
             => 자바와 문법이 동일
             => 문장이 끝나면 ;
             => <%
                   여기서 주석
                   /*
                   */
                   //
                %>
         2) <%! %> : 선언문 => 메소드제작 , 멤버변수
          => 클래스 영역에 설정
         3) out.write() => 자바데이터 출력
            ==========
            String name=""
            <%= name%> : => out.write(========)
            
            
            
            
         1. JSP => 데이터 읽기
                   => 데이터베이스 연동
         2. HTML 제작
         3. 필요한 위치에 for/if를 이용해서 화면 출력
         4. CSS를 적용
         5. 동적으로 변환 : JavaScript
     --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구구단</title>
</head>
<body>
    <h1>구구단</h1>
    <table border="1" width="700">
        <tr>
            <th></th> 
            <% 
            for (int i = 2; i <= 9; i++) 
            
            {
            	// 주석
            	/*
            	 여러줄 주석
            	*/ 
            %>
                <th><%= i + "단" %></th>
            <%
            }
            %>
        </tr>
        <% 
        for (int i = 1; i <= 9; i++) {
        %>
            <tr>
                <td><%= i + "단" %></td>
                <%
                for (int j = 2; j <= 9; j++) {
                %>
                    <td><%= i * j %></td>
                <%
                }
                %>
            </tr>
        <%
        }
        %>
    </table>
</body>
</html>

