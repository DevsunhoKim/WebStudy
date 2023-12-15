<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="row">
    <h1 class="text-center">전체 상품</h1>
    <c:forEach var="vo" items="${list }">
     <div class="col-md-4">
	    <div class="thumbnail">
	      <a href="../store/detail.do?no=${vo.no }">
	        <img src="${vo.goods_poster }" title="${vo.goods_name }" style="width:100%">
	        <div class="caption">
	          <p>${vo.goods_price }</p>
	        </div>
	      </a>
	     </div>
	   </div>
   </c:forEach>
  </div>
  <div style="height: 20px"></div>
  <div class="row">
    <div class="text-center">
     <a href="../store/all.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-primary">이전</a>
     ${curpage } page / ${totalpage } pages
     <a href="../store/all.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-primary">다음</a>
    </div>
  </div>
  <div style="height: 20px"></div>
  <h3>최근 방문 상품</h3>
  <hr>
  <c:if test="${count==0 }">
   방문기록이 없습니다.
  </c:if>
  <c:if test="${count!=0 }">
   <c:forEach var="vo" items="${cList }">
    <img src="${vo.poster }" style="width: 100px;height: 100px; margin-top: 50px" >
   </c:forEach>
  </c:if>
  
</body>
</html>