<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
  width: 900px;
  height: 700px;
  border:1px solid black;
  margin: 0px auto;
}
.header{
  width: 900px;/*100%*/
  height: 100px;
  background-color: cyan;
}
.aside{
  width: 150px;
  height: 500px;
  background-color: yellow;
  float: left;
}
.section{
   width: 600px;
   height: 500px;
   background-color: green;
   float: left;
}
.footer{
   width: 900px;
   height: 100px;
   background-color: pink;
   clear: both;
}
</style>
</head>
<body>
  <div class="container">
    <div class="header"></div>
    <div class="aside"></div>
    <div class="section"></div>
    <div class="aside"></div>
    <div class="footer"></div>
  </div>
</body>
</html>