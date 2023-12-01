package com.sist.wiew;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.ReplyDAO;

@WebServlet("/ReplyDeleteServlet")
public class ReplyDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// rno,type,no
		String rno=request.getParameter("rno");
		String type=request.getParameter("type");
		String no=request.getParameter("no");
		// DAO연동 
		ReplyDAO dao=ReplyDAO.newInstance();
		dao.replyDelete(Integer.parseInt(rno));
		// 화면이동 
		response.sendRedirect("MainServlet?mode=5&no="+no+"&type="+type);
	}

}