package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import com.sist.dao.*;
import com.sist.vo.*;
public class DetailModel implements Model {

	@Override
	public String handleRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String gno=request.getParameter("no");
		//DAO
		GoodsDAO dao=GoodsDAO.newInstance();
		GoodsVO vo=dao.GoodsDetail(Integer.parseInt(gno));
		request.setAttribute("vo", vo);
		//request
		return "board/detail.jsp";
	}

}