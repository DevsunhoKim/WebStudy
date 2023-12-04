<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
    <%@ taglib prefix="c" uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" %>
    <% EmpDAO dao=EmpDAO.newInstance();
    List<EmpVO> list=dao.empListData();
    request.setAttribute("list", list);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Employee List</h1>
  <table border="1" width="800">
    <tr>
      <th>Employee Number</th>
      <th>Name</th>
      <th>Position</th>
      <th>Date of Joining</th>
      <th>Salary</th>
    </tr>
    
    
</body>
</html>