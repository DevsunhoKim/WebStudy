<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.row1 {
  margin: 0px auto;
  width:450px
}
</style>
</head>
<body>
  <div class="container">
    <div class="jumbotron">
      <h3 class="text-center">예약</h3>
    </div>
    <div class="row row1">
      <h4 class="text-center">
       ${year}년도 ${month }월
       <c:set var="week" value="${week }"/>
       <table class="table">
         <tr class="danger">
           <c:forEach var="str" items="${strWeek }">
             <th class="text-center">${str }</th>
           </c:forEach>
         </tr>
         <c:forEach var="i" begin="1" end="${lastday }">
           <c:if test="${i==1}">
            <tr>
            <c:forEach var="j" begin="1" end="${week }">
             <td>&nbsp;</td>
            </c:forEach>
           </c:if>
           <td class="text-center ${i==day?'danger':''}" >${i }</td>
           <c:set var="week" value="${week+1 }"/>
           <c:if test="${week>6 }">
            <c:set var="week" value="0"/>
            </tr>
            <tr>
           </c:if>
         </c:forEach>
         </tr>
       </table>
      </h4>  
    </div>
  </div>
</body>
</html>