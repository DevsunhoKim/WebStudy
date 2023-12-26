<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     
    // data:{"no":1}
    String index=request.getParameter("no");
    String img="../image/m"+index+".jpg";
    
    %>
<%--
    AJax
    Async (비동기적인) 
    JavaScript
    And
    XML => JSON    
    
    1. 요청을 처리할 파일을 연결 => open
    2. 요청 데이터를 전송 => send
    3. 처리할 함수를 자동호출하게 만든다 => callback
    
    Jquery
    $.ajax({
      type: GET/POST
      url: 요청 처리가되는 JSP/Model (.do / .jsp)
      data:{} => 요청할 데이터가 없는 경우에는 생략할 수 있다
      login.jsp?id=aaa&pwd=1234
      => {"id":"aaa","pwd":"1234"}
      success:function(res)
      {
        res=> 실행 결과를 읽어 온다
      }
      
    })
--%>
<%=img%>