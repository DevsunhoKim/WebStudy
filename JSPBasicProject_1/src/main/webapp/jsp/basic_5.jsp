<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
     for => for~each 구문을 많이 사용
     => if~else  
     --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 // 활성화 , 비활성화
   int sum=0,even=0,odd=0;
    for(int i=1;i<=100;i++)
    {
    	sum+=i;
    	if(i%2==0)
    		even+=i;
    	else
    		odd+=i;
    }
   %>
   <h3>1~100 까지 총합 :<%=sum %></h3>
   <h3>1~100 까지 짝수 총합 :<%=even %></h3>
   <h3>1~100 까지 홀수 총합 :<%=odd %></h3>
</body>
</html>