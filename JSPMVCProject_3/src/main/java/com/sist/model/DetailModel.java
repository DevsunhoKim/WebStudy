package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import com.sist.dao.*;
import com.sist.vo.*;
public class DetailModel implements Model {

	@Override
	public String handleRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String no=request.getParameter("no");
		//DAO
		BoardDAO dao=BoardDAO.newInstance();
		BoardVO vo=dao.boardDetail(Integer.parseInt(no));
		request.setAttribute("vo", vo);
		//request
		return "board/detail.jsp";
	}

}