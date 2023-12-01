package com.sist.view;
import com.sist.dao.*;
import java.util.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.FoodDAO;

// Servlet => Server + let 
// let 가벼운 프로그램 => Applet / Midlet => 저장되는 메모리를 최소화
/*
 * 서블릿 => 장점은 보안이 좋다 .java => .class
 *        단점 : HTML 작성이 복잡하다 (문자열 ㅊ리)
 *                => 수정시마다 컴파일 해야한다
 *        => HTML을 사용하지 않는다
 *        => 자바와 HTML을 연결
 *        -> JSP + Servlet
 * JSP => 사용이 편리 , 보안이 취약 .jsp (그대로)
 * M V C = Controller - servlet
 *  - View JSP
 *  Spring => 처리 => 웹 => Servlet
 *  ==============================
 *  1. 페이징 (블록)
 *  2. Cookie
 *  3. Session
 *  4. 요청 = 응답
 *  
 *  HTML : 정적 (화면 UI)
 *   => 서버로 데이터 전송
 *      GET / POST / PUT / DELETE => RestFul
 *       |     | => id,pwd,데이터가 많은 경우 => <form>
 *       URL?데이터
 *       노출/주로 사용 => 단순 페이지 전송
 *                    페이지 / 번호 /검색 ..
 *      => 전송이 없는 경우 : GET default
 *      
 *     JavaScript 
 *     ==========
 *     ajax({
 *       type:POSE
 *       success:funcion(result)
 *       })
 *      
 *      Vue,React
 *      axios.get...then
 *      axios.post
 *       
 *      =========== CSS
 */
@WebServlet("/FoodListServlet")
public class FoodListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 전송방식 (HTML.XML)
		response.setContentType("text/html;charset=UTF-8");
		// 브라우저에서 읽어갈 메모리 위치를 확보
		PrintWriter out=response.getWriter();
		
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		// 사용자의 요청값을 받는다
		
		// 데이터베이스 연결
		FoodDAO dao=FoodDAO.newInstance();
		List<FoodVO> list=dao.foodListData(curpage);
		int totalpage=dao.foodTotalPage();
		final int BLOCK=10;
		int startpage=((curpage-1)/BLOCK*BLOCK)+1;
		
		int endpage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endpage>totalpage)
			endpage=totalpage;
		
		out.write("<html>");

		out.write("<head>");
		out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
		out.write("<style type=\"text/css\">");
		out.write(".container { margin-top: 50px; }");
		out.write(".row { margin: 0px auto; width: 900px; }");
		out.write("</style>");
		out.write("</head>");

		out.write("<body>");
		out.write("<div class=\"container\">");
		out.write("<div class=\"row\">"); // 맛집 이미지
		for (FoodVO vo : list) {
		    out.write("<div class=\"col-md-4\">");
		    out.write("<div class=\"thumbnail\">");
		    out.write("<a href=FoodDetialServlet?fno"+vo.getFno()+">");
		    out.write("<img src=\"" + vo.getPoster() + "\" alt=\"Lights\" style=\"width:100%\">");
		    out.write("<div class=\"caption\">");
		    out.write("<p>"+vo.getName()+"</p>");
		    out.write("</div>");
		    out.write("</a>");
		    out.write("</div>");
		    out.write("</div>");
		}
		out.write("</div>");

		out.write("<div class=\"row\">"); // 페이지 출력
		out.write("<div class=\"text-center\">");
		out.write("<ul class=\"pagination\">");
		if (startpage > 1) 
		{
		    out.write("<li><a href=\"FoodListServlet?page=" + (startpage - 1) + "\"><</a></li>");
		}

		for (int i = startpage; i <= endpage; i++) 
		{
		    out.write("<li " + (i == curpage ? "class=\"active\"" : "") + "><a href=\"FoodListServlet?page=" + i + "\">" + i + "</a></li>");
		}

		if (endpage < totalpage) 
		{
		    out.write("<li><a href=\"FoodListServlet?page=" + (endpage + 1) + "\">></a></li>");
		}

		out.write("</ul>");
		out.write("</div>");
		out.write("</div>");

		out.write("<div class=\"row\">"); // 최근 방문
		// Add your content for the recent visits here
		out.write("</div>");

		out.write("</div>");
		out.write("</body>");

		out.write("</html>");
	}
}
