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
</style>
</head>
<body>
  <div class="container">
   <div class="row">
    <a href="#" class="btn btn-info" role="button">Click</a>
    <ul class="pagination">
     <li><a href="#">&lt;</a></li>
     <li><a href="#">1</a></li>
     <li class="active"><a href="#">2</a></li>
     <li><a href="#">3</a></li>
     <li><a href="#">4</a></li>
     <li><a href="#">5</a></li>
     <li><a href="#">&gt;</a></li>
    </ul>
   </div>
  </div>
</body>
</html>