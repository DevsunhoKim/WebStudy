<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
     FoodDAO dao=new FoodDAO();
     List<GoodsVO> list=dao.goodsListData();
     request.setAttribute("list", list);
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
   width:960px;
}
p{
  width: 200px;
  white-space:nowrap;/* 자동 줄바꿈 해제*/
  overflow:hidden;/* 초과된 글자를 감춘다 ...*/
  text-overflow: ellipsis;/*글자가 초과되는 경우*/
}
</style>
</head>
<body>
   <div class="container">
    <div class="row">
     <c:forEach var="vo" items="${list }">
         <div class="col-sm-3">
		    <div class="thumbnail">
		      <a href="#">
		        <img src="${vo.goods_poster }" alt="Lights" style="width:230px;height: 150px">
		        <div class="caption">
		          <p>${vo.goods_name }</p>
		        </div>
		      </a>
		    </div>
		  </div>
     </c:forEach>
    </div>
   </div>
</body>
</html>