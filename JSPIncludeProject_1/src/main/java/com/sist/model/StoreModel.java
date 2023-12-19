package com.sist.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.*;
import com.sist.dao.GoodsDAO;
/*
 *   DAO => 오라클 연결 
 *   Model => 요청을 받아서 => 처리 => 결과값을 request에 모아두는 것
 *   Controller => Model에서 모아둔 request를 JSP전송 
 */
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;
public class StoreModel {
  @RequestMapping("store/all.do")
  public String store_all(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  // all.jsp => 데이터베이스 결과값을 전송 (request)
	  String page=request.getParameter("page");
	  if(page==null)
		  page="1";
	  int curpage=Integer.parseInt(page);
	  // DB연동 
	  GoodsDAO dao=GoodsDAO.newInstance();
	  List<GoodsVO> list=dao.goodsAllListData(curpage);
	  int totalpage=dao.goodsAllTotalpage();
	  
	  request.setAttribute("curpage", curpage);
	  request.setAttribute("totalpage", totalpage);
	  request.setAttribute("list", list);
	  // => 쿠키 데이터를 전송 
	  
	  // 요청 => .do
	  // include => .jsp
	  request.setAttribute("store_jsp", "../store/all.jsp");
	  request.setAttribute("main_jsp", "../store/store_main.jsp");
	  return "../main/main.jsp";
  }
  // 
  @RequestMapping("store/best.do")
  public String store_best(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  
	  request.setAttribute("store_jsp", "../store/best.jsp");
	  request.setAttribute("main_jsp", "../store/store_main.jsp");
	  return "../main/main.jsp";
  }
  
  @RequestMapping("store/sp.do")
  public String store_sp(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  
	  request.setAttribute("store_jsp", "../store/sp.jsp");
	  request.setAttribute("main_jsp", "../store/store_main.jsp");
	  return "../main/main.jsp";
  }
  
  @RequestMapping("store/new.do")
  public String store_new(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  
	  request.setAttribute("store_jsp", "../store/new.jsp");
	  request.setAttribute("main_jsp", "../store/store_main.jsp");
	  return "../main/main.jsp";
  }
  @RequestMapping("store/detail_before.do")
  public String store_detail_before(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  String no=request.getParameter("no");
	  Cookie cookie=new Cookie("goods_"+no, no);
	  cookie.setPath("/");
	  cookie.setMaxAge(60*60*24);
	  // 브라우저로 전송 
	  response.addCookie(cookie);
	  return "redirect:../store/detail.do?no="+no;
  }
  @RequestMapping("store/detail.do")
  public String store_detail(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  // 사용자 => no
	  String no=request.getParameter("no");
	  GoodsDAO dao=GoodsDAO.newInstance();
	  GoodsVO vo=dao.goodsAllDetailData(Integer.parseInt(no));
	  String price=vo.getGoods_price();
	  // 30,000원 => 30000
	  price=price.replaceAll("[^0-9]", "");
	  vo.setPrice(price);
	  request.setAttribute("vo", vo);
	  // [^가-힣] [^A-Za-z]
	  // ${store_jsp} => request.getAttribute("store_jsp")
	  request.setAttribute("store_jsp", "../store/detail.jsp");
	  request.setAttribute("main_jsp", "../store/store_main.jsp");
	  return "../main/main.jsp";
  }
}