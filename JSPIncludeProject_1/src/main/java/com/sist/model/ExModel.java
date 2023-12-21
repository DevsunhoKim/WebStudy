package com.sist.model;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.*;
import com.sist.dao.*;
import com.sist.vo.*;

public class ExModel {
	
	@RequestMapping("ex/list.do")
	public String ex_list(HttpServletRequest request,HttpServletResponse response)
	{
		// DB연동
				//1. 요청값 받기
				String page=request.getParameter("page");
				if(page==null)
					page="1";
				int curpage=Integer.parseInt(page);
				//2. DB 연동
				ExDAO dao=new ExDAO();
				List<ExVO> list=dao.exListData(curpage);
				int totalpage=dao.exTotalPage();
				
				request.setAttribute("curpage", curpage);
				request.setAttribute("totalpage", totalpage);
				request.setAttribute("list", list);
				//3. 결과값 모아서 request에 저장
		
		
		request.setAttribute("main_jsp", "../ex/list.jsp");
		return "../main/main.jsp";
	}
	
	 @RequestMapping("busan/ex_detail.do")
	  public String ex_detail(HttpServletRequest request,
			  HttpServletResponse response)
	  {
		  // 사용자 => no
		  String eno=request.getParameter("eno");
		  ExDAO dao=new ExDAO();
		  ExVO vo=dao.exDetailData(Integer.parseInt(eno));
		  
		  // 30,000원 => 30000
		  
		  
		  request.setAttribute("vo", vo);
		  // [^가-힣] [^A-Za-z]
		  // ${store_jsp} => request.getAttribute("store_jsp")
		  request.setAttribute("main_jsp", "../busan/ex_detail.jsp");
		  return "../main/main.jsp";
	  }
	 
}
