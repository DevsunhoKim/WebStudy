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

@WebServlet("/GoodsBestServlet")
public class GoodsBestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		// 사용자가 요청한 값을 받는다
		// JSP => page(this)
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		// DAO 연동
		GoodsDAO dao=GoodsDAO.newInstance();
		List<GoodsVO> list=dao.goodsListData(curpage, 3);
		int totalpage=dao.goodsTotalPage(3);
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalpage)
			endPage=totalpage;
		out.write("<html>");
		out.write("<body>");
		out.write("<div class=row>");
		out.write("<h1 class=text-center>베스트 상품</h1>");
		for(GoodsVO vo:list) {
			String s=vo.getName();
			if(s.length()>34) {
				s=s.substring(0,34)+"...";
				vo.setName(s);
			}
			else
				vo.setName(s);
		}
		for(GoodsVO vo:list) {
			out.write("<div class=\"col-md-3\">");
			out.write("<div class=\"thumbnail\">");
			out.write("<a href=#>");
			out.write("<img src="+vo.getPoster()+" alt=\"Lights\" style=\"width:100%\">");
			out.write("<div class=\"caption\">");
			out.write("<p>"+vo.getName()+"</p>");
			out.write("</div>");
			out.write("</a>");
			out.write("</div>");
			out.write("</div>");
		}
		out.write("</div>");
		out.write("<div class=row>"); // 페이지
		out.write("<div class=text-center>");
		out.write("<ul class=\"pagination\">");
		if(startPage>1) {
			out.write("<li><a href=MainServlet?page="+(startPage-1)+"&mode=3>&lt;</a></li>");
			// 11page ==> 이전 ==> 10
		}
		for(int i=startPage;i<=endPage;i++) {
			out.write("<li "+(i==curpage?"class=active":"")+"><a href=MainServlet?page="+i+"&mode=3>"+i+"</a></li>");
			// <li class=active><a>
		}
		if(endPage<totalpage) {
			out.write("<li><a href=MainServlet?page="+(endPage+1)+"&mode=3>&gt;</a></li>");
		}
		out.write("</ul>");
		out.write("</div>");
		out.write("</div>");
		out.write("</body>");
		out.write("</html>");
	}
	

}