package com.sist.view;
import java.util.*;
import com.sist.dao.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ExhibitionListServlet")
public class ExhibitionListServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // 사용자 브라우저를 통해서 요청시에 처리해서 브라우저로 HTML을 전송하는 메소드
      // 톰캣에 의해 자동 호출
      // 메소드 영역 => JSP다 => service
      // JSP => 실행 => class변경 => 컴파일해서 실행
      // 전송타입 => html,xml
      response.setContentType("text/html;charset=UTF-8");
      //                       text/xml , text/plain
      // HTML전송
      PrintWriter out=response.getWriter();
      //              --------------------- 접속한 클라이언트
      ExDAO dao=ExDAO.newInstance();
      List<ExVO> list=dao.exListData(1);
      out.println("<html>");
      out.println("<body>");
      out.println("<center>");
      out.println("<h1>전시회</h1>");
      out.println("<table border=1 width=800>");
      out.println("<tr>");
      out.println("<th width=10%>번호</th>");
      out.println("<th width=15%></th>");
      out.println("<th width=20%>행사명</th>");
      out.println("<th width=15%>주소</th>");
      out.println("<th width=40%>주관</th>");
      out.println("</tr>");
      for(ExVO vo:list)
      {
         out.println("<tr>");
         out.println("<td width=10%>"+vo.getEno()+"</td>");
         out.println("<td width=20%><img src="+vo.getPoster()+" width=60 height=100></td>");
         out.println("<td width=20%>"+vo.getEname()+"</td>");
         out.println("<td width=15%>"+vo.getLoc()+"</td>");
         out.println("<td width=40%>"+vo.getHost()+"</td>");
         out.println("</tr>");
      }
      out.println("</table>");
      out.println("</center>");
      out.println("</body>");
      out.println("</html>");
      
   }

}