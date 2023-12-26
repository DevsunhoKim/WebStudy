<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String strPage=request.getParameter("page");
	if(strPage==null)
		strPage="1";
	int curpage=Integer.parseInt(strPage);
	FoodDAO dao=FoodDAO.newInstance();
	List<FoodVO> list=dao.foodListData(curpage);
	int totalpage=dao.foodTotalPage();
	 
	final int BLOCK=10;
	int startPage=((curpage-1)/BLOCK*BLOCK)+1;
	int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	if(endPage>totalpage) 
		endPage=totalpage;
	
	request.setAttribute("list", list);
	request.setAttribute("totalpage", totalpage);
	request.setAttribute("curpage", curpage);
	request.setAttribute("startPage", startPage);
	request.setAttribute("endPage", endPage);
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.pages').on('click',function(){
		let page=$(this).text()
		$.ajax({
			type:'post',
			url:'food_list.jsp',
			data:{"page",page},
			success:function(result){
				$('.col-sm-8').html(result)
			}
		})
	})
	
	$('#start').click(function(){
		let startPage=$('#start').attr("data-start");
		let start=startPage>1?Number(startPage)-1:startPage;
		$.ajax({
			type:'post',
			url:'food_list.jsp',
			data:{"page",start},
			success:function(result){
				$('.col-sm-8').html(result)
			}
		})
	});
	$('#end').click(function(){
		let endPage=$('#end').attr("data-end");
		let totalpage=$('#end').attr("data-total");
		let end=endPage<totalpage?Number(endPage)+1:endPage;
		$.ajax({
			type:'post',
			url:'food_list.jsp',
			data:{"page",end},
			success:function(result){
				$('.col-sm-8').html(result)
			}
		})
	});
})
</script>
</head>
<body>

    <c:forEach var="vo" items="${list }">
     <div class="col-md-3">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="${vo.poster }" style="width:100%">
          <div class="caption">
            <p>${vo.name }</p>
          </div>
        </a>
      </div>
     </div>
    </c:forEach>
    <div style="height: 20px"></div>
    <div class="text-center">
        <ul class="pagination">
		  <li><a href="#" data-start="${startPage }" id="start">&lt;</a></li>
		  <c:forEach var="i" begin="${startPage }" end="${endPage }">
		    <li ${curpage==i?"class=active":""}><a href="#" class="pages">${i }</a></li>
		  </c:forEach>
		  <li><a href="#" data-end="${endPage }" data-total="${totalpage }" id="end">&gt;</a></li>
		</ul>
    </div>
</body>
</html>