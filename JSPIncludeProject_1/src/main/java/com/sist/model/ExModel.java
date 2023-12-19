package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.*;
import com.sist.dao.ExDAO;
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
	
	@RequestMapping("ex/detail.do")
	public String ex_detail(HttpServletRequest request,HttpServletResponse response,int eno)
	{
		// DB연동
				//1. 요청값 받기
				String exxno=request.getParameter("eno");
				
				int exno=Integer.parseInt("eno");
				//2. DB 연동
				ExDAO dao=new ExDAO();
				List<ExVO> list=dao.exDetailData(eno);
				
				
				request.setAttribute("exno", exno);
				request.setAttribute("eno", eno);
				request.setAttribute("list", list);
				//3. 결과값 모아서 request에 저장
		
		
		request.setAttribute("main_jsp", "../ex/detail.jsp");
		return "../ex/list.jsp";
	}
}
