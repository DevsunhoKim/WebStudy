<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*"%>
<jsp:useBean id="model" class="com.sist.model.DetailModel"/>
<%
   
model.handleRequest(request);
    //request에 데이터베이스에 저장된 정보를 추가해서 보내 달라 
    //          vo => request.setAttribute("vo",vo);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="row">
		  <table class="table">
			  <tr>
				  <td width="35%" align="center" rowspan="9">
					  <img src="${vo.poster }" id="image">
				  </td>
				  <td width="65%" align="center">
					  <span id="title">
					   ${vo.gname }
					  </span>
				  </td>
			  </tr>
			  <tr>				  <td width="65%">
					  <span id="sub">${vo.origin }</span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="percent"></span>&nbsp;
					  <span id="price">${vo.price }</span>
					  <p>
						  <del id="psub"></del>
					  </p>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="label">첫구매할인가</span>
					  <span id="price2"></span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="star">★★★★★</span>&nbsp;
					  <span id="bold">4.5</span>
					  <span id="count">(299)</span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <img src="https://recipe1.ezmember.co.kr/img/mobile/icon_delivery3.png">
					  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					  <span id="delevery"></span>
				  </td>
			  </tr>			  <tr>				  <td width="65%">
					  <select id="sel">
						  <option>옵션 선택</option>
					  </select>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <input type="button" value="장바구니" id="cart">
					  <input type="button" value="바로구매" id="buy">
					  <input type="button" value="목록" id="cart"
					   onclick="javascript:history.back()"
					  >
				  </td>
			  </tr>
		  </table>
	  </div>
  
</body>
</html>