<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.io.*" %>
<jsp:useBean id="dao" class="com.sist.dao.DataBoardDAO"/> 
<jsp:useBean id="bean" class="com.sist.dao.DataBoardBean"/>


<%
	request.setCharacterEncoding("UTF-8");
	
	// 1. 파일 업로드 지정
	String path="c:\\download";
	String enctype="UTF-8"; // 한글파일명
	int max=1024*1024*100; // 100MB
	MultipartRequest mr=new MultipartRequest(request,path,max,enctype,new DefaultFileRenamePolicy()); // 순서 주의
	// DefaultFileRenamePolicy => a.jpg => a(1).jpg => a(2).jpg => 이름중복일경우 바꿔줌
	String name=mr.getParameter("name");
	String subject=mr.getParameter("subject");
	String content=mr.getParameter("content");
	String pwd=mr.getParameter("pwd");
	
	// mr.getOriginalFileName ("upload") : 사용자가 보낸 파일명 
	// mr.getFilesystemName("upload") : 실제 저장된 파일명
	String filename=mr.getFilesystemName("upload"); // 실제 저장된 파일명을 가져와야함 => 이름중복되어서 바뀐이름일수도있어서
	
	bean.setName(name);
	bean.setSubject(subject);
	bean.setContent(content);
	bean.setPwd(pwd);
	
	if(filename==null){   // 업로드 안된 경우
		bean.setFilename("");
		bean.setFilesize(0);
	}
	else{
		bean.setFilename(filename);
		File file=new File(path+"\\"+filename);
		bean.setFilesize((int)file.length()); //  file은 long형
	}
	
	dao.boardInsert(bean);
	
	response.sendRedirect("list.jsp");
%>



