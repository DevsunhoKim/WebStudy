<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] dels=request.getParameterValues("del");
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			for(int j=0;j<dels.length;j++){
				if(cookies[i].getValue().equals(dels[j])){
					cookies[i].setPath("/");
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}
		}
	}
	response.sendRedirect("find.jsp");
%>
