package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public class UpdateModel {
	public String execute(HttpServletRequest request)
	{
		request.setAttribute("msg", "게시판 수정");
		return "update.jsp"; //request를 받아서 출력하는 위치
	}
}
