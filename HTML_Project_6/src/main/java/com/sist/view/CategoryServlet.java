package com.sist.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.sist.dao.*;

 /*
  * /CategoryServlet
  * 1) 톰캣에 의해 메모리 할당 => new CategoryServlet()
  * 2) init() : 초기화 => 생성자 대신
  * 3) service() : Thread => 사용자 요청시 마다 호출되는 메소드
  *    ========
  *     => GET / POST => 동시처리
  *     -> ===   ====
  *                | doPost => 데이터 전송 (처리요청)
  *        | doGet => default (화면 UI)
  * 4) destroy() : 사용자가 사이트 이동 => 메모리 해제
  * ===============================================
  *  => JSP
  *     _jspInt() => _jspService() => _ jspDestroy()
  *                  =============
  *                  | 조건으로 POST/GET
  *  => 메소드 영역이다 ==> Servlet 으로 변경
  */
@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 전송 방법  => 어떤 파일형태로 전송할지 여부
		// 브라우저로 전송 => html/xml/json
		response.setContentType("text/html;charset=UTF-8");
		// 요청한 클라이언트에 HTML을 전송할 준비
		PrintWriter out=response.getWriter();
		//response 안에 클라이언트 
		// HTML을 메모리에 저장하면 => 브라우저에서 읽어간다
		// 웹 서버는 이미 제작이 되어 있다
		// ---- CBD
		// 데이터베이스 읽기
		FoodDAO dao=FoodDAO.newInstance();
		List<CategoryVO> list=dao.categoryListData(0);
		out.write("<html>"); //<html>
		out.write("<head>");
		// 외부 CSS => 파일에 공통으로 적용 => 파일로 만들어서 처리
		out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
		// 내부 CSS => 한 개의 파일에서만 적용
		out.write("<style type=text/css>");
		/*
		 * bootstrap => 모든 내용이 ==> class 속성
		 *  CSS의 기본
		 *   1. * => 전체
		 *   2. 태그명
		 *   3. id => 중복이 없는 태그 (한 개만 변경)
		 *   4. class => 중복이 있는 태그 (여러개를 동시에 변경)
		 */
		out.write(".container{margin-top:50px}");
		out.write(".row{margin:0px auto;width:900px}");
		out.write("</style>");
		out.write("<body>");
		out.write("<div class=container>");
		out.write("<div class=row>");
		out.write("<a href=# class=\"btn btn-sm btn=danger\">믿고 보는 맛집 리스트<a/>&nbsp;");
		out.write("<a href=# class=\"btn btn-sm btn=success\">지역별 맛집 리스트<a/>&nbsp;");
		out.write("<a href=# class=\"btn btn-sm btn=primary\">메뉴별 맛집 리스트<a/>&nbsp;");
		out.write("</div>");
		out.write("<div class=row>");
		for(CategoryVO vo:list)
		{
			out.write(" <div class=\"row\">");
			out.write("<div class=\"col-md-4\">");
			out.write("<div class=\"thumbnail\">");
			out.write("<a href=\"/w3images/lights.jpg\">");
			out.write("<img src=\"/w3images/lights.jpg\" alt=\"Lights\" style=\"width:100%\">");
			out.write(" <div class=\"caption\">");
			out.write("</div>");
			out.write("</div>");
			out.write("</div>");
			out.write("</div>");
		}
		
		out.write("</div>");
		out.write("</div>");
		out.write("</body>");
		out.write("</head>");
		out.write("</html");
		
	}

}
