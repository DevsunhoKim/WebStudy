package com.sist.model;

import javax.servlet.http.HttpServletRequest;
/*
 *  MVC
 *   
 *   Model => Java => 요청 처리
 *    JSP에서 <% %>
 *   
 *   View => JSP => 요청 처리 결과를 받아서 화면에 출력
 *           ------------------------------
 *           자바를 사용하지 않는다 => ${} , JSTL
 *           
 *   Controller => Servlet 
 *   ========== Dispatcher : 배달부 => Framework : 이미 제작됨
 *   => DispatcherServlet
 *   => FilterDispatcher
 *   
 *    Contorller => 서빙
 *      1) 주문을 받는다 => JSP로 부터
 *      2) 주방을 거친다 => Model을 찾는다
 *      3) 음식 배달 => request를 한 번에 전동
 *              요청(request)
 *              ip => 주문                request
 *    사용자(JSP) ============ Controller ========== 주방 (패키지)
 *                                                종류별 요리
 *                                                =======
 *                                                Model
 *                                                 => 처리
 *                     
 *                           Controller <========= 결과물을 주문서와 동시에 보내줌
 *                                |                 =====================
 *                                |                 request.setAttribute() 
 *                                |
 *                            request를 JSP로 전송
 *                            =================
 *                            출력 ==> 브라우저에서 읽어 간다          
 *     <a>,<form> 
 *    
 *    
 *    
 *    
 *        JSP 에서 요청을 받아서 처리에 해당되는 Model을 찾아주는 역할 수행
 *        => Model을 찾아서 메소드를 호출 => request가 JSP로 연결
 *    
 *        
 */
// 요청을 받아서 처리한 결과값을 전송
public class ListModel {
	public String execute(HttpServletRequest request)
	{
		request.setAttribute("msg", "게시판 목록");
		return "list.jsp"; //request를 받아서 출력하는 위치
	}
}
