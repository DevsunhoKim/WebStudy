package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.change.JspChange;

public class MainModel2 {
   public void mainJspChange(HttpServletRequest request)
   {
	   String type=request.getParameter("type");
	   if(type==null)
		   type="1";
	   String jsp=JspChange.change(Integer.parseInt(type));
	   request.setAttribute("tour_main_jsp", jsp);
   }
}