<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*"%>
<%
	try{
		request.setCharacterEncoding("UTF-8");
		String fn=request.getParameter("fn");
		File file=new File("c:\\download\\"+fn);
		response.setContentLength((int)file.length());
		// Header 전송 => 파일명, 파일 크기
		response.setHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(fn,"UTF-8"));
		// 다운로드 창 띄울때 쓰는 형식 (요즘은 우측상단에 띄움)
		
		BufferedInputStream bis=new BufferedInputStream(new FileInputStream(file));
		// 서버에서 파일 읽기
		BufferedOutputStream bos=new BufferedOutputStream(response.getOutputStream());
		// 사용자 다운로드 폴더...
		// 멀티 => Spring ==> 웹흐름, SQL => 기능 => 변별력
		// 클라이언트로 파일을 보낸다
		byte[] buffer=new byte[1024];
		int i=0;
		while((i=bis.read(buffer,0,1024))!=-1){
			bos.write(buffer,0,i);
		}
		bos.close();
		bis.close();
		out.clear();
		out=pageContext.pushBody();
		// out의 원래기능으로 복귀 (HTML출력용)
	}catch(Exception ex){}
%>
