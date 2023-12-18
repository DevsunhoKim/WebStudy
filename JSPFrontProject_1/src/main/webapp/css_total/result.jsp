<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
    request.setCharacterEncoding("UTF-8");
    String type=request.getParameter("type");
    if(type==null)
    	type="한식";
    FoodDAO dao=new FoodDAO();
    List<FoodVO> list=dao.foodCategoryList(type);
    request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table class="table">
      <tr>
        <th></th>
        <th>업체명</th>
        <th>전화번호</th>
      </tr>
      <c:forEach var="vo" items="${list }">
        <tr>
          <td><img src="https://www.menupan.com${vo.poster }" style="width: 30px;height: 30px"></td>
          <td>${vo.name }</td>
          <td>${vo.phone }</td>
        </tr>
      </c:forEach>
    </table>
</body>
</html>