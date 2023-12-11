<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import com.oreilly.servlet.multipart.*"%>
<%@ page import="com.oreilly.servlet.*" %>
<%
	String path=application.getRealPath("/")+"images";
	String enctype="UTF-8";
	int max_size=1024*1024*100; // 100메가
	MultipartRequest mr=new MultipartRequest(request,path,max_size,enctype,new DefaultFileRenamePolicy());
	String fn=mr.getOriginalFileName("upload");
	response.sendRedirect("list.jsp?fn="+fn);
%>