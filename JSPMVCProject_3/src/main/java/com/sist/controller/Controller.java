package com.sist.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.sist.model.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;

@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map clsMap=new HashMap();
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		String path="C:\\webDev\\webStudy\\JSPMVCProject_3\\src\\main\\webapp\\WEB-INF\\application.xml";
		try {
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			// HTML, XMl, WML, HDM... 파싱가능
			DocumentBuilder db=dbf.newDocumentBuilder();
			// 파서기
			Document doc=db.parse(new File(path));
			// 1. 루트 (beans) => 테이블명
			Element beans=doc.getDocumentElement();
			//System.out.println(beans.getTagName());
			// 2. 같은 태그를 묶어서 제어
			NodeList list=beans.getElementsByTagName("bean");
			for(int i=0;i<list.getLength();i++) {
				Element bean=(Element)list.item(i);
				String id=bean.getAttribute("id");
				String cls=bean.getAttribute("class");
				//System.out.println(id+"=>"+cls);
				// 메모리 할당 => Map에 저장
				Class clsName=Class.forName(cls);
				// 이름만 주면 메모리할당 가능
				Object obj=clsName.getDeclaredConstructor().newInstance();
				System.out.println(obj);
				clsMap.put(id, obj);
			}
		}catch(Exception ex) {}
	}
	// ==> 메뉴 제작
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 주문받기 시작 
		// list.do => list만 잘라오기
		String cmd=request.getRequestURI();
		cmd=cmd.substring(request.getContextPath().length()+1,cmd.lastIndexOf("."));
		Model model=(Model)clsMap.get(cmd);
		String jsp=model.handleRequest(request);
		if(jsp.startsWith("redirect:")) {
			jsp=jsp.substring(jsp.indexOf(":")+1);
			response.sendRedirect(jsp);
		}	
		else {
			RequestDispatcher rd=request.getRequestDispatcher(jsp);
			rd.forward(request, response);
		}
		// sendRedirect 인지, forward인지 구분
	}

}