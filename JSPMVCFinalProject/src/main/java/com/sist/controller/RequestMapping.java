package com.sist.controller;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;
/*
 * 구분자
 * => 찾기 => 인덱스
 * => if문과 동일
 * => 어노테이션 => 위에 존재
 * 
 *   @          @
 *   class A    class B
 *   
 *   class A
 *   {
 *     @RequestMapping("a.do") => 요청값이 a 라면 aaa() 호출
 *     aaa()
 *     @RequestMapping("b")
 *     bbb()
 *     @RequestMapping("c")
 *     ccc()
 *   }
 *   
 */
@Retention(RUNTIME)
// 저장기간
/*
 * RUNTIME
 * ======= 프로그램 종료시까지 유지
 * SOURCE
 * CLASS
 * ======= 컴파일 후에 자동으로 메모리 해제
 */
@Target(METHOD)
// 찾을 대상 => 구분자
/*
 * TYPE ==> class
 * METHOD ==> method
 * FIELD ==> 멤버변수
 * PARAMETER ==> 매개변수
 * CONSTRUCTOR ==> 생성자
 * 
 * @ => TYPE
 * class A
 * {
 *    @ => FIELD
 *    B b=new B();
 *    @ => METHOD
 *    public void display(){}
 *    
 *    @=> CONSTRUCTOR
 *    A()
 *    
 *    public void void aaa(@ => PARAMETER B b)
 *    
 *    @RequestMapping("경로")
 */

public @interface RequestMapping {
	public String value();
}
