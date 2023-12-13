package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.dao.GoodsDAO;
import com.sist.vo.GoodsVO;

public class InsertOkModel implements Model {

	@Override
	public String handleRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try
		{
	    	request.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {}
		String gname=request.getParameter("gname");
		String poster=request.getParameter("poster");
		String origin=request.getParameter("origin");
		String manufacturer=request.getParameter("manufacturer");
		
		GoodsVO vo=new GoodsVO();
		vo.setGname(gname);
		vo.setPoster(poster);
		vo.setOrigin(origin);
		vo.setManufacturer(manufacturer);
		
		GoodsDAO dao=GoodsDAO.newInstance();
		
		
		
		return "redirect:list.do";
	}

}