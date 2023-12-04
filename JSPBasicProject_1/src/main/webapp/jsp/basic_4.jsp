<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>

<%--
  1. 데이터 읽기 
    1) import를 설정
       <%@ import="java.util.*,com.sist.dao.*" %>
       
       <%@ import="java.util.*" %>
       <%@ import="com.sist.dao.*" %>
       ==> 두 방법 모두 사용 가능
   2. html의 해당 위치에 <% %> => for
       => 데이터 출력은 <%= %>
       => 중심이 View (화면 출력)
 --%>
 <%
  EmpDAO dao=EmpDAO.newInstance();
		   List<EmpVO> list=dao.empListData();
   %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee List</title>
  <link rel="stylesheet" href="../css/table.css">
</head>
<body>
  <h1>Employee List</h1>
  <table class="table_content" border="1" width="800">
    <tr>
      <th>Employee Number</th>
      <th>Name</th>
      <th>Position</th>
      <th>Date of Joining</th>
      <th>Salary</th>
    </tr>
    <% for (EmpVO vo : list) { %>
      <tr class="dataTr">
        <td class="text-center"><%= vo.getEmpno() %></td>
        <td class="text-center"><%= vo.getEname() %></td>
        <td class="text-center"><%= vo.getJob() %></td>
        <td class="text-center"><%= vo.getHiredate() %></td>
        <td class="text-center"><%= vo.getSal() %></td>
      </tr>
    <% } %>
  </table>
</body>
</html>