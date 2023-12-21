<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    ZipcodeDAO dao=ZipcodeDAO.newInstance();
    List<ZipcodeVO> list=null;
    request.setCharacterEncoding("UTF-8");
    String dong=request.getParameter("dong");
    if(dong!=null)
    {
    	list=dao.postFind(dong);
    	request.setAttribute("list", list);
    } 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.row {
  margin: 0px auto;
  width:450px
}
</style>
<script type="text/javascript">
function ok(zip,addr)
{
	opener.frm.post1.value=zip.substring(0,3);
	opener.frm.post2.value=zip.substring(4,7);
	opener.frm.addr1.value=addr
	self.close()
}
</script>
</head>
<body>
  <div class="container">
    <h3 class="text-center">우편번호 검색</h3>
    <div class="row">
    <form method=post action="post.jsp">
       <table class="table">
       <tr>
        <td>
        입력:<input type="text" name="dong" class="input-sm">
        <input type=submit value="검색"
           class="btn btn-sm btn-danger">
        </td>
       </tr>
       <tr>
         <td class="text-right">
          <sub style="color:red">※동/읍/면을 입력하세요</sub>
         </td>
       </tr>
     </table>
     </form>
    </div>
    <div style="height: 10px"></div>
    <div class="row">
     <c:if test="${list!=null }">
      <table class="table">
        <tr>
         <th width="20%" class="text-center">우편번호</th>
         <th width="80%" class="text-center">주소</th>
        </tr>
        <c:forEach var="vo" items="${list }">
          <tr>
            <td width=20%>${vo.zipcode }</td>
            <td width=80%><a href="javascript:ok('${vo.zipcode }','${vo.address }')">${vo.address }</a></td>
          </tr>
        </c:forEach>
      </table>
     </c:if>
    </div>
  </div>
</body>
</html>

