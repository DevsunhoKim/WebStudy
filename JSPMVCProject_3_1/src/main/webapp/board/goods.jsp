<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="model" class="com.sist.model.ListModel"/>


<%--
  <c:set var="vo" value="${vo}"/>
<c:set var="startPage" value="${startPage}"/>
<c:set var="endPage" value="${endPage}"/>
<c:set var="curpage" value="${curpage}"/>
<c:set var="totalPage" value="${totalPage}"/>
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.row{
   margin: 0px auto;
   width: 1024px;
}
</style>
</head>
<body>
	<div class="row">
		<h1 class="text-center">전체상품</h1>
		<c:forEach var="vo" items="${list}">
			<div class="col-md-3">
				<div class="thumbnail">
					<a href="#"> <img src="${vo.getPoster()}"
						title="${vo.gname }">
						<div class="caption">
							<p>${vo.price }</p>
						</div>
					</a>
				</div>
			</div>

		</c:forEach>
	</div>
	<div style="height: 10px"></div>
	<div class="text-center">
		<ul class="pagination">
			<%--
			    <!ENTITY lt "<">
			    <!ENTITY gt "<">
			    =? &lt;
			 --%>
			<c:if test="${startPage>1}">
			<li><a href="goods.jsp?page=${startPage-1}">&lt;</a></li>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<li ${curpage==i?"class=active":"" }><a href="goods.jsp?page=${i }">${i }</a></li>
			</c:forEach>
			<c:if test="${endPage<totalPage}">
			<li><a href="goods.jsp?page=${endPage+1}">&gt;</a></li>
			</c:if>
		</ul>
	</div>
</body>
</html>