package com.sist.view;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.dao.*;

/**
 * Servlet implementation class FoodListServlet
 */
@WebServlet("/FoodListServlet")
public class FoodListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/css;charset=UTF-8");
		// HTML을 모아서 전송
		PrintWriter out=response.getWriter();
		// CategoryServlet에서 전송된 cno를 받는다
		String cno=request.getParameter("cno");
		// DB 연동
		FoodDAO dao=FoodDAO.newInstance();
		CategoryVO cvo=dao.categoryInfoData(Integer.parseInt(cno));
		
	}

}
