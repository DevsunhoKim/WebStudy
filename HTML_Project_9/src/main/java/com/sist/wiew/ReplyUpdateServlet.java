package com.sist.wiew;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.dao.*;
@WebServlet("/ReplyUpdateServlet")
/*
 * https://www.google.com/search?q=%EC%9E%90%EB%B0%94&oq=%EC%9E%90%EB%B0%94&gs_lcrp=EgZjaHJvbWUyDwgAEEUYORiDARixAxiABDINCAEQABiDARixAxiABDINCAIQABiDARixAxiABDINCAMQABiDARixAxiABDINCAQQABiDARixAxiABDINCAUQABiDARixAxiABDIKCAYQABixAxiABDIHCAcQABiABDIHCAgQABiABDIHCAkQABiABNIBCTE4NzdqMGoxNagCALACAA&sourceid=chrome&ie=UTF-8
 * https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=%EC%9E%90%EB%B0%94
 */
public class ReplyUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// rno , gno , typeno, msg
		// 한글 => 디코딩 
		try
		{
			// 전송 => 자바 : %EC%9E%90%EB%B0%94 (인코딩)
			// 수신 => %EC%9E%90%EB%B0%94 : 자바 (디코딩)
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex){}
		String rno=request.getParameter("rno");
		String gno=request.getParameter("gno");
		String tno=request.getParameter("typeno");
		String msg=request.getParameter("msg");
		
		// DAO => 수정 
		ReplyDAO dao=ReplyDAO.newInstance();
		dao.replyUpdate(Integer.parseInt(rno), msg);
		// 화면 => Detail로 이동 
		response.sendRedirect("MainServlet?mode=5&no="+gno+"&type="+tno);
		
	}

}






