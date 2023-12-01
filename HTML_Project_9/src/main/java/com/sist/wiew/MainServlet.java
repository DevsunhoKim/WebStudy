package com.sist.wiew;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		// 사용자 요청값 
		String mode=request.getParameter("mode");
		if(mode==null)
			mode="1";
		String name="";
		switch(mode)
		{
		case "1":
			name="GoodsAllServlet";
			break;
		case "2":
			name="GoodsSpecialServlet";
			break;
		case "3":
			name="GoodsBestServlet";
			break;
		case "4":
			name="GoodsNewServlet";
			break;
		case "5":
			name="GoodsDetailServlet";
			break;
		}
		out.write("<html>");
		out.write("<head>");
		out.write("</head>");
		out.write("<body>");
		RequestDispatcher rd=request.getRequestDispatcher("MenuServlet");
		rd.include(request, response);
		// <jsp:include page="">
		out.write("<div style=\"height:30px\"></div>");
		out.write("<div class=container>");
		rd=request.getRequestDispatcher(name);
		rd.include(request, response);// 모든 서블릿이 request를 공유 
		out.write("</div>");
		out.write("</body>");
		out.write("</html>");
	}

}