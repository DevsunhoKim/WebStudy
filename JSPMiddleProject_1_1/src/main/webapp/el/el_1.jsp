<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*"%>
    <%
     SawonVO vo=new SawonVO();
    vo.setName("홍길동");
    vo.setDept("개발부");
    // %{} => request , session 에 담아야함
    request.setAttribute("vo", vo); // JSP로 데이터를 추가해서 전송
    session.setAttribute("vo", vo);
    // 제한이 없다 
    
    SawonVO svo=(SawonVO)request.getAttribute("vo");
    
    
    %>
    <%--
      화면 출력 =태그형 프로그램 제작 (자바 최소화)
      <%= %> => ${} , <c:out value="">
                === $는 Jquery 라이브러리
       let a=${name}
       
       ${출력물} => 자바의 변수가 아니다
        ====== request,session
        
        request.setAttribute("name","홍길동")
               
        <%= request.getAttribute("name") %>
        ${name}
         ------- getAttribute의 key
         
    =>     getParameter() => ? ... GET/POST
           setAttribute() => request에 기존에 있는 데이터외에 
                             다른 데이터를 추가해서 전송
                             데이터베이스 ...
    => 새로 추가된 데이터를 읽어서 출력
    
    => param => getParameter("name")
              ${param.name}
                      ----- key 이름 (변수명 아님)
    
    1) 연산자
       산술연산자 ( + , - , * , /(div) , %(mod) )
               --- 순수하게 산술만 처리
                  (문자열 결합 +=)
                   null값은 0 으로 인식한다
                   "5"+1
                   ---- Integer.parseInt("5") 자동으로
                   정수/정수 => 실수
       비교연산자 : if(조건문) => 숫자 / 문자 / 날짜
                <c:if test="${vo.getId()==sessionScope.id}"
                == (eq) ${1==1} #{1 eq 1}
                != (ne) ${1!=1} #{1 ne 1}
                < (lt) 
                > (gt)
                <= (le)
                >= (ge)
       논리연산자 : 조건문
                && (and) => 범위안에 포함
                || (or)  => 범위 밖에 있는경우
                 ! (not) => 부정 연산자
       삼항연산자 : 페이지 ${curpage>?curpage-1:curpage}
                     ${curpage<totalpage?curpage+1:curpage}
     
=================================================================
 ${requestScope.name} == request.getAttribute("name")
                ==== 키
 ${sessionScope.id} == session.getAttribute("id");
                === 키
 => request,session 저장시에 Mapㅎㅇ식으로 저장
    =============== 키 , 값
    
    예)
    
    sesion.setAttribute("admin","1")
      => session.getAttribute("admin")
      => ${sessionScope.admin}
      
    request.setAttribute("id","hong");
            =========== getParameter() 로 받을 수 없다
      => request.getAttribute("id")
      => ${requestScope.id}
      => ${id} => requestScope는 생략이 가능
    
    ?id=admin%pwd=1234
     => request.getParameter("id") => admin
        request.getParameter("pwd") => 1234
       => ${param.id} => admin
          ${param.pwd} => 1234
          
      bean => vo
     => class Sawon
     {
       private int sabun;
       private String name;
       
       => getter/setter
         getSabun() , setSabun()
         getName() , setName()
      }
      
      Sawon vo=new Sawon();
      vo.setSabun(1) => getSabun()
      vo.setName("홍길동") => getName()
      
      request.setAttribute("vo",vo) => 해당 JSP로 요청값 전송
      
      => Sawon vo=(Sawon)request.getAttribute("vo")
                   ================================
                   ${vo.getName()} => ${vo.name}
                                           => getName()
                   ${vo.getSabun()} => ${vo.sabun}
                                           => getSabun()
                                           
       Model => 자바
       ===== DAO / VO ... 자바로 코딩하는 모든 파일
             ========= 한 개로 만들 수 있다
                                           
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <%=svo.getName() %><br>
부서 : <%=svo.getDept() %><br>

<h1>EL</h1>
이름 : ${vo.getName() }, ${vo.name}<br>
부서 : ${vo.getDept() }, ${vo.dept}<br>
이름 : ${sessionScope.vo.getName() }, ${sessionScope.vo.name}<br>
부서 : ${sessionScope.vo.getDept() }, ${sessionScope.vo.dept}<br>
</body>
</html>