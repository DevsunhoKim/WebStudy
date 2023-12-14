package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
/*
 *  1. DispatcherServlet
 *   => WEB-INF => application에 있는 클래스 명을 읽어온다
 *   => 대기
 *   => init은 서버 구동시 한 번만 수행한다
 *  2. 사용자 접속 : service() => 사용자 요청시마다 service 메소드 호출
 *     => 사용자가 URL을 전송한다
 *      => main/main.do 
 *      => 전체 XML에 등록된 Model을 읽어서
 *        => @RequestMapping을 찾아서 메소드 호출
 */
public class MainModel {
	@RequestMapping("main/main.do")
	public String main_main(HttpServletRequest request,HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../main/home.jsp");
		return "../main/main.jsp";
	}
}
