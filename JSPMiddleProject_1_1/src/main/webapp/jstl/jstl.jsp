<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%--
      JSTL 
       --- Tag Lib
       <% %> => 태그형으로 제작
         = 1. 변수 선언 => int a=10; <c:set var="a" value="10"/>
           2. 제어문
             for(int i=0;i<=10;i++)
           => <c:forEach var="i" begin="1" end="10" step="1">
             for(SawonVO vo:list>
           => <c:forEach var="vo" items="list" vatStatus="in">
                                               ======== index
                          => 번호 출력 / 다른 List 출력
             <c:forTokens var="" value="" delim"">
           => StringTokenizer st= new StringTokenizer(value,delim)
                 while(st.hasMoreTokens())
                 {
                 }
             => <c:if> 조건문
                <c:if test="${}">
                      ========== 조건문
               => if(test)
               => 단점 => else문장이 없다
                        ============ 사용자 정의 (회사) 
             => 다중 조건문 => XML로 제작
                 XML
                 ===
                   1. 태그나 속성 => 대소문자 구분
                   2. 속성값 => ""
                   3. 계층구조 => 여는태그/닫는태그 일치
             
                <c:choose>
                <c:when test="조건">출력</c:when>
                <c:when test="조건">출력</c:when>
                <c:when test="조건">출력</c:when>
                <c:otherwise>디폴트</c:otherwise>
                </c:choose>
              
           3. 화면이동
             <c:redirect url=""/>
             => response.sendRedirect(url)
           4. 화면출력
             <%= %>
             <c:out value=""> => Jquery => $
             ${} => import가 동일하게 있으면 오류발생
             
           ================================== core
           5. 날짜 변환 / 숫자 변환
             SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd")
             <fmt:formatDate value="" pattern="yyyy-MM-dd"
             => 오라클에서 => TO_CHAR(regdate,'yyyy-MM-dd')
             DecimalFormat d=new DecimalFormat("###,###");
             <fmt:formatNumber value="" type="currency">
           ================================== format
           6. 메소드 호출
           ================================== functions
           
    
    --%>
   <%
     // JSTL => 출력은 EL
     List<String> nList=new ArrayList<String>();
     nList.add("홍길동");
     nList.add("이순신");
     nList.add("강감찬");
     nList.add("심청이");
     nList.add("춘향이");
     
     List<String> sList=new ArrayList<String>();
     
     sList.add("남자");
     sList.add("남자");
     sList.add("남자");
     sList.add("여자");
     sList.add("여자");
     
     request.setAttribute("nList", nList);
     
   %>
   
   <c:set var="sList" value="<%=sList %>"/>
   <!--  일반 변수가 아니라 request.setAttribute(var,value) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이름</h1>
	<ul>
	<%-- for(String name:nList) --%>
	<c:forEach var="name" items="${nList }">
	  <li>${name }</li>
	</c:forEach>
	</ul>
	<h1>성별</h1>
	<ul>
	 <c:forEach var="sex" items="${sList }">
	 <li>${sex }</li>
	 </c:forEach>
	</ul>
	
	<h1>이름(성별)</h1>
	 <ul>
	  <c:forEach var="name" items="${nList }" varStatus="s" >
	   <li>${s.index+1 }.${name }(${sList[s.index] })</li>
	  </c:forEach>
	 </ul>
</body>
</html>