package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class FoodModel {
	@RequestMapping("food/list.do")
	public String food_list(HttpServletRequest request,HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../food/list.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("food/find.do")
	public String food_find(HttpServletRequest request,HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../food/find.jsp");
		return "../main/main.jsp";
	}
}
