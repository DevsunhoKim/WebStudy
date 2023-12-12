<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*"%>
<jsp:useBean id="model" class="com.sist.model.MainModel"/>
<%
    model.mainJspChange(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container-fluid{
    margin-top: 50px;
}
.row{
   margin: 0px auto;
   width: 1024px;
}
</style>
<link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container-fluid">
    <div class="row">
      <div class="text-center">
        <a href="main.jsp?type=1" class="btn btn-sm btn-danger">전체 상품</a>
        <a href="main.jsp?type=2" class="btn btn-sm btn-info">베스트 상품</a>
        <a href="main.jsp?type=3" class="btn btn-sm btn-success">신상품</a>
        <a href="main.jsp?type=4" class="btn btn-sm btn-primary">특가 상품</a>
      </div>
    </div>
    <div style="height: 30px"></div>
    <jsp:include page="${main_jsp}"></jsp:include>
  </div>
</body>
</html>