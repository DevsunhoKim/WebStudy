package com.sist.model;
// 요청받아서 => 요청 처리후에 결과값을 request/session에 담아서 JSP로 보내주는 역할
/*
 *      request
 *   JSP => Model => DAO
 *       <=       <=
 *      request=> 결과값을 추가해서 전송 
 *                 setAttribute()
 *   ===============================> Call By Reference
 */
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.sist.vo.*;
import com.sist.dao.*;
public class TourModel {
   public void tourListData(HttpServletRequest request)
   {
	   // type , page => <% %>
	   String type=request.getParameter("type");
	   if(type==null)
		   type="1";
	   String page=request.getParameter("page");
	   if(page==null)
		   page="1";
	   
	   // 페이지 지정 
	   int curpage=Integer.parseInt(page);
	   // 페이지에 해당되는 목록 
	   TourDAO dao=new TourDAO();
	   List<TourVO> list=
			 dao.tourListData(curpage, Integer.parseInt(type));
	   int totalpage=dao.tourTotalPage(Integer.parseInt(type));
	   
	   final int BLOCK=10;
	   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
	   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	   
	   if(endPage>totalpage)
		   endPage=totalpage;
	   
	   // JSP에서 출력할 데이터를 전송 
	   request.setAttribute("list", list);
	   request.setAttribute("curpage", curpage);
	   request.setAttribute("totalpage", totalpage);
	   request.setAttribute("startPage", startPage);
	   request.setAttribute("endPage", endPage);
	   request.setAttribute("type", type);
	   
   }
   
   /*
   public void TourDetailData(HttpServletRequest request)
   {
	   // 요청값을 받는다 
	   String table=request.getParameter("table");//테이블 번호
	   String no=request.getParameter("no");// 상품번호
	   String type=request.getParameter("type");// 화면 변경
	   // 요청에 해당되는 데이터베이스 값 읽기 
	   TourDAO dao=new TourDAO();
	   TourVO vo=dao.tourDetailData(Integer.parseInt(table), 
			   Integer.parseInt(no));
	   // request에 담아 준다 
	   request.setAttribute("type", table);
	   request.setAttribute("vo", vo);
	   // ======= detail.jsp
   }
   
   */
}






