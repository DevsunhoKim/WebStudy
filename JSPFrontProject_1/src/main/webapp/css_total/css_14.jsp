<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
  margin: 0px;
  padding:0px;
}
body{
  width: 960px;
  margin: 0px auto;
  overflow: hidden;
}
#nav{
  width: 300px;
  float: left;
}
#section{
  width: 660px;
  float: right;
}
li {
   list-style: none;
}
@media screen and (max-width:768px){
  body{width:auto}
  #nav{width:auto;float: none}
  #section{width:auto;float: none}
}
</style>
</head>
<body>
  <div id="nav">
    <ul>
     <li>홈</li>
     <li>뉴스 1</li>
     <li>뉴스 2</li>
    </ul>
  </div>
  <div id="section">
  K랭킹은 104주(2년)간의 성적을 반영하되 최근 13주 성적에 더 큰 
  비중을 두고 있어 2023시즌 하반기까지 꾸준한 활약을 펼친 
  이예원이 지금까지도 많은 포인트를 획득하고 있으며 격차를 
  더 벌릴 수 있는 상황이다.

  이예원은 “처음으로 K랭킹 1위에 오르게 돼 뿌듯하고, 2024시즌에도 
  1위를 유지하고 싶다”면서 “최다 연속 1위 기록을 경신하는 게 쉽지 않겠지만, 
  꾸준하게 좋은 활약을 펼친다면 기록은 저절로 따라온다는 생각으로 
  노력해보겠다“고 소감을 밝혔다.
  </div>
</body>
</html>