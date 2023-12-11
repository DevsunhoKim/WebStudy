package com.sist.dao;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
public class EmpModel {
	public void empListData(HttpServletRequest request)
	{
		EmpDAO dao=new EmpDAO();
		List<EmpVO> list=dao.empListData();
		request.setAttribute("list", list);
	}
}
