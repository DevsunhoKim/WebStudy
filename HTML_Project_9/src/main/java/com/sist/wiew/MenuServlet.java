package com.sist.wiew;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MenuServlet")
public class MenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.write("<html>");
		out.write("<head>");
		out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
		out.write("<style>");
		out.write("a.menu{margin:30px 0px 0px 15px}");
		//                       top  right bottom left
		out.write("</style>");
		out.write("</head>");
		out.write("<body>");
		out.write("<div class=container>");
		out.write("<div class=row>");
		// btn-lg btn-sm btn-xs
		out.write("<a href=MainServlet?mode=1 class=\"btn btn-primary btn-lg menu\">전체 상품</a>");
		out.write("<a href=MainServlet?mode=2 class=\"btn btn-danger btn-lg menu\">힛딜</a>");
		out.write("<a href=MainServlet?mode=3 class=\"btn btn-info btn-lg menu\">베스트 상품</a>");
		out.write("<a href=MainServlet?mode=4 class=\"btn btn-success btn-lg menu\">신상품</a>");
		out.write("<a href=MainServlet?mode=5 class=\"btn btn-warning btn-lg menu\">상품검색</a>");
		out.write("<span style=\"margin-left:100px\">");
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		out.write(name==null?"":name+"님 로그인중입니다");
		out.write("</span>");
		out.write("</div>");
		out.write("</div>");
		out.write("</body>");
		out.write("</html>");
		
		
	}

}