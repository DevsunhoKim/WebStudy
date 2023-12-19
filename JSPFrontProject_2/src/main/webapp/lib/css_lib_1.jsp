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
  border:1px solid red;
  height: 600px;
}
.row{
  background-color:cyan;
  border: 1px solid black;
  height: 300px; 
}
/*
    전체 범위 지정 
    container : 여백 => 960px
    container-fluid :  여백없이 전체 (풀화면)
    row => 분리 
    
    -----------------------container
      ------------------row
        header
      ------------------row
        section
      ------------------row
        footer
      -----------------
    -----------------------
    
    col-(lg|sm|md|xs)-숫자
    => col-sm-5
              == 12등분(12를 초과하면 아래로 내려간다)
    
*/
.col-sm-8{
  background: yellow;
  height: 300px;
}
.col-sm-4{
  background: green;
  border:2px solid red;
  height: 300px;
}
</style>
</head>
<body>
  <div class="container">
   <div class="row"></div>
   <div style="height: 5px"></div>
   <div class="row">
     <div class="col-sm-8"></div>
     <div class="col-sm-4"></div>
   </div>
   <div style="height: 5px"></div>
   <div class="row">
     <div class="col-sm-4"></div>
     <div class="col-sm-4"></div>
     <div class="col-sm-4"></div>
   </div>
  </div>
</body>
</html>