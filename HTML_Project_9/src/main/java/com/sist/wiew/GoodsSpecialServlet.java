package com.sist.wiew;

import java.io.*;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.GoodsDAO;
import com.sist.dao.GoodsVO;

@WebServlet("/GoodsSpecialServlet")
public class GoodsSpecialServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		// 사용자 요청한 값을 받는다 
		// JSP => page (this)
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		// DAO연동 
		GoodsDAO dao=GoodsDAO.newInstance();
		List<GoodsVO> list=dao.goodsListData(curpage, 2);
		int totalpage=dao.goodsTotalPage(2);
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		// totalpage=33 ==> 40(33)
		if(endPage>totalpage)
			endPage=totalpage;
		/*
		 *    1 2 ....   10   31 32 33 ... 40
		 *    |           |
		 *   srartPage   endPage
		 *   =========
		 *   curpage => 1~10 ==> startPage=1
		 */
		out.write("<html>");
		out.write("<body>");
		out.write("<div class=row>");
		out.write("<h1 class=text-center>특가상품</h1>");
		for(GoodsVO vo:list)
		{
			String s=vo.getName();
			if(s.length()>34)
			{
				s=s.substring(0,34)+"...";
				vo.setName(s);
			}
			else
			{
				vo.setName(s);
			}
		}
		for(GoodsVO vo:list)
		{
			   out.write("<div class=\"col-md-3\">");
			   out.write("<div class=\"thumbnail\">");
			   out.write("<a href=MainServlet?mode=5&no="+vo.getNo()+"&type=2>");
			   out.write("<img src="+vo.getPoster()+" alt=\"Lights\" style=\"width:100%\">");
			   out.write("<div class=\"caption\">");
			   out.write("<p>"+vo.getName()+"</p>");
			   out.write("</div>");
			   out.write("</a>");
			   out.write("</div>");
			   out.write("</div>");
		}
		out.write("</div>");
		out.write("</body>");
		out.write("</html>");
	}

}