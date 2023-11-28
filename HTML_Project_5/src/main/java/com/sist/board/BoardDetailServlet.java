package com.sist.board;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.dao.*;
@WebServlet("/BoardDetailServlet")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// <%@ page contentType="text/html;charset=UTF-8" %>
		PrintWriter out=response.getWriter();
		// 사용자가 전송한 게시물 번호를 받는다 
		// ?no=1
		String no=request.getParameter("no");
		BoardDAO dao=BoardDAO.newInstance();
		BoardVO vo=dao.boardDetailData(Integer.parseInt(no));
		/*
		 *   사용자 요청값 받기 => request
		 *   => 오라클 연결해서 데이터를 가지고 온다 
		 *   => 가지고 온 데이터를 HTML을 이용해서 출력 
		 *   => 시스템에서 브라우저로 전송 (웹서버) => 톰캣에 내장 
		 */
		out.write("<html>");
		out.write("<head>");
		out.write("<link rel=stylesheet href=table.css>");
		out.write("</head>");
		out.write("<body>");
		out.write("<center>");// margin:0px auto 
		out.write("<h1>내용보기</h1>");
		out.write("<table class=table_content width=600>");
		
		out.write("<tr>");
		out.write("<th width=20% align=center>번호</th>");
		out.write("<td width=30% align=center>"+vo.getNo()+"</td>");
		out.write("<th width=20% align=center>작성일</th>");
		out.write("<td width=30% align=center>"+vo.getRegdate().toString()+"</td>");
		out.write("</tr>");
		
		out.write("<tr>");
		out.write("<th width=20% align=center>이름</th>");
		out.write("<td width=30% align=center>"+vo.getName()+"</td>");
		out.write("<th width=20% align=center>조회수</th>");
		out.write("<td width=30% align=center>"+vo.getHit()+"</td>");
		out.write("</tr>");
		
		out.write("<tr>");
		out.write("<th width=20% align=center>제목</th>");
		out.write("<td colspan=3>"+vo.getSubject()+"</td>");
		out.write("</tr>");
		
		out.write("<tr>");
		out.write("<td colspan=4 height=200 valign=top>"+vo.getContent()+"</td>");
		out.write("</tr>");
		
		out.write("<tr>");
		out.write("<td colspan=4 align=right></td>");
		out.write("</tr>");
		
		out.write("</table>");
		out.write("</center>");
		out.write("</body>");
		out.write("</html>");
		
		
	}

}