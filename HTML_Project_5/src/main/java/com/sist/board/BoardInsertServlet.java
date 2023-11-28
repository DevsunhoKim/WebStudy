package com.sist.board;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.dao.*;
@WebServlet("/BoardInsertServlet")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    // 화면 UI => GET
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		// 요청한 클라이언트의 브라우저로 HTML을 전송 
		out.write("<html>");
		out.write("<head>");
		// CSS설정 , <script> , <style> 
		out.write("<link rel=stylesheet href=table.css>");
		out.write("</head>");
		out.write("<body>");
		out.write("<center>");
		out.write("<h1>글쓰기</h1>");
		out.write("<form method=post action=BoardInsertServlet>");
		out.write("<table class=table_content width=600>");
		out.write("<tr>");
		out.write("<th width=15%>이름</th>");
		out.write("<td width=85%><input type=text size=15 name=name></td>");
		out.write("</tr>");
		out.write("<tr>");
		out.write("<th width=15%>제목</th>");
		out.write("<td width=85%><input type=text size=50 name=subject></td>");
		out.write("</tr>");
		out.write("<tr>");
		out.write("<th width=15%>내용</th>");
		out.write("<td width=85%><textarea rows=10 cols=50 name=content></textarea></td>");
		out.write("</tr>");
		out.write("<tr>");
		out.write("<th width=15%>비밀번호</th>");
		out.write("<td width=85%><input type=password size=15 name=pwd></td>");
		out.write("</tr>");
		
		out.write("<tr>");
		out.write("<td colspan=2 align=center>");
		out.write("<input type=submit value=글쓰기>");
		out.write("<input type=button value=취소 onclick=\"javascript:history.back()\">");
		out.write("</td>");
		out.write("</tr>");
		
		out.write("</table>");
		out.write("</form>");
		// form 안에 있는 <input>,<select>,<textarea>
		out.write("</center>");
		out.write("</body>");
		out.write("</html>");
		
		// ?name=aaa&subject=aaa&content=aaa&pwd=1234
	}
    // 요청값을 받아서 처리 => POST
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 전송된 값 <form> 받기 
		//2. 한글이 변환이 안되면 글자가 깨진다 
		// 3. 전송시 => 한글(인코딩) => 받을 때 => 디코딩
		// %EC%9E%90%EB%B0%94 => 자바
		// %E%D...
		try
		{
			request.setCharacterEncoding("UTF-8");
			// 디코딩 
		}catch(Exception ex){}
		
		String name=request.getParameter("name");
		// name=name , name=subject
		String subject=request.getParameter("subject");
		String content=request.getParameter("content");
		String pwd=request.getParameter("pwd");
		
		BoardVO vo=new BoardVO();
		vo.setName(name);
		vo.setSubject(subject);
		vo.setContent(content);
		vo.setPwd(pwd);
		
		// 오라클로 전송 
		BoardDAO dao=BoardDAO.newInstance();
		dao.boardInsert(vo);
		
		// 화면 이동 
		response.sendRedirect("BoardListServlet");
		
	}

}