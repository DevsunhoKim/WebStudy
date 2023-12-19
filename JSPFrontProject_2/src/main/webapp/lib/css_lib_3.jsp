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
   form => class="input-sm" => height
*/
</style>
</head>
<body>
  <div class="container">
    <div class="row">
     성별:<select class="input-sm">
       <option>남자</option>
       <option>여자</option>
     </select><p>
     이름:<input type=text size=15 class="input-sm">
    </div>
  </div>
</body>
</html>