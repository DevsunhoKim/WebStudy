<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <div class="col-sm-3">
     <%-- 뷰메뉴 --%>
     <div class="panel panel-success">
       <div class="panel-heading">
         <h3 class="panel-title">
          <i class="glyphicon glyphicon-leaf"></i>
          <span>스토어 목록</span>
         </h3>
       </div>
       <ul class="list-group">
        <li class="list-group-item"><a href="../store/all.do">전체 상품</a></li>
        <li class="list-group-item"><a href="../store/best.do">베스트 상품</a></li>
        <li class="list-group-item"><a href="../store/sp.do">특가 상품</a></li>
        <li class="list-group-item"><a href="../store/new.do">신상품</a></li>
       </ul>
     </div>
    </div>
    <div class="col-sm-9">
     <%-- 화면 출력 --%>
     <jsp:include page="${store_jsp }"></jsp:include>
    </div>
  </div>
</body>
</html>