<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("UTF-8");
    String[] fsArr=request.getParameterValues("fd");
    String ss=request.getParameter("ss");
    
    Map map=new HashMap();
    map.put("fsArr",fsArr); 
    map.put("ss",ss);
    
    List<MusicVO> list=MusicDAO.musicFindData(map);
    
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
.row {
    margin: 0px auto;
    width:900px; 
}
h1{
    text-align: center
}
</style>
</head>
<body>
  <div class="container">
    <div class="row">
     <form method="post" action="music.jsp">
     <table class="table">
      <tr>
       <td>
        <input type="checkbox" name="fd" value="T">노래명
        <input type="checkbox" name="fd" value="S">가수명
        <input type="checkbox" name="fd" value="A">앨범명
        <input type="text" name="ss" size=20 class="input-sm">
        <input type="submit" value="검색"
           class="btn-sm btn-primary">
        <%--
             노래 / 가수 / 앨범
             WHERE title LIKE 
             WHERE singer LIKE
             WHERE album LIKE
             노래 - 가수 
             WHERE title LIKE  OR singer LIKE
             노래 - 앨범
             WHERE title LIKE  OR album LIKE
             가수 -앨범
             WHERE singer LIKE  OR album LIKE
             노래 가수 앨범
             WHERE title LIKE  OR singer LIKE OR album LIKE
             
         --%>
       </td>
      </tr>
     </table>
     </form>
    </div>
    <div style="height: 20px"></div>
    
    <div class="row">
      <table class="table">
        <tr>
          <th>순위</th>
          <th></th>
          <th></th>
          <th>곡명</th>
          <th>가수명</th>
          <th>앨범</th>
        </tr>
        <c:forEach var="vo" items="${list }">
          <tr>
           <td>${vo.no }</td>
           <td></td>
           <td><img src="${vo.poster }" style="width: 30px;height: 30px"></td>
           <td>${vo.title }</td>
           <td>${vo.singer }</td>
           <td>${vo.album }</td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </div>
</body>
</html>