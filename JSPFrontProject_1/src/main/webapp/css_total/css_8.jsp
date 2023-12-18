<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body > div {
   width: 400px;
   height: 100px;
   border: 3px solid black;
   position: relative;
   /*overflow: hidden;*/
   overflow-y:scroll
}
.d{
    width: 100px;
    height: 100px;
    position: absolute;
}
.a{
  background-color: yellow;
  left: 10px;
  top:10px;
  z-index: 100;
}
.b{
   background-color: pink;
   left: 50px;
   top:50px;
   z-index: 10;
}
.c{
  background-color: cyan;
  left: 90px;
  top:90px;
  z-index: 5;
}
</style>
</head>
<body>
  <div>
   <div class="a d"></div>
   <div class="b d"></div>
   <div class="c d"></div>
  </div>
</body>
</html>