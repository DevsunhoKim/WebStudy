package com.sist.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.model.*;


@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  사용자 요청시 마다 호출되는 메소드
		 *  => doGet() / doPost()
		 *  => service() => doGet()/doPost()를 통합
		 *  
		 */
		// ==> 모든 요청이 Controller를 찾는다
		// Controller?cmd=list
		String cmd=request.getParameter("cmd");
		String jsp="";
		
		if(cmd.equals("list"))
		{
			ListModel model=new ListModel();
			jsp=model.execute(request);
		}
		else if(cmd.equals("insert"))
		{
			InsertModel model=new InsertModel();
			jsp=model.execute(request);
		}
		else if(cmd.equals("update"))
		{
			UpdateModel model=new UpdateModel();
			jsp=model.execute(request);
		}
		else if(cmd.equals("delete"))
		{
			DeleteModel model=new DeleteModel();
			jsp=model.execute(request);
		}
		
		// request를 해당 JSP로 전송
		RequestDispatcher rd=
				request.getRequestDispatcher("view/"+jsp);
		
		rd.forward(request, response);
	}

}
