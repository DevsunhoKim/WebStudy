<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*"%>
<jsp:useBean id="model" class="com.sist.model.FoodModel"/>
<% 
	model.foodDetailData(request);
	// FoodVO vo=request.getAttribute("vo");
	// <%= vo.getPoster() ${vo.poster} => getPoster()
%>

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
.row{
	margin: 0px auto;
	width: 960px;
}
</style>
</head>
<body>
  <div class="container">
    <div class="col-sm-7">
      <table class="table">
        <tr>
          <td width=30% class="text-center" rowspan="9">
          	<img src="https://www.menupan.com${vo.poster}" style="width:100%">
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <h3>${vo.name }&nbsp;<span style="color:orange">${vo.score}</span></h3>
          </td>
        </tr>
        <tr>
          <td width=15%>주소</td>
          <td width=55%></td>
        </tr>
        <tr>
          <td width=15%>전화번호</td>
          <td width=55%></td>
        </tr>
        <tr>
          <td width=15%>음식종류</td>
          <td width=55%></td>
        </tr>
        <tr>
          <td width=15%>가격대</td>
          <td width=55%></td>
        </tr>
        <tr>
          <td width=15%>좌석</td>
          <td width=55%></td>
        </tr>
        <tr>
          <td width=15%>영업시간</td>
          <td width=55%></td>
        </tr>
        <tr>
          <td width=15%>테마</td>
          <td width=55%></td>
        </tr>
        <tr>
          <td width=15%>소개</td>
          <td width=55%></td>
        </tr>
      </table>
    </div>
    <div class="col-sm-5">
      
    </div>
  </div>
</body>
</html>