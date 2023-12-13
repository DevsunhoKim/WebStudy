package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public class InsertModel {
	public String execute(HttpServletRequest request)
	{
		request.setAttribute("msg", "게시판 추가");
		return "insert.jsp"; //request를 받아서 출력하는 위치
	}
}
