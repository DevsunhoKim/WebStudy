<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
  margin-top: 50px;
}
.row {
  margin: 0px auto;/* 가운데 정렬*/
  width: 800px;
}
/*
   img : img-rounded / img-circle / img-thumbnail
*/
img {
  width: 200px;
  height: 250px;
}
</style>
</head>
<body>
  <div class="container">
   <div class="row">
    <img src="../image/m1.jpg" class="img-rounded">
    <img src="../image/m2.jpg" class="img-circle">
    <img src="../image/m3.jpg" class="img-thumbnail">
   </div>
  </div>
</body>
</html>