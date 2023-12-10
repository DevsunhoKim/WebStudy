package com.sist.model;
import java.util.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.sist.dao.*;
public class FoodModel {
	public void foodDetailData(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {}
		String fd=request.getParameter("fd");
		String ss=request.getParameter("ss");
		String fno=request.getParameter("fno");
		
		FoodDAO dao=FoodDAO.newInstance();
		FoodVO vo=dao.foodDetailData(Integer.parseInt(fno));
		
		request.setAttribute("vo", vo);
		request.setAttribute("fd", fd);
		request.setAttribute("ss", ss);
	}
}
